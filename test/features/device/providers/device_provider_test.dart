import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:echo_vault_app/features/device/providers/device_provider.dart';
import 'package:echo_vault_app/features/device/services/device_repository.dart';
import 'package:echo_vault_app/models/generated/echo_vault/user/v1/user_service.pb.dart';

class MockDeviceRepository implements DeviceRepository {
  List<Device> devices = [];
  bool shouldThrow = false;

  @override
  Future<List<Device>> listDevices() async {
    if (shouldThrow) throw Exception('error');
    return devices;
  }

  @override
  Future<void> removeDevice(String deviceId) async {
    if (shouldThrow) throw Exception('error');
    devices.removeWhere((d) => d.deviceId == deviceId);
  }

  @override
  Future<Device> updateDevice({required String deviceId, required String deviceName}) async {
    if (shouldThrow) throw Exception('error');
    final index = devices.indexWhere((d) => d.deviceId == deviceId);
    if (index == -1) throw Exception('Device not found');
    final updated = Device(
      deviceId: deviceId,
      deviceName: deviceName,
      platform: devices[index].platform,
    );
    devices[index] = updated;
    return updated;
  }
}

void main() {
  late MockDeviceRepository mockRepo;
  late ProviderContainer container;

  setUp(() {
    mockRepo = MockDeviceRepository();
    container = ProviderContainer(
      overrides: [
        deviceRepositoryProvider.overrideWithValue(mockRepo),
      ],
    );
  });

  tearDown(() => container.dispose());

  group('loadDevices', () {
    test('loads devices successfully', () async {
      mockRepo.devices = [
        Device(deviceId: 'd1', deviceName: 'PC', platform: 'linux'),
        Device(deviceId: 'd2', deviceName: 'Phone', platform: 'android'),
      ];
      await container.read(deviceProvider.notifier).loadDevices();
      final state = container.read(deviceProvider);
      expect(state.status, DeviceStatus.loaded);
      expect(state.devices.length, 2);
      expect(state.devices[0].deviceName, 'PC');
    });

    test('sets error status on failure', () async {
      mockRepo.shouldThrow = true;
      await container.read(deviceProvider.notifier).loadDevices();
      final state = container.read(deviceProvider);
      expect(state.status, DeviceStatus.error);
      expect(state.error, isNotNull);
    });
  });

  group('removeDevice', () {
    test('removes device and updates state', () async {
      mockRepo.devices = [Device(deviceId: 'd1', deviceName: 'PC', platform: 'linux')];
      await container.read(deviceProvider.notifier).loadDevices();
      expect(container.read(deviceProvider).devices.length, 1);

      await container.read(deviceProvider.notifier).removeDevice('d1');
      expect(container.read(deviceProvider).devices.length, 0);
    });

    test('sets error status on failure', () async {
      mockRepo.shouldThrow = true;
      await container.read(deviceProvider.notifier).loadDevices();
      // Reset shouldThrow after load
      mockRepo.shouldThrow = true;
      await container.read(deviceProvider.notifier).removeDevice('d1');
      expect(container.read(deviceProvider).status, DeviceStatus.error);
    });
  });

  group('updateDevice', () {
    test('updates device name and reflects in state', () async {
      mockRepo.devices = [Device(deviceId: 'd1', deviceName: 'Old Name', platform: 'linux')];
      await container.read(deviceProvider.notifier).loadDevices();

      await container.read(deviceProvider.notifier).updateDevice(deviceId: 'd1', deviceName: 'New Name');
      final state = container.read(deviceProvider);
      expect(state.devices.first.deviceName, 'New Name');
      expect(state.status, DeviceStatus.loaded);
    });

    test('sets error status on failure', () async {
      mockRepo.devices = [Device(deviceId: 'd1', deviceName: 'Old', platform: 'linux')];
      await container.read(deviceProvider.notifier).loadDevices();
      mockRepo.shouldThrow = true;

      await container.read(deviceProvider.notifier).updateDevice(deviceId: 'd1', deviceName: 'New');
      expect(container.read(deviceProvider).status, DeviceStatus.error);
    });
  });
}
