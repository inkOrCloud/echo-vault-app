import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:echo_vault_app/features/device/widgets/device_tile.dart';
import 'package:echo_vault_app/models/generated/echo_vault/user/v1/user_service.pb.dart';

void main() {
  group('DeviceTile', () {
    testWidgets('显示设备名称和平台', (WidgetTester tester) async {
      final device = Device()
        ..deviceId = 'd1'
        ..deviceName = '我的电脑'
        ..platform = 'windows'
        ..osVersion = 'Windows 11';

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: DeviceTile(device: device),
          ),
        ),
      );

      expect(find.text('我的电脑'), findsOneWidget);
      expect(find.text('windows • Windows 11'), findsOneWidget);
    });

    testWidgets('当前设备显示标签', (WidgetTester tester) async {
      final device = Device()
        ..deviceId = 'd1'
        ..deviceName = '当前设备'
        ..platform = 'linux';

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: DeviceTile(
              device: device,
              isCurrentDevice: true,
            ),
          ),
        ),
      );

      // 应该有两个"当前设备"文本：一个是设备名称，一个是标签
      expect(find.text('当前设备'), findsNWidgets(2));
    });

    testWidgets('非当前设备显示删除按钮', (WidgetTester tester) async {
      final device = Device()
        ..deviceId = 'd1'
        ..deviceName = '其他设备'
        ..platform = 'macos';

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: DeviceTile(
              device: device,
              isCurrentDevice: false,
            ),
          ),
        ),
      );

      expect(find.byIcon(Icons.delete_outline), findsOneWidget);
    });

    testWidgets('点击删除按钮触发回调', (WidgetTester tester) async {
      bool deleted = false;
      final device = Device()
        ..deviceId = 'd1'
        ..deviceName = '可删除设备'
        ..platform = 'ios';

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: DeviceTile(
              device: device,
              isCurrentDevice: false,
              onDelete: () => deleted = true,
            ),
          ),
        ),
      );

      await tester.tap(find.byIcon(Icons.delete_outline));
      expect(deleted, true);
    });

    testWidgets('Windows 设备显示正确图标', (WidgetTester tester) async {
      final device = Device()
        ..deviceId = 'd1'
        ..deviceName = 'Windows 电脑'
        ..platform = 'windows';

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: DeviceTile(device: device),
          ),
        ),
      );

      expect(find.byIcon(Icons.desktop_windows), findsOneWidget);
    });

    testWidgets('iOS 设备显示正确图标', (WidgetTester tester) async {
      final device = Device()
        ..deviceId = 'd1'
        ..deviceName = 'iPhone'
        ..platform = 'ios';

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: DeviceTile(device: device),
          ),
        ),
      );

      expect(find.byIcon(Icons.phone_iphone), findsOneWidget);
    });
  });
}
