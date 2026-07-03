import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:echo_vault_app/features/playlist/widgets/playlist_tile.dart';
import 'package:echo_vault_app/models/generated/echo_vault/playlist/v1/playlist_service.pb.dart';

void main() {
  group('PlaylistTile', () {
    testWidgets('显示歌单名称和歌曲数量', (WidgetTester tester) async {
      final playlist = Playlist()
        ..id = '1'
        ..name = '我的歌单'
        ..songCount = 10;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: PlaylistTile(playlist: playlist),
          ),
        ),
      );

      expect(find.text('我的歌单'), findsOneWidget);
      expect(find.text('10 首歌曲'), findsOneWidget);
    });

    testWidgets('显示歌单名称首字母作为头像', (WidgetTester tester) async {
      final playlist = Playlist()
        ..id = '1'
        ..name = '测试歌单'
        ..songCount = 5;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: PlaylistTile(playlist: playlist),
          ),
        ),
      );

      expect(find.text('测'), findsOneWidget);
    });

    testWidgets('点击触发 onTap 回调', (WidgetTester tester) async {
      bool tapped = false;
      final playlist = Playlist()
        ..id = '1'
        ..name = '可点击歌单'
        ..songCount = 3;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: PlaylistTile(
              playlist: playlist,
              onTap: () => tapped = true,
            ),
          ),
        ),
      );

      await tester.tap(find.text('可点击歌单'));
      expect(tapped, true);
    });

    testWidgets('PopupMenu 显示删除选项', (WidgetTester tester) async {
      final playlist = Playlist()
        ..id = '1'
        ..name = '可删除歌单'
        ..songCount = 2;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: PlaylistTile(playlist: playlist),
          ),
        ),
      );

      // 点击PopupMenu按钮
      await tester.tap(find.byType(PopupMenuButton<String>));
      await tester.pumpAndSettle();

      expect(find.text('删除'), findsOneWidget);
    });
  });
}
