import 'package:flutter/material.dart';
import 'package:echo_vault_app/features/navigation/app_drawer.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:echo_vault_app/features/sync/providers/sync_provider.dart';
import 'package:echo_vault_app/features/sync/widgets/sync_status_indicator.dart';

class SyncStatusPage extends ConsumerStatefulWidget {
  const SyncStatusPage({super.key});

  @override
  ConsumerState<SyncStatusPage> createState() => _SyncStatusPageState();
}

class _SyncStatusPageState extends ConsumerState<SyncStatusPage> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() => ref.read(syncProvider.notifier).loadLastSyncTime());
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(syncProvider);
    final theme = Theme.of(context);

    return Scaffold(
      drawer: const AppDrawer(),
      appBar: AppBar(
        title: const Text('同步状态'),
        actions: [
          IconButton(
            icon: const Icon(Icons.sync),
            onPressed: state.status == SyncStatus.syncing
                ? null
                : () => ref.read(syncProvider.notifier).startSync(),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // 同步概览卡片
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '同步状态',
                        style: theme.textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SyncStatusIndicator(),
                    ],
                  ),
                  const SizedBox(height: 16),
                  _buildInfoRow('待同步变更', '${state.pendingChanges}'),
                  const SizedBox(height: 8),
                  _buildInfoRow('已同步变更', '${state.syncedChanges}'),
                  if (state.lastSyncTime != null) ...[
                    const SizedBox(height: 8),
                    _buildInfoRow(
                      '上次同步',
                      DateFormat('yyyy-MM-dd HH:mm:ss').format(state.lastSyncTime!),
                    ),
                  ],
                  if (state.error != null) ...[
                    const SizedBox(height: 12),
                    Text(
                      '错误: ${state.error}',
                      style: TextStyle(color: theme.colorScheme.error),
                    ),
                    const SizedBox(height: 8),
                    FilledButton.tonalIcon(
                      onPressed: () => ref.read(syncProvider.notifier).startSync(),
                      icon: const Icon(Icons.refresh),
                      label: const Text('重试'),
                    ),
                  ],
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          // 同步说明卡片
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '同步说明',
                    style: theme.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 12),
                  _buildInfoItem(theme, Icons.wifi_off, '离线时修改会自动缓存'),
                  const SizedBox(height: 8),
                  _buildInfoItem(theme, Icons.wifi, '联网后自动同步到服务器'),
                  const SizedBox(height: 8),
                  _buildInfoItem(theme, Icons.compare_arrows, '冲突时优先保留服务端数据'),
                  const SizedBox(height: 8),
                  _buildInfoItem(theme, Icons.file_upload_outlined, '歌曲文件需要手动上传'),
                ],
              ),
            ),
          ),
          const SizedBox(height: 24),
          // 立即同步按钮
          SizedBox(
            width: double.infinity,
            child: FilledButton.icon(
              onPressed: state.status == SyncStatus.syncing
                  ? null
                  : () => ref.read(syncProvider.notifier).startSync(),
              icon: Icon(state.status == SyncStatus.syncing
                  ? Icons.hourglass_top
                  : Icons.sync),
              label: Text(state.status == SyncStatus.syncing
                  ? '同步中...'
                  : '立即同步'),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label, style: const TextStyle(color: Colors.grey)),
        Text(value),
      ],
    );
  }

  Widget _buildInfoItem(ThemeData theme, IconData icon, String text) {
    return Row(
      children: [
        Icon(icon, size: 18, color: theme.colorScheme.primary),
        const SizedBox(width: 8),
        Text(text),
      ],
    );
  }
}
