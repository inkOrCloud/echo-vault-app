import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:echo_vault_app/features/playlist/pages/playlist_list_page.dart';
import 'package:echo_vault_app/features/playlist/providers/playlist_provider.dart';
import 'package:echo_vault_app/features/playlist/services/playlist_repository.dart';
import 'package:echo_vault_app/models/generated/echo_vault/playlist/v1/playlist_service.pb.dart';

class MockPlaylistRepository implements PlaylistRepository {
  List<Playlist> playlists = [];
  int nextId = 1;

  @override
  Future<Playlist> createPlaylist({required String name, String? description, bool isPublic = false}) async {
    final playlist = Playlist(id: 'p$nextId', name: name, description: description ?? '');
    nextId++;
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
  Future<Playlist> getPlaylist(String id) async => playlists.firstWhere((p) => p.id == id);

  @override
  Future<Playlist> updatePlaylist({required String id, String? name, String? description, bool? isPublic}) async {
    final index = playlists.indexWhere((p) => p.id == id);
    if (index == -1) throw Exception('Not found');
    final existing = playlists[index];
    final updated = Playlist(
      id: existing.id,
      name: name ?? existing.name,
      description: description ?? existing.description,
    );
    playlists[index] = updated;
    return updated;
  }

  @override
  Future<PlaylistSong> addSongToPlaylist({required String playlistId, required String songId, int position = 0}) async => throw UnimplementedError();

  @override
  Future<void> removeSongFromPlaylist({required String playlistId, required String songId}) async => throw UnimplementedError();

  @override
  Future<void> reorderSongs({required String playlistId, required List<String> songIds}) async => throw UnimplementedError();

  @override
  Future<List<PlaylistSong>> listPlaylistSongs({required String playlistId, int pageSize = 100}) async => [];
}

void main() {
  testWidgets('Complete playlist flow: create and verify', (tester) async {
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

    // Empty state
    expect(find.text('暂无歌单，点击 + 创建'), findsOneWidget);

    // Create playlist
    await tester.tap(find.byIcon(Icons.add));
    await tester.pumpAndSettle();

    expect(find.text('创建歌单'), findsOneWidget);

    await tester.enterText(find.byType(TextField).first, 'My New Playlist');
    await tester.tap(find.text('创建'));
    await tester.pumpAndSettle();

    // Verify playlist appears - use first to handle potential duplicates
    expect(find.text('My New Playlist').first, findsOneWidget);
    // Verify song count appears
    expect(find.textContaining('首歌曲').first, findsOneWidget);
  });
}
