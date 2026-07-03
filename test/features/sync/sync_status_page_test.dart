import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:echo_vault_app/features/sync/pages/sync_status_page.dart';
import 'package:echo_vault_app/features/sync/providers/sync_provider.dart';

void main() {
  group('SyncStatusPage', () {
    testWidgets('显示页面内容', (WidgetTester tester) async {
      await tester.pumpWidget(
        ProviderScope(
          child: const MaterialApp(
            home: SyncStatusPage(),
          ),
        ),
      );

      // 验证页面基本内容
      expect(find.byType(AppBar), findsOneWidget);
      expect(find.text('待同步变更'), findsOneWidget);
      expect(find.text('已同步变更'), findsOneWidget);
    });

    testWidgets('显示同步说明', (WidgetTester tester) async {
      await tester.pumpWidget(
        ProviderScope(
          child: const MaterialApp(
            home: SyncStatusPage(),
          ),
        ),
      );

      expect(find.text('同步说明'), findsOneWidget);
      expect(find.text('离线时修改会自动缓存'), findsOneWidget);
    });

    testWidgets('显示同步操作选项', (WidgetTester tester) async {
      await tester.pumpWidget(
        ProviderScope(
          child: const MaterialApp(
            home: SyncStatusPage(),
          ),
        ),
      );

      expect(find.text('同步操作'), findsOneWidget);
      expect(find.text('查看冲突'), findsOneWidget);
    });

    testWidgets('空闲状态显示等待同步', (WidgetTester tester) async {
      await tester.pumpWidget(
        ProviderScope(
          child: const MaterialApp(
            home: SyncStatusPage(),
          ),
        ),
      );

      expect(find.text('等待同步'), findsOneWidget);
    });

    testWidgets('同步中状态显示进度', (WidgetTester tester) async {
      await tester.pumpWidget(
        ProviderScope(
          child: const MaterialApp(
            home: SyncStatusPage(),
          ),
        ),
      );

      // 设置同步中状态
      final container = ProviderScope.containerOf(
        tester.element(find.byType(SyncStatusPage)),
      );
      container.read(syncProvider.notifier).setSyncing(pending: 10, synced: 5);

      await tester.pump();

      expect(find.text('同步中 (5/10)'), findsOneWidget);
    });

    testWidgets('完成状态显示已同步', (WidgetTester tester) async {
      await tester.pumpWidget(
        ProviderScope(
          child: const MaterialApp(
            home: SyncStatusPage(),
          ),
        ),
      );

      // 设置完成状态
      final container = ProviderScope.containerOf(
        tester.element(find.byType(SyncStatusPage)),
      );
      container.read(syncProvider.notifier).setCompleted();

      await tester.pump();

      expect(find.byIcon(Icons.check_circle), findsOneWidget);
    });

    testWidgets('错误状态显示错误信息', (WidgetTester tester) async {
      await tester.pumpWidget(
        ProviderScope(
          child: const MaterialApp(
            home: SyncStatusPage(),
          ),
        ),
      );

      // 设置错误状态
      final container = ProviderScope.containerOf(
        tester.element(find.byType(SyncStatusPage)),
      );
      container.read(syncProvider.notifier).setError('网络错误');

      await tester.pump();

      expect(find.text('同步失败'), findsOneWidget);
    });

    testWidgets('显示抽屉菜单', (WidgetTester tester) async {
      await tester.pumpWidget(
        ProviderScope(
          child: const MaterialApp(
            home: SyncStatusPage(),
          ),
        ),
      );

      final scaffoldFinder = find.byType(Scaffold);
      final scaffold = scaffoldFinder.evaluate().first.widget as Scaffold;
      expect(scaffold.drawer, isNotNull);
    });
  });
}
