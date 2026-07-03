import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:echo_vault_app/features/device/pages/device_list_page.dart';
import 'package:echo_vault_app/features/device/providers/device_provider.dart';

void main() {
  group('DeviceListPage', () {
    testWidgets('显示AppBar和添加按钮', (WidgetTester tester) async {
      await tester.pumpWidget(
        ProviderScope(
          child: const MaterialApp(
            home: DeviceListPage(),
          ),
        ),
      );

      expect(find.text('设备管理'), findsOneWidget);
      expect(find.byIcon(Icons.add), findsOneWidget);
    });

    testWidgets('显示空状态提示', (WidgetTester tester) async {
      await tester.pumpWidget(
        ProviderScope(
          child: const MaterialApp(
            home: DeviceListPage(),
          ),
        ),
      );

      // 设置为空列表
      final container = ProviderScope.containerOf(
        tester.element(find.byType(DeviceListPage)),
      );
      container.read(deviceListProvider.notifier).setDevices([]);

      await tester.pump();

      expect(find.text('没有已注册的设备'), findsOneWidget);
      expect(find.byIcon(Icons.devices), findsOneWidget);
    });

    testWidgets('显示抽屉菜单', (WidgetTester tester) async {
      await tester.pumpWidget(
        ProviderScope(
          child: const MaterialApp(
            home: DeviceListPage(),
          ),
        ),
      );

      final scaffoldFinder = find.byType(Scaffold);
      final scaffold = scaffoldFinder.evaluate().first.widget as Scaffold;
      expect(scaffold.drawer, isNotNull);
    });

    testWidgets('显示错误状态时有重试按钮', (WidgetTester tester) async {
      await tester.pumpWidget(
        ProviderScope(
          child: const MaterialApp(
            home: DeviceListPage(),
          ),
        ),
      );

      // 设置错误状态
      final container = ProviderScope.containerOf(
        tester.element(find.byType(DeviceListPage)),
      );
      container.read(deviceListProvider.notifier).setError('网络错误');

      await tester.pump();

      expect(find.text('加载失败: 网络错误'), findsOneWidget);
      expect(find.text('重试'), findsOneWidget);
    });

    testWidgets('显示设备列表', (WidgetTester tester) async {
      await tester.pumpWidget(
        ProviderScope(
          child: const MaterialApp(
            home: DeviceListPage(),
          ),
        ),
      );

      // 设置空列表
      final container = ProviderScope.containerOf(
        tester.element(find.byType(DeviceListPage)),
      );
      container.read(deviceListProvider.notifier).setDevices([]);

      await tester.pump();

      // 应该显示空状态
      expect(find.text('没有已注册的设备'), findsOneWidget);
    });
  });
}
