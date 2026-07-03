import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:echo_vault_app/features/sync/providers/sync_provider.dart';
import 'package:echo_vault_app/features/sync/widgets/sync_status_indicator.dart';

void main() {
  group('SyncStatusIndicator', () {
    testWidgets('空闲状态显示等待同步', (WidgetTester tester) async {
      await tester.pumpWidget(
        ProviderScope(
          child: const MaterialApp(
            home: Scaffold(
              body: SyncStatusIndicator(),
            ),
          ),
        ),
      );

      expect(find.text('等待同步'), findsOneWidget);
      expect(find.byIcon(Icons.sync), findsOneWidget);
    });

    testWidgets('同步中状态显示进度', (WidgetTester tester) async {
      await tester.pumpWidget(
        ProviderScope(
          child: const MaterialApp(
            home: Scaffold(
              body: SyncStatusIndicator(),
            ),
          ),
        ),
      );

      // 设置为同步中状态
      final container = ProviderScope.containerOf(
        tester.element(find.byType(SyncStatusIndicator)),
      );
      container.read(syncProvider.notifier).setSyncing(pending: 10, synced: 5);

      await tester.pump();

      expect(find.text('同步中 (5/10)'), findsOneWidget);
    });

    testWidgets('完成状态显示已同步', (WidgetTester tester) async {
      await tester.pumpWidget(
        ProviderScope(
          child: const MaterialApp(
            home: Scaffold(
              body: SyncStatusIndicator(),
            ),
          ),
        ),
      );

      // 设置为完成状态
      final container = ProviderScope.containerOf(
        tester.element(find.byType(SyncStatusIndicator)),
      );
      container.read(syncProvider.notifier).setSyncing(pending: 10, synced: 10);
      container.read(syncProvider.notifier).setCompleted();

      await tester.pump();

      expect(find.byIcon(Icons.check_circle), findsOneWidget);
    });

    testWidgets('错误状态显示同步失败', (WidgetTester tester) async {
      await tester.pumpWidget(
        ProviderScope(
          child: const MaterialApp(
            home: Scaffold(
              body: SyncStatusIndicator(),
            ),
          ),
        ),
      );

      // 设置为错误状态
      final container = ProviderScope.containerOf(
        tester.element(find.byType(SyncStatusIndicator)),
      );
      container.read(syncProvider.notifier).setError('网络错误');

      await tester.pump();

      expect(find.text('同步失败'), findsOneWidget);
      expect(find.byIcon(Icons.error), findsOneWidget);
    });
  });
}
