// lib/features/device/services/device_repository.dart
import 'package:echo_vault_app/models/generated/echo_vault/user/v1/user_service.pb.dart';
import 'package:echo_vault_app/models/generated/echo_vault/user/v1/user_service.pbgrpc.dart';
import 'package:echo_vault_app/core/grpc/client.dart';

class DeviceRepository {
  final GrpcClientManager _clientManager;

  DeviceRepository(this._clientManager);

  UserServiceClient get _client => UserServiceClient(_clientManager.channel);

  Future<List<Device>> listDevices() async {
    final response = await _client.listDevices(ListDevicesRequest());
    return response.devices.toList();
  }

  Future<Device> registerDevice({
    required String deviceId,
    required String deviceName,
    required String platform,
    String osVersion = '',
    String clientVersion = '',
  }) async {
    final request = RegisterDeviceRequest()
      ..deviceId = deviceId
      ..deviceName = deviceName
      ..platform = platform
      ..osVersion = osVersion
      ..clientVersion = clientVersion;
    final response = await _client.registerDevice(request);
    return response.device;
  }

  Future<void> removeDevice(String deviceId) async {
    final request = RemoveDeviceRequest()..deviceId = deviceId;
    await _client.removeDevice(request);
  }

  Future<Device> updateDevice({
    required String deviceId,
    required String deviceName,
  }) async {
    final request = UpdateDeviceRequest()
      ..deviceId = deviceId
      ..deviceName = deviceName;
    final response = await _client.updateDevice(request);
    return response.device;
  }
}
