// lib/features/device/widgets/device_tile.dart
import 'package:flutter/material.dart';
import 'package:echo_vault_app/models/generated/echo_vault/user/v1/user_service.pb.dart';
import 'package:intl/intl.dart';

class DeviceTile extends StatelessWidget {
  final Device device;
  final bool isCurrentDevice;
  final VoidCallback? onDelete;

  const DeviceTile({
    super.key,
    required this.device,
    this.isCurrentDevice = false,
    this.onDelete,
  });

  IconData _getPlatformIcon() {
    switch (device.platform.toLowerCase()) {
      case 'windows':
        return Icons.desktop_windows;
      case 'macos':
        return Icons.laptop_mac;
      case 'linux':
        return Icons.computer;
      case 'android':
        return Icons.android;
      case 'ios':
        return Icons.phone_iphone;
      default:
        return Icons.device_unknown;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(_getPlatformIcon()),
      title: Row(
        children: [
          Expanded(child: Text(device.deviceName)),
          if (isCurrentDevice)
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primaryContainer,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                '当前设备',
                style: TextStyle(
                  fontSize: 12,
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                ),
              ),
            ),
        ],
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('${device.platform} • ${device.osVersion}'),
          if (device.hasLastSyncAt())
            Text(
              '上次同步: ${DateFormat('yyyy-MM-dd HH:mm').format(device.lastSyncAt.toDateTime())}',
              style: Theme.of(context).textTheme.bodySmall,
            ),
        ],
      ),
      trailing: isCurrentDevice
          ? null
          : IconButton(
              icon: const Icon(Icons.delete_outline),
              onPressed: onDelete,
            ),
    );
  }
}
