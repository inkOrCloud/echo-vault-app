import 'package:flutter/material.dart';
import 'package:echo_vault_app/models/generated/echo_vault/user/v1/user_service.pb.dart';
import 'package:echo_vault_app/models/generated/google/protobuf/timestamp.pb.dart';

IconData _platformIcon(String platform) {
  switch (platform) {
    case 'windows':
      return Icons.desktop_windows;
    case 'macos':
      return Icons.desktop_mac;
    case 'linux':
      return Icons.computer;
    case 'android':
      return Icons.phone_android;
    case 'ios':
      return Icons.phone_iphone;
    case 'web':
      return Icons.language;
    default:
      return Icons.devices;
  }
}

class DeviceTile extends StatelessWidget {
  final Device device;
  final VoidCallback? onRename;
  final VoidCallback? onRemove;

  const DeviceTile({
    super.key,
    required this.device,
    this.onRename,
    this.onRemove,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListTile(
      leading: Icon(
        _platformIcon(device.platform),
        size: 32,
        color: theme.colorScheme.primary,
      ),
      title: Text(
        device.deviceName,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: Text(
        device.hasLastSyncAt()
            ? '最后同步：${_formatTimestamp(device.lastSyncAt)}'
            : '尚未同步',
        style: theme.textTheme.bodySmall?.copyWith(
          color: theme.colorScheme.outline,
        ),
      ),
      trailing: (onRename != null || onRemove != null)
          ? PopupMenuButton<String>(
              icon: Icon(
                Icons.more_vert,
                color: theme.colorScheme.outline,
              ),
              onSelected: (value) {
                switch (value) {
                  case 'rename':
                    onRename?.call();
                  case 'remove':
                    onRemove?.call();
                }
              },
              itemBuilder: (_) => [
                if (onRename != null)
                  const PopupMenuItem(
                    value: 'rename',
                    child: ListTile(
                      leading: Icon(Icons.edit),
                      title: Text('重命名'),
                      contentPadding: EdgeInsets.zero,
                    ),
                  ),
                if (onRemove != null)
                  const PopupMenuItem(
                    value: 'remove',
                    child: ListTile(
                      leading: Icon(Icons.delete_outline),
                      title: Text('移除设备'),
                      contentPadding: EdgeInsets.zero,
                    ),
                  ),
              ],
            )
          : null,
    );
  }

  String _formatTimestamp(Timestamp ts) {
    final dt = DateTime.fromMillisecondsSinceEpoch(
      ts.seconds.toInt() * 1000 + (ts.nanos ~/ 1000000),
    );
    return '${dt.year}-${_pad(dt.month)}-${_pad(dt.day)} ${_pad(dt.hour)}:${_pad(dt.minute)}';
  }

  String _pad(int n) => n.toString().padLeft(2, '0');
}
