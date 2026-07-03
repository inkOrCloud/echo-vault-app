import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:echo_vault_app/features/device/providers/device_provider.dart';
import 'package:echo_vault_app/features/device/services/device_repository.dart';
import 'package:echo_vault_app/features/device/widgets/device_tile.dart';
import 'package:echo_vault_app/main.dart' show AppDrawer;
import 'package:echo_vault_app/features/library/services/grpc_providers.dart';
import 'package:uuid/uuid.dart';

// 设备仓储提供者
final deviceRepositoryProvider = Provider<DeviceRepository>((ref) {
  final clientManager = ref.watch(grpcClientProvider);
  return DeviceRepository(clientManager);
});

// 当前设备 ID 提供者
final currentDeviceIdProvider = Provider<String>((ref) {
  return const Uuid().v4();
});

class DeviceListPage extends ConsumerStatefulWidget {
  const DeviceListPage({super.key});

  @override
  ConsumerState<DeviceListPage> createState() => _DeviceListPageState();
}

class _DeviceListPageState extends ConsumerState<DeviceListPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _loadDevices();
    });
  }

  Future<void> _loadDevices() async {
    final notifier = ref.read(deviceListProvider.notifier);
    notifier.setLoading();
    try {
      final repository = ref.read(deviceRepositoryProvider);
      final devices = await repository.listDevices();
      if (mounted) {
        notifier.setDevices(devices);
      }
    } catch (e) {
      if (mounted) {
        notifier.setError(e.toString());
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(deviceListProvider);
    final currentDeviceId = ref.watch(currentDeviceIdProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('设备管理'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () => _registerCurrentDevice(),
          ),
        ],
      ),
      drawer: const AppDrawer(),
      body: _buildBody(state, currentDeviceId),
    );
  }

  Widget _buildBody(DeviceListState state, String currentDeviceId) {
    switch (state.status) {
      case DeviceStatus.loading:
        return const Center(child: CircularProgressIndicator());
      case DeviceStatus.error:
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.error_outline, size: 64, color: Colors.red),
              const SizedBox(height: 16),
              Text('加载失败: ${state.error}'),
              const SizedBox(height: 16),
              FilledButton(
                onPressed: _loadDevices,
                child: const Text('重试'),
              ),
            ],
          ),
        );
      case DeviceStatus.loaded:
        if (state.devices.isEmpty) {
          return const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.devices, size: 64, color: Colors.grey),
                SizedBox(height: 16),
                Text('没有已注册的设备', style: TextStyle(color: Colors.grey)),
                SizedBox(height: 8),
                Text('点击右上角 + 注册当前设备', style: TextStyle(color: Colors.grey, fontSize: 12)),
              ],
            ),
          );
        }
        return RefreshIndicator(
          onRefresh: _loadDevices,
          child: ListView.builder(
            itemCount: state.devices.length,
            itemBuilder: (context, index) {
              final device = state.devices[index];
              return DeviceTile(
                device: device,
                isCurrentDevice: device.deviceId == currentDeviceId,
                onDelete: () => _removeDevice(device.deviceId),
              );
            },
          ),
        );
      default:
        return const SizedBox.shrink();
    }
  }

  Future<void> _registerCurrentDevice() async {
    final currentDeviceId = ref.read(currentDeviceIdProvider);
    
    final deviceName = await _getDeviceName();
    final platform = _getPlatform();
    
    if (!mounted) return;
    
    try {
      final repository = ref.read(deviceRepositoryProvider);
      final device = await repository.registerDevice(
        deviceId: currentDeviceId,
        deviceName: deviceName,
        platform: platform,
        osVersion: await _getOsVersion(),
        clientVersion: '1.0.0',
      );
      if (mounted) {
        ref.read(deviceListProvider.notifier).setDevices(
          [...ref.read(deviceListProvider).devices, device],
        );
        
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('设备注册成功')),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('注册失败: $e')),
        );
      }
    }
  }

  Future<String> _getDeviceName() async {
    return '我的设备';
  }

  String _getPlatform() {
    return 'flutter';
  }

  Future<String> _getOsVersion() async {
    return '1.0.0';
  }

  Future<void> _removeDevice(String deviceId) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: const Text('确认移除'),
        content: const Text('确定要移除这个设备吗？'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogContext, false),
            child: const Text('取消'),
          ),
          FilledButton(
            onPressed: () => Navigator.pop(dialogContext, true),
            child: const Text('移除'),
          ),
        ],
      ),
    );
    
    if (confirmed != true || !mounted) return;
    
    try {
      final repository = ref.read(deviceRepositoryProvider);
      await repository.removeDevice(deviceId);
      if (mounted) {
        ref.read(deviceListProvider.notifier).removeDevice(deviceId);
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('移除失败: $e')),
        );
      }
    }
  }
}
