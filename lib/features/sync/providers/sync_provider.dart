// lib/features/sync/providers/sync_provider.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';

enum SyncStatus { idle, syncing, error, completed }

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

final syncProvider = StateNotifierProvider<SyncNotifier, SyncState>((ref) {
  return SyncNotifier();
});

class SyncNotifier extends StateNotifier<SyncState> {
  SyncNotifier() : super(const SyncState());

  void setIdle() => state = const SyncState();
  
  void setSyncing({int pending = 0, int synced = 0}) {
    state = SyncState(
      status: SyncStatus.syncing,
      pendingChanges: pending,
      syncedChanges: synced,
      lastSyncTime: state.lastSyncTime,
    );
  }
  
  void setCompleted() {
    state = SyncState(
      status: SyncStatus.completed,
      lastSyncTime: DateTime.now(),
    );
  }
  
  void setError(String message) {
    state = SyncState(
      status: SyncStatus.error,
      error: message,
      lastSyncTime: state.lastSyncTime,
    );
  }
  
  void setPendingChanges(int count) {
    state = SyncState(
      status: state.status,
      pendingChanges: count,
      lastSyncTime: state.lastSyncTime,
    );
  }
  
  // 从本地存储恢复同步状态
  void restoreFromStorage({DateTime? lastSyncTime, int pendingChanges = 0}) {
    state = SyncState(
      status: lastSyncTime != null ? SyncStatus.completed : SyncStatus.idle,
      pendingChanges: pendingChanges,
      lastSyncTime: lastSyncTime,
    );
  }
}
