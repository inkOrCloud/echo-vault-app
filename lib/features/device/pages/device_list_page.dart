// lib/features/device/pages/device_list_page.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:echo_vault_app/features/device/providers/device_provider.dart';
import 'package:echo_vault_app/features/device/widgets/device_tile.dart';

class DeviceListPage extends ConsumerStatefulWidget {
  const DeviceListPage({super.key});

  @override
  ConsumerState<DeviceListPage> createState() => _DeviceListPageState();
}

class _DeviceListPageState extends ConsumerState<DeviceListPage> {
  @override
  void initState() {
    super.initState();
    // TODO: 从仓储加载设备列表
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(deviceListProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('设备管理')),
      body: _buildBody(state),
    );
  }

  Widget _buildBody(DeviceListState state) {
    switch (state.status) {
      case DeviceStatus.loading:
        return const Center(child: CircularProgressIndicator());
      case DeviceStatus.error:
        return Center(child: Text('错误: ${state.error}'));
      case DeviceStatus.loaded:
        if (state.devices.isEmpty) {
          return const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.devices, size: 64, color: Colors.grey),
                SizedBox(height: 16),
                Text('没有已注册的设备', style: TextStyle(color: Colors.grey)),
              ],
            ),
          );
        }
        return ListView.builder(
          itemCount: state.devices.length,
          itemBuilder: (context, index) {
            final device = state.devices[index];
            return DeviceTile(
              device: device,
              isCurrentDevice: false, // TODO: 检测当前设备
              onDelete: () => _removeDevice(device.deviceId),
            );
          },
        );
      default:
        return const SizedBox.shrink();
    }
  }

  void _removeDevice(String deviceId) {
    // TODO: 实现移除设备
  }
}
