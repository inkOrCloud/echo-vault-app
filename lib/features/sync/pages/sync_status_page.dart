// lib/features/sync/pages/sync_status_page.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:echo_vault_app/features/sync/providers/sync_provider.dart';
import 'package:echo_vault_app/features/sync/widgets/sync_status_indicator.dart';
import 'package:intl/intl.dart';

class SyncStatusPage extends ConsumerWidget {
  const SyncStatusPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(syncProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('同步状态'),
        actions: [
          IconButton(
            icon: const Icon(Icons.sync),
            onPressed: () => _manualSync(ref),
          ),
        ],
      ),
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
                      child: Text(
                        '错误: ${state.error}',
                        style: TextStyle(color: Theme.of(context).colorScheme.error),
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
                  const SizedBox(height: 8),
                  const Text('• 离线时修改会自动缓存'),
                  const Text('• 联网后自动同步到服务器'),
                  const Text('• 冲突时优先保留服务端数据'),
                  const Text('• 歌曲文件需要手动上传'),
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
          Text(value),
        ],
      ),
    );
  }

  void _manualSync(WidgetRef ref) {
    // TODO: 触发手动同步
  }
}
