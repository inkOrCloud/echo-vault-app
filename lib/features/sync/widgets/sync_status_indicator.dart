import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:echo_vault_app/features/sync/providers/sync_provider.dart';

class SyncStatusIndicator extends ConsumerWidget {
  const SyncStatusIndicator({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(syncProvider);
    final theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: _getStatusColor(theme, state.status),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildIcon(state.status),
          const SizedBox(width: 6),
          Text(
            _getStatusText(state),
            style: TextStyle(
              color: _getStatusTextColor(theme, state.status),
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildIcon(SyncStatus status) {
    switch (status) {
      case SyncStatus.syncing:
        return const SizedBox(
          width: 12,
          height: 12,
          child: CircularProgressIndicator(strokeWidth: 2),
        );
      case SyncStatus.completed:
        return const Icon(Icons.check_circle, size: 14);
      case SyncStatus.error:
        return const Icon(Icons.error, size: 14);
      case SyncStatus.idle:
        return const Icon(Icons.sync, size: 14);
    }
  }

  String _getStatusText(SyncState state) {
    switch (state.status) {
      case SyncStatus.syncing:
        return '同步中 (${state.syncedChanges}/${state.pendingChanges})';
      case SyncStatus.completed:
        if (state.lastSyncTime != null) {
          return '上次同步 ${DateFormat('HH:mm').format(state.lastSyncTime!)}';
        }
        return '已同步';
      case SyncStatus.error:
        return '同步失败';
      case SyncStatus.idle:
        return '等待同步';
    }
  }

  Color _getStatusColor(ThemeData theme, SyncStatus status) {
    switch (status) {
      case SyncStatus.syncing:
        return theme.colorScheme.primaryContainer;
      case SyncStatus.completed:
        return theme.colorScheme.secondaryContainer;
      case SyncStatus.error:
        return theme.colorScheme.errorContainer;
      case SyncStatus.idle:
        return theme.colorScheme.surfaceContainerHighest;
    }
  }

  Color _getStatusTextColor(ThemeData theme, SyncStatus status) {
    switch (status) {
      case SyncStatus.syncing:
        return theme.colorScheme.onPrimaryContainer;
      case SyncStatus.completed:
        return theme.colorScheme.onSecondaryContainer;
      case SyncStatus.error:
        return theme.colorScheme.onErrorContainer;
      case SyncStatus.idle:
        return theme.colorScheme.onSurfaceVariant;
    }
  }
}
