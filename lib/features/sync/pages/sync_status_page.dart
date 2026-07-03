import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:echo_vault_app/features/sync/providers/sync_provider.dart';
import 'package:echo_vault_app/features/sync/widgets/sync_status_indicator.dart';
import 'package:echo_vault_app/main.dart' show AppDrawer;
import 'package:intl/intl.dart';

class SyncStatusPage extends ConsumerStatefulWidget {
  const SyncStatusPage({super.key});

  @override
  ConsumerState<SyncStatusPage> createState() => _SyncStatusPageState();
}

class _SyncStatusPageState extends ConsumerState<SyncStatusPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _checkSyncStatus();
    });
  }

  Future<void> _checkSyncStatus() async {
    final prefs = await SharedPreferences.getInstance();
    
    // 从本地存储获取上次同步时间
    final lastSyncTimestamp = prefs.getInt('last_sync_time');
    DateTime? lastSyncTime;
    if (lastSyncTimestamp != null) {
      lastSyncTime = DateTime.fromMillisecondsSinceEpoch(lastSyncTimestamp);
    }
    
    // 获取待同步变更数
    final pendingChanges = prefs.getInt('pending_sync_changes') ?? 0;
    
    // 恢复同步状态
    ref.read(syncProvider.notifier).restoreFromStorage(
      lastSyncTime: lastSyncTime,
      pendingChanges: pendingChanges,
    );
  }

  Future<void> _saveSyncStatus() async {
    final prefs = await SharedPreferences.getInstance();
    final state = ref.read(syncProvider);
    
    // 保存上次同步时间
    if (state.lastSyncTime != null) {
      await prefs.setInt('last_sync_time', state.lastSyncTime!.millisecondsSinceEpoch);
    }
    
    // 保存待同步变更数
    await prefs.setInt('pending_sync_changes', state.pendingChanges);
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(syncProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('同步状态'),
        actions: [
          IconButton(
            icon: const Icon(Icons.sync),
            onPressed: state.status == SyncStatus.syncing ? null : () => _manualSync(),
            tooltip: '手动同步',
          ),
        ],
      ),
      drawer: const AppDrawer(),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('同步状态', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      const SyncStatusIndicator(),
                    ],
                  ),
                  const SizedBox(height: 16),
                  _buildInfoRow('待同步变更', '${state.pendingChanges}'),
                  _buildInfoRow('已同步变更', '${state.syncedChanges}'),
                  if (state.lastSyncTime != null)
                    _buildInfoRow('上次同步', DateFormat('yyyy-MM-dd HH:mm:ss').format(state.lastSyncTime!)),
                  if (state.error != null)
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Row(
                        children: [
                          Icon(Icons.error_outline, color: Theme.of(context).colorScheme.error, size: 16),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              '错误: ${state.error}',
                              style: TextStyle(color: Theme.of(context).colorScheme.error),
                            ),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('同步说明', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 12),
                  _buildHelpItem(Icons.cloud_off, '离线时修改会自动缓存'),
                  _buildHelpItem(Icons.sync, '联网后自动同步到服务器'),
                  _buildHelpItem(Icons.shield, '冲突时优先保留服务端数据'),
                  _buildHelpItem(Icons.upload, '歌曲文件需要手动上传'),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('同步操作', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 12),
                  ListTile(
                    leading: const Icon(Icons.sync_problem),
                    title: const Text('查看冲突'),
                    subtitle: const Text('查看并解决同步冲突'),
                    trailing: const Icon(Icons.chevron_right),
                    onTap: () => _showConflicts(),
                  ),
                  ListTile(
                    leading: const Icon(Icons.history),
                    title: const Text('同步历史'),
                    subtitle: const Text('查看最近的同步记录'),
                    trailing: const Icon(Icons.chevron_right),
                    onTap: () => _showSyncHistory(),
                  ),
                  ListTile(
                    leading: const Icon(Icons.settings),
                    title: const Text('同步设置'),
                    subtitle: const Text('配置自动同步选项'),
                    trailing: const Icon(Icons.chevron_right),
                    onTap: () => _showSyncSettings(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: const TextStyle(color: Colors.grey)),
          Text(value, style: const TextStyle(fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }

  Widget _buildHelpItem(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          Icon(icon, size: 20, color: Colors.grey),
          const SizedBox(width: 12),
          Expanded(child: Text(text)),
        ],
      ),
    );
  }

  Future<void> _manualSync() async {
    final notifier = ref.read(syncProvider.notifier);
    notifier.setSyncing(pending: 10, synced: 0);
    
    try {
      // 模拟同步过程
      for (var i = 0; i <= 10; i++) {
        await Future.delayed(const Duration(milliseconds: 200));
        if (i < 10) {
          notifier.setSyncing(pending: 10, synced: i);
        }
      }
      
      notifier.setCompleted();
      
      // 保存同步状态到本地存储
      await _saveSyncStatus();
      
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('同步完成')),
        );
      }
    } catch (e) {
      notifier.setError(e.toString());
      
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('同步失败: $e')),
        );
      }
    }
  }

  void _showConflicts() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('暂无冲突')),
    );
  }

  void _showSyncHistory() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('同步历史功能开发中')),
    );
  }

  void _showSyncSettings() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('同步设置功能开发中')),
    );
  }
}
