import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:echo_vault_app/features/playlist/widgets/playlist_tile.dart';
import 'package:echo_vault_app/models/generated/echo_vault/playlist/v1/playlist_service.pb.dart';

void main() {
  testWidgets('PlaylistTile displays playlist info', (tester) async {
    final playlist = Playlist(
      id: 'p1',
      name: 'My Playlist',
      description: 'Test description',
      songCount: 10,
    );

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: PlaylistTile(
            playlist: playlist,
            onTap: () {},
          ),
        ),
      ),
    );

    expect(find.text('My Playlist'), findsOneWidget);
    expect(find.text('10 首歌曲'), findsOneWidget);
  });

  testWidgets('PlaylistTile shows default cover when no coverUrl', (tester) async {
    final playlist = Playlist(
      id: 'p1',
      name: 'Test',
      coverUrl: '',
    );

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: PlaylistTile(
            playlist: playlist,
            onTap: () {},
          ),
        ),
      ),
    );

    expect(find.byIcon(Icons.music_note), findsOneWidget);
  });
}
