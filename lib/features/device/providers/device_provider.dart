// lib/features/device/providers/device_provider.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:echo_vault_app/models/generated/echo_vault/user/v1/user_service.pb.dart';

enum DeviceStatus { initial, loading, loaded, error }

class DeviceListState {
  final DeviceStatus status;
  final List<Device> devices;
  final String? error;

  const DeviceListState({
    this.status = DeviceStatus.initial,
    this.devices = const [],
    this.error,
  });
}

final deviceListProvider = StateNotifierProvider<DeviceListNotifier, DeviceListState>((ref) {
  return DeviceListNotifier();
});

class DeviceListNotifier extends StateNotifier<DeviceListState> {
  DeviceListNotifier() : super(const DeviceListState());

  void setLoading() => state = const DeviceListState(status: DeviceStatus.loading);
  void setDevices(List<Device> devices) => state = DeviceListState(status: DeviceStatus.loaded, devices: devices);
  void setError(String message) => state = DeviceListState(status: DeviceStatus.error, error: message);
  void removeDevice(String deviceId) {
    state = DeviceListState(
      status: state.status,
      devices: state.devices.where((d) => d.deviceId != deviceId).toList(),
    );
  }
  void updateDevice(Device updated) {
    state = DeviceListState(
      status: state.status,
      devices: state.devices.map((d) => d.deviceId == updated.deviceId ? updated : d).toList(),
    );
  }
}
