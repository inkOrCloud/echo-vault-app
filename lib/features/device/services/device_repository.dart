import 'package:grpc/grpc.dart';
import 'package:echo_vault_app/core/grpc/client.dart';
import 'package:echo_vault_app/models/generated/echo_vault/user/v1/user_service.pbgrpc.dart';

/// gRPC DeviceService 抽象接口（生产用 UserServiceClient，测试用 mock）
abstract class DeviceService {
  Future<ListDevicesResponse> listDevices(ListDevicesRequest request);
  Future<RemoveDeviceResponse> removeDevice(RemoveDeviceRequest request);
  Future<UpdateDeviceResponse> updateDevice(UpdateDeviceRequest request);
}

/// 生产实现 — 使用 UserServiceClient 中的设备 RPC
class ChannelDeviceService implements DeviceService {
  final UserServiceClient _client;
  ChannelDeviceService(ClientChannel channel) : _client = UserServiceClient(channel);

  @override
  Future<ListDevicesResponse> listDevices(ListDevicesRequest r) => _client.listDevices(r);
  @override
  Future<RemoveDeviceResponse> removeDevice(RemoveDeviceRequest r) => _client.removeDevice(r);
  @override
  Future<UpdateDeviceResponse> updateDevice(UpdateDeviceRequest r) => _client.updateDevice(r);
}

class DeviceRepositoryException implements Exception {
  final String message;
  final int? grpcCode;
  const DeviceRepositoryException(this.message, {this.grpcCode});
  @override String toString() => 'DeviceRepositoryException: $message${grpcCode != null ? " (code: $grpcCode)" : ""}';
}

class DeviceRepository {
  final DeviceService _svc;

  DeviceRepository({required GrpcClientManager manager}) : _svc = ChannelDeviceService(manager.channel);
  DeviceRepository.withService(this._svc);

  Future<List<Device>> listDevices() async {
    try {
      return (await _svc.listDevices(ListDevicesRequest())).devices;
    } on GrpcError catch (e) {
      throw DeviceRepositoryException(e.message ?? '', grpcCode: e.code);
    }
  }

  Future<void> removeDevice(String deviceId) async {
    try {
      await _svc.removeDevice(RemoveDeviceRequest(deviceId: deviceId));
    } on GrpcError catch (e) {
      throw DeviceRepositoryException(e.message ?? '', grpcCode: e.code);
    }
  }

  Future<Device> updateDevice({
    required String deviceId,
    required String deviceName,
  }) async {
    try {
      return (await _svc.updateDevice(UpdateDeviceRequest(
        deviceId: deviceId,
        deviceName: deviceName,
      ))).device;
    } on GrpcError catch (e) {
      throw DeviceRepositoryException(e.message ?? '', grpcCode: e.code);
    }
  }
}
