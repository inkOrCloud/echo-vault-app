import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:echo_vault_app/features/device/pages/device_list_page.dart';
import 'package:echo_vault_app/features/device/providers/device_provider.dart';
import 'package:echo_vault_app/features/device/services/device_repository.dart';
import 'package:echo_vault_app/models/generated/echo_vault/user/v1/user_service.pb.dart';

class MockDeviceRepository implements DeviceRepository {
  List<Device> devices = [];
  bool shouldThrow = false;

  @override
  Future<List<Device>> listDevices() async {
    if (shouldThrow) throw Exception('test error');
    return devices;
  }

  @override
  Future<void> removeDevice(String deviceId) async {
    devices.removeWhere((d) => d.deviceId == deviceId);
  }

  @override
  Future<Device> updateDevice({required String deviceId, required String deviceName}) async {
    final idx = devices.indexWhere((d) => d.deviceId == deviceId);
    if (idx == -1) throw Exception('not found');
    final updated = Device(
      deviceId: deviceId,
      deviceName: deviceName,
      platform: devices[idx].platform,
    );
    devices[idx] = updated;
    return updated;
  }
}

Widget createTestApp(DeviceRepository repo) {
  return ProviderScope(
    overrides: [
      deviceRepositoryProvider.overrideWithValue(repo),
    ],
    child: const MaterialApp(
      home: DeviceListPage(),
    ),
  );
}

void main() {
  testWidgets('DeviceListPage shows loading indicator', (tester) async {
    final mockRepo = MockDeviceRepository();
    await tester.pumpWidget(createTestApp(mockRepo));
    expect(find.byType(CircularProgressIndicator), findsOneWidget);
  });

  testWidgets('DeviceListPage shows device list', (tester) async {
    final mockRepo = MockDeviceRepository();
    mockRepo.devices = [
      Device(deviceId: 'd1', deviceName: 'My PC', platform: 'linux'),
      Device(deviceId: 'd2', deviceName: 'My Phone', platform: 'android'),
    ];

    await tester.pumpWidget(createTestApp(mockRepo));
    await tester.pumpAndSettle();

    expect(find.text('设备管理'), findsOneWidget);
    expect(find.text('My PC'), findsOneWidget);
    expect(find.text('My Phone'), findsOneWidget);
  });

  testWidgets('DeviceListPage shows empty state', (tester) async {
    final mockRepo = MockDeviceRepository();

    await tester.pumpWidget(createTestApp(mockRepo));
    await tester.pumpAndSettle();

    expect(find.text('暂无已注册设备'), findsOneWidget);
  });

  testWidgets('DeviceListPage shows error and retry button', (tester) async {
    final mockRepo = MockDeviceRepository();
    mockRepo.shouldThrow = true;

    await tester.pumpWidget(createTestApp(mockRepo));
    await tester.pumpAndSettle();

    expect(find.text('重试'), findsOneWidget);
  });

  testWidgets('DeviceListPage displays rename dialog', (tester) async {
    final mockRepo = MockDeviceRepository();
    mockRepo.devices = [
      Device(deviceId: 'd1', deviceName: 'My PC', platform: 'linux'),
    ];

    await tester.pumpWidget(createTestApp(mockRepo));
    await tester.pumpAndSettle();

    // Open popup menu
    await tester.tap(find.byIcon(Icons.more_vert));
    await tester.pumpAndSettle();

    // Tap "重命名"
    await tester.tap(find.text('重命名'));
    await tester.pumpAndSettle();

    // Dialog should appear - check dialog title and text field value
    expect(find.text('重命名设备'), findsOneWidget);
    expect(find.byType(AlertDialog), findsOneWidget);
    expect(find.byType(TextField), findsOneWidget);
  });

  testWidgets('DeviceListPage displays remove confirmation dialog', (tester) async {
    final mockRepo = MockDeviceRepository();
    mockRepo.devices = [
      Device(deviceId: 'd1', deviceName: 'My PC', platform: 'linux'),
    ];

    await tester.pumpWidget(createTestApp(mockRepo));
    await tester.pumpAndSettle();

    // Open popup menu
    await tester.tap(find.byIcon(Icons.more_vert));
    await tester.pumpAndSettle();

    // Tap "移除设备"
    await tester.tap(find.text('移除设备'));
    await tester.pumpAndSettle();

    // Confirmation dialog should appear
    expect(find.text('确认移除'), findsOneWidget);
    expect(find.byType(AlertDialog), findsOneWidget);
  });
}
