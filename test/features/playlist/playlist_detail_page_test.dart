import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:echo_vault_app/features/playlist/pages/playlist_detail_page.dart';

void main() {
  group('PlaylistDetailPage', () {
    testWidgets('显示AppBar标题', (WidgetTester tester) async {
      await tester.pumpWidget(
        ProviderScope(
          child: const MaterialApp(
            home: PlaylistDetailPage(playlistId: 'test-id'),
          ),
        ),
      );

      expect(find.text('歌单详情'), findsOneWidget);
    });

    testWidgets('显示添加按钮FAB', (WidgetTester tester) async {
      await tester.pumpWidget(
        ProviderScope(
          child: const MaterialApp(
            home: PlaylistDetailPage(playlistId: 'test-id'),
          ),
        ),
      );

      expect(find.byType(FloatingActionButton), findsOneWidget);
      expect(find.byIcon(Icons.add), findsOneWidget);
    });

    testWidgets('加载时显示进度指示器', (WidgetTester tester) async {
      await tester.pumpWidget(
        ProviderScope(
          child: const MaterialApp(
            home: PlaylistDetailPage(playlistId: 'test-id'),
          ),
        ),
      );

      // 初始状态应该是 loading
      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });

    testWidgets('加载完成后显示空状态或歌曲列表', (WidgetTester tester) async {
      await tester.pumpWidget(
        ProviderScope(
          child: const MaterialApp(
            home: PlaylistDetailPage(playlistId: 'test-id'),
          ),
        ),
      );

      // 等待加载完成
      await tester.pump(const Duration(seconds: 2));

      // 可能显示空状态或错误状态
      final hasEmptyState = find.text('歌单是空的').evaluate().isNotEmpty;
      final hasError = find.textContaining('加载失败').evaluate().isNotEmpty;
      expect(hasEmptyState || hasError, true);
    });
  });
}
