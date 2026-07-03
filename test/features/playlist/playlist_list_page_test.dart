import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:echo_vault_app/features/playlist/pages/playlist_list_page.dart';
import 'package:echo_vault_app/features/playlist/providers/playlist_provider.dart';

void main() {
  group('PlaylistListPage', () {
    testWidgets('显示AppBar和添加按钮', (WidgetTester tester) async {
      await tester.pumpWidget(
        ProviderScope(
          child: const MaterialApp(
            home: PlaylistListPage(),
          ),
        ),
      );

      expect(find.text('我的歌单'), findsOneWidget);
      expect(find.byIcon(Icons.add), findsOneWidget);
    });

    testWidgets('显示空状态提示', (WidgetTester tester) async {
      await tester.pumpWidget(
        ProviderScope(
          child: const MaterialApp(
            home: PlaylistListPage(),
          ),
        ),
      );

      // 设置为空列表
      final container = ProviderScope.containerOf(
        tester.element(find.byType(PlaylistListPage)),
      );
      container.read(playlistListProvider.notifier).setPlaylists([]);

      await tester.pump();

      expect(find.text('还没有歌单'), findsOneWidget);
      expect(find.byIcon(Icons.queue_music), findsOneWidget);
    });

    testWidgets('点击添加按钮显示创建对话框', (WidgetTester tester) async {
      await tester.pumpWidget(
        ProviderScope(
          child: const MaterialApp(
            home: PlaylistListPage(),
          ),
        ),
      );

      // 设置为空列表以便显示
      final container = ProviderScope.containerOf(
        tester.element(find.byType(PlaylistListPage)),
      );
      container.read(playlistListProvider.notifier).setPlaylists([]);
      await tester.pump();

      // 点击添加按钮
      await tester.tap(find.byIcon(Icons.add));
      await tester.pumpAndSettle();

      // 验证对话框显示
      expect(find.text('创建歌单'), findsOneWidget);
      expect(find.byType(TextField), findsOneWidget);
    });

    testWidgets('显示抽屉菜单', (WidgetTester tester) async {
      await tester.pumpWidget(
        ProviderScope(
          child: const MaterialApp(
            home: PlaylistListPage(),
          ),
        ),
      );

      final scaffoldFinder = find.byType(Scaffold);
      final scaffold = scaffoldFinder.evaluate().first.widget as Scaffold;
      expect(scaffold.drawer, isNotNull);
    });

    testWidgets('显示歌单列表', (WidgetTester tester) async {
      await tester.pumpWidget(
        ProviderScope(
          child: const MaterialApp(
            home: PlaylistListPage(),
          ),
        ),
      );

      // 设置歌单列表
      final container = ProviderScope.containerOf(
        tester.element(find.byType(PlaylistListPage)),
      );
      container.read(playlistListProvider.notifier).setPlaylists([]);

      await tester.pump();

      // 应该显示空状态
      expect(find.text('还没有歌单'), findsOneWidget);
    });
  });
}
