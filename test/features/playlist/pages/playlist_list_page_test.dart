import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:echo_vault_app/features/playlist/pages/playlist_list_page.dart';
import 'package:echo_vault_app/features/playlist/providers/playlist_provider.dart';
import 'package:echo_vault_app/models/generated/echo_vault/playlist/v1/playlist_service.pb.dart';

class MockPlaylistRepository implements PlaylistRepository {
  List<Playlist> playlists = [];

  @override
  Future<Playlist> createPlaylist({required String name, String? description, bool isPublic = false}) async {
    final playlist = Playlist(id: 'p${playlists.length + 1}', name: name, description: description ?? '');
    playlists.add(playlist);
    return playlist;
  }

  @override
  Future<void> deletePlaylist(String id) async {
    playlists.removeWhere((p) => p.id == id);
  }

  @override
  Future<List<Playlist>> listPlaylists({int pageSize = 20}) async => playlists;

  @override
  Future<Playlist> getPlaylist(String id) async => throw UnimplementedError();

  @override
  Future<Playlist> updatePlaylist({required String id, String? name, String? description, bool? isPublic}) async {
    throw UnimplementedError();
  }

  @override
  Future<PlaylistSong> addSongToPlaylist({required String playlistId, required String songId, int position = 0}) async => throw UnimplementedError();

  @override
  Future<void> removeSongFromPlaylist({required String playlistId, required String songId}) async => throw UnimplementedError();

  @override
  Future<void> reorderSongs({required String playlistId, required List<String> songIds}) async => throw UnimplementedError();

  @override
  Future<List<PlaylistSong>> listPlaylistSongs({required String playlistId, int pageSize = 100}) async => throw UnimplementedError();
}

void main() {
  testWidgets('PlaylistListPage shows empty state', (tester) async {
    final mockRepo = MockPlaylistRepository();

    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          playlistRepositoryProvider.overrideWithValue(mockRepo),
        ],
        child: const MaterialApp(
          home: PlaylistListPage(),
        ),
      ),
    );

    await tester.pumpAndSettle();

    expect(find.text('我的歌单'), findsOneWidget);
    expect(find.text('暂无歌单，点击 + 创建'), findsOneWidget);
  });

  testWidgets('PlaylistListPage shows playlists', (tester) async {
    final mockRepo = MockPlaylistRepository();
    mockRepo.playlists = [
      Playlist(id: 'p1', name: 'Rock Music', songCount: 10),
      Playlist(id: 'p2', name: 'Pop Music', songCount: 20),
    ];

    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          playlistRepositoryProvider.overrideWithValue(mockRepo),
        ],
        child: const MaterialApp(
          home: PlaylistListPage(),
        ),
      ),
    );

    await tester.pumpAndSettle();

    expect(find.text('Rock Music'), findsOneWidget);
    expect(find.text('Pop Music'), findsOneWidget);
  });
}
