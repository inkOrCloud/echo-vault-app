import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:echo_vault_app/features/device/providers/device_provider.dart';
import 'package:echo_vault_app/models/generated/echo_vault/user/v1/user_service.pb.dart';

void main() {
  group('DeviceListProvider', () {
    test('初始状态是 initial', () {
      final c = ProviderContainer();
      addTearDown(c.dispose);
      expect(c.read(deviceListProvider).status, DeviceStatus.initial);
      expect(c.read(deviceListProvider).devices, isEmpty);
    });

    test('setLoading 转换为 loading 状态', () {
      final c = ProviderContainer();
      addTearDown(c.dispose);
      c.read(deviceListProvider.notifier).setLoading();
      expect(c.read(deviceListProvider).status, DeviceStatus.loading);
    });

    test('setDevices 转换为 loaded 状态', () {
      final c = ProviderContainer();
      addTearDown(c.dispose);
      final device = Device()
        ..deviceId = 'd1'
        ..deviceName = '测试设备'
        ..platform = 'windows';
      c.read(deviceListProvider.notifier).setDevices([device]);
      expect(c.read(deviceListProvider).status, DeviceStatus.loaded);
      expect(c.read(deviceListProvider).devices.length, 1);
      expect(c.read(deviceListProvider).devices.first.deviceName, '测试设备');
    });

    test('setError 转换为 error 状态', () {
      final c = ProviderContainer();
      addTearDown(c.dispose);
      c.read(deviceListProvider.notifier).setError('连接失败');
      expect(c.read(deviceListProvider).status, DeviceStatus.error);
      expect(c.read(deviceListProvider).error, '连接失败');
    });

    test('removeDevice 从列表中移除设备', () {
      final c = ProviderContainer();
      addTearDown(c.dispose);
      final notifier = c.read(deviceListProvider.notifier);
      
      // 先添加两个设备
      notifier.setDevices([
        Device()..deviceId = 'd1'..deviceName = '设备1',
        Device()..deviceId = 'd2'..deviceName = '设备2',
      ]);
      
      // 移除第一个
      notifier.removeDevice('d1');
      
      expect(c.read(deviceListProvider).devices.length, 1);
      expect(c.read(deviceListProvider).devices.first.deviceId, 'd2');
    });

    test('updateDevice 更新设备信息', () {
      final c = ProviderContainer();
      addTearDown(c.dispose);
      final notifier = c.read(deviceListProvider.notifier);
      
      // 先添加设备
      notifier.setDevices([
        Device()..deviceId = 'd1'..deviceName = '原名',
      ]);
      
      // 更新设备
      final updated = Device()
        ..deviceId = 'd1'
        ..deviceName = '新名';
      notifier.updateDevice(updated);
      
      expect(c.read(deviceListProvider).devices.first.deviceName, '新名');
    });
  });
}
