import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:fixnum/fixnum.dart';
import 'package:echo_vault_app/features/sync/providers/sync_provider.dart';
import 'package:echo_vault_app/features/sync/services/sync_repository.dart';
import 'package:echo_vault_app/models/generated/echo_vault/sync/v1/sync_service.pb.dart';

class MockSyncRepository implements SyncRepository {
  bool shouldThrow = false;
  int serverVersion = 42;

  @override
  Future<PushChangesResponse> pushChanges({
    required String deviceId,
    Int64? lastPullVersion,
    List<SyncChange> changes = const [],
  }) async {
    if (shouldThrow) throw Exception('sync error');
    return PushChangesResponse(
      serverVersion: Int64(serverVersion),
      acceptedCount: changes.length,
    );
  }

  @override
  Future<void> ackChanges({
    required String deviceId,
    required Int64 ackedVersion,
  }) async {
    if (shouldThrow) throw Exception('sync error');
  }
}

void main() {
  late MockSyncRepository mockRepo;
  late ProviderContainer container;

  setUp(() {
    mockRepo = MockSyncRepository();
    SharedPreferences.setMockInitialValues({});
  });

  tearDown(() => container.dispose());

  test('initial state is idle with zero changes', () async {
    container = ProviderContainer(
      overrides: [
        syncRepositoryProvider.overrideWithValue(mockRepo),
      ],
    );
    await container.read(syncProvider.notifier).loadLastSyncTime();
    final state = container.read(syncProvider);
    expect(state.status, SyncStatus.idle);
    expect(state.pendingChanges, 0);
    expect(state.syncedChanges, 0);
  });

  test('startSync sets status to syncing then completed', () async {
    container = ProviderContainer(
      overrides: [
        syncRepositoryProvider.overrideWithValue(mockRepo),
      ],
    );
    await container.read(syncProvider.notifier).loadLastSyncTime();
    await container.read(syncProvider.notifier).startSync();
    final state = container.read(syncProvider);
    expect(state.status, SyncStatus.completed);
    expect(state.syncedChanges, 0);
    expect(state.lastSyncTime, isNotNull);
  });

  test('startSync sets error status on failure', () async {
    mockRepo.shouldThrow = true;
    container = ProviderContainer(
      overrides: [
        syncRepositoryProvider.overrideWithValue(mockRepo),
      ],
    );
    await container.read(syncProvider.notifier).loadLastSyncTime();
    await container.read(syncProvider.notifier).startSync();
    final state = container.read(syncProvider);
    expect(state.status, SyncStatus.error);
    expect(state.error, isNotNull);
  });

  test('setPendingChanges updates pending count', () async {
    container = ProviderContainer(
      overrides: [
        syncRepositoryProvider.overrideWithValue(mockRepo),
      ],
    );
    await container.read(syncProvider.notifier).loadLastSyncTime();
    container.read(syncProvider.notifier).setPendingChanges(5);
    expect(container.read(syncProvider).pendingChanges, 5);
  });

  test('reset restores to idle', () async {
    container = ProviderContainer(
      overrides: [
        syncRepositoryProvider.overrideWithValue(mockRepo),
      ],
    );
    await container.read(syncProvider.notifier).loadLastSyncTime();
    await container.read(syncProvider.notifier).startSync();
    expect(container.read(syncProvider).status, SyncStatus.completed);

    container.read(syncProvider.notifier).reset();
    expect(container.read(syncProvider).status, SyncStatus.idle);
    expect(container.read(syncProvider).syncedChanges, 0);
  });

  test('lastSyncTime persists across provider recreation', () async {
    SharedPreferences.setMockInitialValues({'sync_last_time': 1720512000000});
    container = ProviderContainer(
      overrides: [
        syncRepositoryProvider.overrideWithValue(mockRepo),
      ],
    );
    await container.read(syncProvider.notifier).loadLastSyncTime();
    final state = container.read(syncProvider);
    expect(state.lastSyncTime, isNotNull);
    expect(state.lastSyncTime!.millisecondsSinceEpoch, 1720512000000);
  });
}
