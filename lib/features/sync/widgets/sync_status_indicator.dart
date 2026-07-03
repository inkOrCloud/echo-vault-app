// lib/features/sync/widgets/sync_status_indicator.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:echo_vault_app/features/sync/providers/sync_provider.dart';
import 'package:intl/intl.dart';

class SyncStatusIndicator extends ConsumerWidget {
  const SyncStatusIndicator({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(syncProvider);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: _getStatusColor(context, state.status),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildIcon(state.status),
          const SizedBox(width: 8),
          Text(
            _getStatusText(state),
            style: TextStyle(
              color: _getStatusTextColor(context, state.status),
              fontSize: 12,
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
        return const Icon(Icons.check_circle, size: 12);
      case SyncStatus.error:
        return const Icon(Icons.error, size: 12);
      case SyncStatus.idle:
        return const Icon(Icons.sync, size: 12);
    }
  }

  String _getStatusText(SyncState state) {
    switch (state.status) {
      case SyncStatus.syncing:
        return '同步中 (${state.syncedChanges}/${state.pendingChanges})';
      case SyncStatus.completed:
        if (state.lastSyncTime != null) {
          return '上次同步: ${DateFormat('HH:mm').format(state.lastSyncTime!)}';
        }
        return '已同步';
      case SyncStatus.error:
        return '同步失败';
      case SyncStatus.idle:
        return '等待同步';
    }
  }

  Color _getStatusColor(BuildContext context, SyncStatus status) {
    switch (status) {
      case SyncStatus.syncing:
        return Theme.of(context).colorScheme.primaryContainer;
      case SyncStatus.completed:
        return Theme.of(context).colorScheme.secondaryContainer;
      case SyncStatus.error:
        return Theme.of(context).colorScheme.errorContainer;
      case SyncStatus.idle:
        return Theme.of(context).colorScheme.surfaceContainerHighest;
    }
  }

  Color _getStatusTextColor(BuildContext context, SyncStatus status) {
    switch (status) {
      case SyncStatus.syncing:
        return Theme.of(context).colorScheme.onPrimaryContainer;
      case SyncStatus.completed:
        return Theme.of(context).colorScheme.onSecondaryContainer;
      case SyncStatus.error:
        return Theme.of(context).colorScheme.onErrorContainer;
      case SyncStatus.idle:
        return Theme.of(context).colorScheme.onSurfaceVariant;
    }
  }
}
