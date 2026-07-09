import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:echo_vault_app/features/navigation/app_drawer.dart';
import 'package:echo_vault_app/providers/auth_provider.dart';

/// 直接渲染 DrawerController 包裹的 AppDrawer 进行测试
Widget createTestApp() {
  return ProviderScope(
    overrides: [
      authProvider.overrideWith((ref) => AuthNotifier()..setAuthenticated(
        userId: 'u1', username: 'test', token: 'tok',
      )),
    ],
    child: MaterialApp(
      home: Scaffold(
        body: DrawerController(
          alignment: DrawerAlignment.start,
          child: AppDrawer(),
          isDrawerOpen: true,
        ),
      ),
    ),
  );
}

void main() {
  testWidgets('AppDrawer shows all navigation items when open', (tester) async {
    await tester.pumpWidget(createTestApp());
    await tester.pump();

    expect(find.text('我的曲库'), findsOneWidget);
    expect(find.text('我的歌单'), findsOneWidget);
    expect(find.text('设备管理'), findsOneWidget);
    expect(find.text('同步状态'), findsOneWidget);
  });

  testWidgets('AppDrawer shows header', (tester) async {
    await tester.pumpWidget(createTestApp());
    await tester.pump();

    expect(find.text('EchoVault — 音匣'), findsOneWidget);
    expect(find.text('你的私有音乐库'), findsOneWidget);
  });

  testWidgets('AppDrawer shows logout button', (tester) async {
    await tester.pumpWidget(createTestApp());
    await tester.pump();

    expect(find.text('退出登录'), findsOneWidget);
  });
}
