import 'package:flutter/material.dart';
import 'package:echo_vault_app/features/navigation/app_drawer.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:echo_vault_app/features/device/providers/device_provider.dart';
import 'package:echo_vault_app/features/device/widgets/device_tile.dart';
import 'package:echo_vault_app/models/generated/echo_vault/user/v1/user_service.pb.dart';

class DeviceListPage extends ConsumerStatefulWidget {
  const DeviceListPage({super.key});

  @override
  ConsumerState<DeviceListPage> createState() => _DeviceListPageState();
}

class _DeviceListPageState extends ConsumerState<DeviceListPage> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() => ref.read(deviceProvider.notifier).loadDevices());
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(deviceProvider);

    return Scaffold(
      drawer: const AppDrawer(),
      appBar: AppBar(
        title: const Text('设备管理'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () => ref.read(deviceProvider.notifier).loadDevices(),
          ),
        ],
      ),
      body: _buildBody(context, state),
    );
  }

  Widget _buildBody(BuildContext context, DeviceState state) {
    switch (state.status) {
      case DeviceStatus.loading:
        return const Center(child: CircularProgressIndicator());
      case DeviceStatus.error:
        return Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.error_outline,
                size: 48,
                color: Theme.of(context).colorScheme.error,
              ),
              const SizedBox(height: 16),
              Text('加载失败: ${state.error}'),
              const SizedBox(height: 16),
              FilledButton.tonalIcon(
                onPressed: () => ref.read(deviceProvider.notifier).loadDevices(),
                icon: const Icon(Icons.refresh),
                label: const Text('重试'),
              ),
            ],
          ),
        );
      case DeviceStatus.loaded:
        if (state.devices.isEmpty) {
          return Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.devices,
                  size: 64,
                  color: Theme.of(context).colorScheme.outline,
                ),
                const SizedBox(height: 16),
                Text(
                  '暂无已注册设备',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Theme.of(context).colorScheme.outline,
                  ),
                ),
              ],
            ),
          );
        }
        return RefreshIndicator(
          onRefresh: () async => ref.read(deviceProvider.notifier).loadDevices(),
          child: ListView.separated(
            itemCount: state.devices.length,
            separatorBuilder: (_, __) => const Divider(height: 1),
            itemBuilder: (_, i) {
              final device = state.devices[i];
              return DeviceTile(
                device: device,
                onRename: () => _showRenameDialog(context, device),
                onRemove: () => _showRemoveConfirmDialog(context, device),
              );
            },
          ),
        );
    }
  }

  Future<void> _showRenameDialog(BuildContext context, Device device) async {
    final controller = TextEditingController(text: device.deviceName);
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('重命名设备'),
        content: TextField(
          controller: controller,
          autofocus: true,
          decoration: const InputDecoration(
            labelText: '设备名称',
            border: OutlineInputBorder(),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(false),
            child: const Text('取消'),
          ),
          FilledButton(
            onPressed: () => Navigator.of(ctx).pop(true),
            child: const Text('确认'),
          ),
        ],
      ),
    );

    if (confirmed == true && controller.text.trim().isNotEmpty) {
      ref.read(deviceProvider.notifier).updateDevice(
        deviceId: device.deviceId,
        deviceName: controller.text.trim(),
      );
    }
    controller.dispose();
  }

  Future<void> _showRemoveConfirmDialog(BuildContext context, Device device) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('确认移除'),
        content: Text('确定要移除设备 "${device.deviceName}" 吗？'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(false),
            child: const Text('取消'),
          ),
          FilledButton(
            style: FilledButton.styleFrom(
              backgroundColor: Theme.of(context).colorScheme.error,
              foregroundColor: Theme.of(context).colorScheme.onError,
            ),
            onPressed: () => Navigator.of(ctx).pop(true),
            child: const Text('移除'),
          ),
        ],
      ),
    );

    if (confirmed == true) {
      ref.read(deviceProvider.notifier).removeDevice(device.deviceId);
    }
  }
}
