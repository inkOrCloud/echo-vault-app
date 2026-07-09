import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fixnum/fixnum.dart';
import 'package:echo_vault_app/features/device/widgets/device_tile.dart';
import 'package:echo_vault_app/models/generated/echo_vault/user/v1/user_service.pb.dart';
import 'package:echo_vault_app/models/generated/google/protobuf/timestamp.pb.dart';

void main() {
  testWidgets('DeviceTile displays device name and platform icon', (tester) async {
    final device = Device(
      deviceId: 'd1',
      deviceName: 'My PC',
      platform: 'linux',
    );

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: DeviceTile(device: device),
        ),
      ),
    );

    expect(find.text('My PC'), findsOneWidget);
    expect(find.byIcon(Icons.computer), findsOneWidget);
  });

  testWidgets('DeviceTile shows platform icons correctly', (tester) async {
    final testCases = {
      'windows': Icons.desktop_windows,
      'macos': Icons.desktop_mac,
      'linux': Icons.computer,
      'android': Icons.phone_android,
      'ios': Icons.phone_iphone,
      'web': Icons.language,
      'unknown': Icons.devices,
    };

    for (final entry in testCases.entries) {
      final device = Device(
        deviceId: 'd1',
        deviceName: 'Device',
        platform: entry.key,
      );

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: DeviceTile(device: device),
          ),
        ),
      );

      expect(find.byIcon(entry.value), findsOneWidget,
          reason: 'Platform ${entry.key} should show icon ${entry.value}');
    }
  });

  testWidgets('DeviceTile shows last sync time', (tester) async {
    final device = Device(
      deviceId: 'd1',
      deviceName: 'My PC',
      platform: 'linux',
      lastSyncAt: Timestamp()..seconds = Int64(1720512000), // 2024-07-09
    );

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: DeviceTile(device: device),
        ),
      ),
    );

    // Should show a non-empty subtitle with sync info
    expect(find.textContaining('同步'), findsOneWidget);
  });

  testWidgets('DeviceTile shows 尚未同步 when no lastSyncAt', (tester) async {
    final device = Device(
      deviceId: 'd1',
      deviceName: 'My PC',
      platform: 'linux',
    );

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: DeviceTile(device: device),
        ),
      ),
    );

    expect(find.text('尚未同步'), findsOneWidget);
  });

  testWidgets('DeviceTile triggers onRename callback', (tester) async {
    bool renamed = false;
    final device = Device(
      deviceId: 'd1',
      deviceName: 'My PC',
      platform: 'linux',
    );

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: DeviceTile(
            device: device,
            onRename: () => renamed = true,
          ),
        ),
      ),
    );

    // Tap the more button
    await tester.tap(find.byIcon(Icons.more_vert));
    await tester.pumpAndSettle();

    // Tap "重命名"
    await tester.tap(find.text('重命名'));
    await tester.pumpAndSettle();

    expect(renamed, isTrue);
  });

  testWidgets('DeviceTile triggers onRemove callback', (tester) async {
    bool removed = false;
    final device = Device(
      deviceId: 'd1',
      deviceName: 'My PC',
      platform: 'linux',
    );

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: DeviceTile(
            device: device,
            onRemove: () => removed = true,
          ),
        ),
      ),
    );

    // Tap the more button
    await tester.tap(find.byIcon(Icons.more_vert));
    await tester.pumpAndSettle();

    // Tap "移除设备"
    await tester.tap(find.text('移除设备'));
    await tester.pumpAndSettle();

    expect(removed, isTrue);
  });
}
