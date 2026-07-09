import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:echo_vault_app/features/sync/services/sync_repository.dart';
import 'package:echo_vault_app/models/generated/echo_vault/sync/v1/sync_service.pb.dart';

enum SyncStatus { idle, syncing, completed, error }

class SyncState {
  final SyncStatus status;
  final int pendingChanges;
  final int syncedChanges;
  final String? error;
  final DateTime? lastSyncTime;

  const SyncState({
    this.status = SyncStatus.idle,
    this.pendingChanges = 0,
    this.syncedChanges = 0,
    this.error,
    this.lastSyncTime,
  });
}

final syncRepositoryProvider = Provider<SyncRepository>((ref) {
  throw UnimplementedError('SyncRepository must be overridden');
});

final syncProvider = StateNotifierProvider<SyncNotifier, SyncState>((ref) {
  return SyncNotifier(ref.read(syncRepositoryProvider));
});

class SyncNotifier extends StateNotifier<SyncState> {
  final SyncRepository _repo;
  SyncNotifier(this._repo) : super(const SyncState());

  /// 从 SharedPreferences 加载上次同步时间
  Future<void> loadLastSyncTime() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final ms = prefs.getInt('sync_last_time');
      if (ms != null) {
        state = SyncState(
          status: state.status,
          pendingChanges: state.pendingChanges,
          syncedChanges: state.syncedChanges,
          error: state.error,
          lastSyncTime: DateTime.fromMillisecondsSinceEpoch(ms),
        );
      }
    } catch (_) {
      // 忽略加载失败
    }
  }

  /// 执行同步
  Future<void> startSync({
    List<SyncChange> changes = const [],
  }) async {
    state = SyncState(
      status: SyncStatus.syncing,
      pendingChanges: changes.length,
      lastSyncTime: state.lastSyncTime,
    );
    try {
      await _repo.pushChanges(
        deviceId: 'local',
        changes: changes,
      );
      await _updateLastSyncTime();
      state = SyncState(
        status: SyncStatus.completed,
        syncedChanges: changes.length,
        lastSyncTime: state.lastSyncTime,
      );
    } catch (e) {
      state = SyncState(
        status: SyncStatus.error,
        error: e.toString(),
        lastSyncTime: state.lastSyncTime,
      );
    }
  }

  /// 设置待同步变更数
  void setPendingChanges(int count) {
    state = SyncState(
      status: state.status,
      pendingChanges: count,
      syncedChanges: state.syncedChanges,
      error: state.error,
      lastSyncTime: state.lastSyncTime,
    );
  }

  /// 重置到 idle
  void reset() {
    state = const SyncState(lastSyncTime: null);
  }

  Future<void> _updateLastSyncTime() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final now = DateTime.now();
      await prefs.setInt('sync_last_time', now.millisecondsSinceEpoch);
      state = SyncState(
        status: state.status,
        pendingChanges: state.pendingChanges,
        syncedChanges: state.syncedChanges,
        error: state.error,
        lastSyncTime: now,
      );
    } catch (_) {
      // 忽略持久化失败
    }
  }
}
