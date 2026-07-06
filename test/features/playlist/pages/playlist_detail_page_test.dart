import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:echo_vault_app/features/playlist/pages/playlist_detail_page.dart';
import 'package:echo_vault_app/features/playlist/providers/playlist_provider.dart';
import 'package:echo_vault_app/features/playlist/services/playlist_repository.dart';
import 'package:echo_vault_app/models/generated/echo_vault/playlist/v1/playlist_service.pb.dart';

class MockPlaylistRepository implements PlaylistRepository {
  List<Playlist> playlists = [];
  List<PlaylistSong> playlistSongs = [];

  @override
  Future<Playlist> createPlaylist({required String name, String? description, bool isPublic = false}) async => throw UnimplementedError();

  @override
  Future<void> deletePlaylist(String id) async => throw UnimplementedError();

  @override
  Future<List<Playlist>> listPlaylists({int pageSize = 20}) async => playlists;

  @override
  Future<Playlist> getPlaylist(String id) async => playlists.firstWhere((p) => p.id == id);

  @override
  Future<Playlist> updatePlaylist({required String id, String? name, String? description, bool? isPublic}) async => throw UnimplementedError();

  @override
  Future<PlaylistSong> addSongToPlaylist({required String playlistId, required String songId, int position = 0}) async {
    final ps = PlaylistSong(playlistId: playlistId, songId: songId, position: playlistSongs.length);
    playlistSongs.add(ps);
    return ps;
  }

  @override
  Future<void> removeSongFromPlaylist({required String playlistId, required String songId}) async {
    playlistSongs.removeWhere((ps) => ps.playlistId == playlistId && ps.songId == songId);
  }

  @override
  Future<void> reorderSongs({required String playlistId, required List<String> songIds}) async => throw UnimplementedError();

  @override
  Future<List<PlaylistSong>> listPlaylistSongs({required String playlistId, int pageSize = 100}) async => 
      playlistSongs.where((ps) => ps.playlistId == playlistId).toList();
}

void main() {
  testWidgets('PlaylistDetailPage shows playlist name and empty state', (tester) async {
    final mockRepo = MockPlaylistRepository();
    mockRepo.playlists = [Playlist(id: 'p1', name: 'Test Playlist', songCount: 0)];

    final container = ProviderContainer(
      overrides: [
        playlistRepositoryProvider.overrideWithValue(mockRepo),
      ],
    );

    // Pre-load playlists
    await container.read(playlistProvider.notifier).loadPlaylists();

    await tester.pumpWidget(
      UncontrolledProviderScope(
        container: container,
        child: const MaterialApp(
          home: PlaylistDetailPage(playlistId: 'p1'),
        ),
      ),
    );

    await tester.pumpAndSettle();

    expect(find.text('Test Playlist'), findsOneWidget);
    expect(find.text('暂无歌曲，点击 + 添加'), findsOneWidget);

    container.dispose();
  });
}
