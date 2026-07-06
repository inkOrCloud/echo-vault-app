import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:echo_vault_app/features/playlist/widgets/add_song_dialog.dart';
import 'package:echo_vault_app/features/playlist/providers/playlist_provider.dart';
import 'package:echo_vault_app/features/playlist/providers/playlist_song_provider.dart';
import 'package:echo_vault_app/features/playlist/services/playlist_repository.dart';
import 'package:echo_vault_app/features/library/providers/library_provider.dart';
import 'package:echo_vault_app/models/generated/echo_vault/playlist/v1/playlist_service.pb.dart';
import 'package:echo_vault_app/models/generated/echo_vault/song/v1/song_service.pb.dart';

class MockPlaylistRepository implements PlaylistRepository {
  @override
  Future<Playlist> createPlaylist({required String name, String? description, bool isPublic = false}) async => throw UnimplementedError();
  @override
  Future<void> deletePlaylist(String id) async => throw UnimplementedError();
  @override
  Future<Playlist> getPlaylist(String id) async => throw UnimplementedError();
  @override
  Future<List<Playlist>> listPlaylists({int pageSize = 20}) async => [];
  @override
  Future<Playlist> updatePlaylist({required String id, String? name, String? description, bool? isPublic}) async => throw UnimplementedError();
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
  testWidgets('AddSongDialog shows search field and song list', (tester) async {
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          playlistRepositoryProvider.overrideWithValue(MockPlaylistRepository()),
        ],
        child: MaterialApp(
          home: Scaffold(
            body: AddSongDialog(playlistId: 'p1'),
          ),
        ),
      ),
    );

    await tester.pumpAndSettle();

    expect(find.text('添加歌曲'), findsOneWidget);
    expect(find.byType(TextField), findsOneWidget);
  });
}
