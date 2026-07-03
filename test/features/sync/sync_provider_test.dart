import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:echo_vault_app/features/sync/providers/sync_provider.dart';

void main() {
  group('SyncProvider', () {
    test('初始状态是 idle', () {
      final c = ProviderContainer();
      addTearDown(c.dispose);
      expect(c.read(syncProvider).status, SyncStatus.idle);
      expect(c.read(syncProvider).pendingChanges, 0);
      expect(c.read(syncProvider).syncedChanges, 0);
      expect(c.read(syncProvider).error, isNull);
      expect(c.read(syncProvider).lastSyncTime, isNull);
    });

    test('setIdle 重置为空闲状态', () {
      final c = ProviderContainer();
      addTearDown(c.dispose);
      final notifier = c.read(syncProvider.notifier);
      
      // 先设置为同步中
      notifier.setSyncing(pending: 10, synced: 5);
      
      // 重置
      notifier.setIdle();
      
      expect(c.read(syncProvider).status, SyncStatus.idle);
      expect(c.read(syncProvider).pendingChanges, 0);
    });

    test('setSyncing 转换为同步中状态', () {
      final c = ProviderContainer();
      addTearDown(c.dispose);
      c.read(syncProvider.notifier).setSyncing(pending: 10, synced: 3);
      
      expect(c.read(syncProvider).status, SyncStatus.syncing);
      expect(c.read(syncProvider).pendingChanges, 10);
      expect(c.read(syncProvider).syncedChanges, 3);
    });

    test('setCompleted 转换为完成状态', () {
      final c = ProviderContainer();
      addTearDown(c.dispose);
      final notifier = c.read(syncProvider.notifier);
      
      // 先设置为同步中
      notifier.setSyncing(pending: 10, synced: 10);
      
      // 完成
      notifier.setCompleted();
      
      expect(c.read(syncProvider).status, SyncStatus.completed);
      expect(c.read(syncProvider).lastSyncTime, isNotNull);
    });

    test('setError 转换为错误状态', () {
      final c = ProviderContainer();
      addTearDown(c.dispose);
      final notifier = c.read(syncProvider.notifier);
      
      // 先设置为同步中
      notifier.setSyncing(pending: 10, synced: 5);
      
      // 设置错误
      notifier.setError('网络超时');
      
      expect(c.read(syncProvider).status, SyncStatus.error);
      expect(c.read(syncProvider).error, '网络超时');
    });

    test('setPendingChanges 更新待同步数量', () {
      final c = ProviderContainer();
      addTearDown(c.dispose);
      final notifier = c.read(syncProvider.notifier);
      
      // 先设置为同步中
      notifier.setSyncing(pending: 10, synced: 5);
      
      // 更新待同步数量
      notifier.setPendingChanges(15);
      
      expect(c.read(syncProvider).pendingChanges, 15);
      expect(c.read(syncProvider).status, SyncStatus.syncing); // 状态不变
    });

    test('同步流程：idle -> syncing -> completed', () {
      final c = ProviderContainer();
      addTearDown(c.dispose);
      final notifier = c.read(syncProvider.notifier);
      
      // 开始同步
      notifier.setSyncing(pending: 5, synced: 0);
      expect(c.read(syncProvider).status, SyncStatus.syncing);
      
      // 更新进度
      notifier.setSyncing(pending: 5, synced: 3);
      expect(c.read(syncProvider).syncedChanges, 3);
      
      // 完成
      notifier.setCompleted();
      expect(c.read(syncProvider).status, SyncStatus.completed);
      expect(c.read(syncProvider).lastSyncTime, isNotNull);
    });

    test('同步流程：idle -> syncing -> error', () {
      final c = ProviderContainer();
      addTearDown(c.dispose);
      final notifier = c.read(syncProvider.notifier);
      
      // 开始同步
      notifier.setSyncing(pending: 5, synced: 0);
      expect(c.read(syncProvider).status, SyncStatus.syncing);
      
      // 出错
      notifier.setError('服务器错误');
      expect(c.read(syncProvider).status, SyncStatus.error);
      expect(c.read(syncProvider).error, '服务器错误');
      
      // 重试后恢复
      notifier.setIdle();
      expect(c.read(syncProvider).status, SyncStatus.idle);
    });
  });
}
