import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:echo_vault_app/features/device/services/device_repository.dart';
import 'package:echo_vault_app/models/generated/echo_vault/user/v1/user_service.pb.dart';

enum DeviceStatus { loading, loaded, error }

class DeviceState {
  final DeviceStatus status;
  final List<Device> devices;
  final String? error;

  const DeviceState({
    this.status = DeviceStatus.loading,
    this.devices = const [],
    this.error,
  });
}

final deviceRepositoryProvider = Provider<DeviceRepository>((ref) {
  throw UnimplementedError('DeviceRepository must be overridden');
});

final deviceProvider = StateNotifierProvider<DeviceNotifier, DeviceState>((ref) {
  return DeviceNotifier(ref.read(deviceRepositoryProvider));
});

class DeviceNotifier extends StateNotifier<DeviceState> {
  final DeviceRepository _repo;
  DeviceNotifier(this._repo) : super(const DeviceState());

  Future<void> loadDevices() async {
    state = DeviceState(status: DeviceStatus.loading);
    try {
      final devices = await _repo.listDevices();
      state = DeviceState(status: DeviceStatus.loaded, devices: devices);
    } catch (e) {
      state = DeviceState(status: DeviceStatus.error, error: e.toString());
    }
  }

  Future<void> removeDevice(String deviceId) async {
    try {
      await _repo.removeDevice(deviceId);
      state = DeviceState(
        status: DeviceStatus.loaded,
        devices: state.devices.where((d) => d.deviceId != deviceId).toList(),
      );
    } catch (e) {
      state = DeviceState(status: DeviceStatus.error, error: e.toString());
    }
  }

  Future<void> updateDevice({
    required String deviceId,
    required String deviceName,
  }) async {
    try {
      final updated = await _repo.updateDevice(
        deviceId: deviceId,
        deviceName: deviceName,
      );
      state = DeviceState(
        status: DeviceStatus.loaded,
        devices: state.devices.map((d) => d.deviceId == deviceId ? updated : d).toList(),
      );
    } catch (e) {
      state = DeviceState(status: DeviceStatus.error, error: e.toString());
    }
  }
}
