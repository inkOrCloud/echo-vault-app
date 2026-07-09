import 'package:flutter_test/flutter_test.dart';
import 'package:grpc/grpc.dart';
import 'package:echo_vault_app/features/device/services/device_repository.dart';
import 'package:echo_vault_app/models/generated/echo_vault/user/v1/user_service.pb.dart';
import 'package:echo_vault_app/models/generated/google/protobuf/timestamp.pb.dart';

class MockDeviceService implements DeviceService {
  final Map<String, Object Function()> _handlers = {};
  bool throwOnCall = false;

  void when(String m, Object Function() h) { _handlers[m] = h; }

  @override
  Future<ListDevicesResponse> listDevices(ListDevicesRequest r) {
    if (throwOnCall) throw GrpcError.unavailable('down');
    return Future.value(_handlers['listDevices']!() as ListDevicesResponse);
  }

  @override
  Future<RemoveDeviceResponse> removeDevice(RemoveDeviceRequest r) {
    if (throwOnCall) throw GrpcError.unavailable('down');
    return Future.value(_handlers['removeDevice']!() as RemoveDeviceResponse);
  }

  @override
  Future<UpdateDeviceResponse> updateDevice(UpdateDeviceRequest r) {
    if (throwOnCall) throw GrpcError.unavailable('down');
    return Future.value(_handlers['updateDevice']!() as UpdateDeviceResponse);
  }
}

void main() {
  late MockDeviceService mock;
  late DeviceRepository repo;

  setUp(() {
    mock = MockDeviceService();
    repo = DeviceRepository.withService(mock);
  });

  group('listDevices', () {
    test('returns device list', () async {
      mock.when('listDevices', () => ListDevicesResponse(devices: [
        Device(deviceId: 'd1', deviceName: 'My PC', platform: 'linux', osVersion: 'Ubuntu 24.04'),
        Device(deviceId: 'd2', deviceName: 'My Phone', platform: 'android', osVersion: '14'),
      ]));
      final devices = await repo.listDevices();
      expect(devices.length, 2);
      expect(devices[0].deviceId, 'd1');
      expect(devices[0].deviceName, 'My PC');
      expect(devices[0].platform, 'linux');
    });

    test('throws on error', () async {
      mock.throwOnCall = true;
      expect(() => repo.listDevices(), throwsA(isA<DeviceRepositoryException>()));
    });
  });

  group('removeDevice', () {
    test('removes device successfully', () async {
      mock.when('removeDevice', () => RemoveDeviceResponse());
      await repo.removeDevice('d1');
    });

    test('throws on error', () async {
      mock.throwOnCall = true;
      expect(() => repo.removeDevice('d1'), throwsA(isA<DeviceRepositoryException>()));
    });
  });

  group('updateDevice', () {
    test('updates device name', () async {
      mock.when('updateDevice', () => UpdateDeviceResponse(
        device: Device(deviceId: 'd1', deviceName: 'Renamed PC', platform: 'linux'),
      ));
      final device = await repo.updateDevice(deviceId: 'd1', deviceName: 'Renamed PC');
      expect(device.deviceId, 'd1');
      expect(device.deviceName, 'Renamed PC');
    });

    test('throws on error', () async {
      mock.throwOnCall = true;
      expect(() => repo.updateDevice(deviceId: 'd1', deviceName: 'X'), throwsA(isA<DeviceRepositoryException>()));
    });
  });
}
