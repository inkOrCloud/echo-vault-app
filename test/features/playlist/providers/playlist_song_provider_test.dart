import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:echo_vault_app/features/playlist/providers/playlist_song_provider.dart';
import 'package:echo_vault_app/features/playlist/providers/playlist_provider.dart';
import 'package:echo_vault_app/features/playlist/services/playlist_repository.dart';
import 'package:echo_vault_app/models/generated/echo_vault/playlist/v1/playlist_service.pb.dart';

class MockPlaylistRepositoryForSongs implements PlaylistRepository {
  List<PlaylistSong> playlistSongs = [];

  @override Future<PlaylistSong> addSongToPlaylist({required String playlistId, required String songId, int position = 0}) async {
    return PlaylistSong(playlistId: playlistId, songId: songId, position: position);
  }

  @override Future<void> removeSongFromPlaylist({required String playlistId, required String songId}) async {}

  @override Future<void> reorderSongs({required String playlistId, required List<String> songIds}) async {}

  @override Future<List<PlaylistSong>> listPlaylistSongs({required String playlistId, int pageSize = 100}) async => playlistSongs;

  @override Future<Playlist> createPlaylist({required String name, String? description, bool isPublic = false}) async => throw UnimplementedError();
  @override Future<void> deletePlaylist(String id) async => throw UnimplementedError();
  @override Future<Playlist> getPlaylist(String id) async => throw UnimplementedError();
  @override Future<List<Playlist>> listPlaylists({int pageSize = 20}) async => throw UnimplementedError();
  @override Future<Playlist> updatePlaylist({required String id, String? name, String? description, bool? isPublic}) async => throw UnimplementedError();
}

void main() {
  late MockPlaylistRepositoryForSongs mockRepo;
  late ProviderContainer container;

  setUp(() {
    mockRepo = MockPlaylistRepositoryForSongs();
    container = ProviderContainer(
      overrides: [
        playlistRepositoryProvider.overrideWithValue(mockRepo),
      ],
    );
  });

  tearDown(() => container.dispose());

  test('addSong', () async {
    await container.read(playlistSongProvider('p1').notifier).addSong('s1');
    expect(container.read(playlistSongProvider('p1')).playlistSongs.length, 1);
    expect(container.read(playlistSongProvider('p1')).playlistSongs.first.songId, 's1');
  });

  test('removeSong', () async {
    await container.read(playlistSongProvider('p1').notifier).addSong('s1');
    await container.read(playlistSongProvider('p1').notifier).removeSong('s1');
    expect(container.read(playlistSongProvider('p1')).playlistSongs.length, 0);
  });

  test('reorderSongs', () async {
    await container.read(playlistSongProvider('p1').notifier).addSong('s1');
    await container.read(playlistSongProvider('p1').notifier).addSong('s2');
    await container.read(playlistSongProvider('p1').notifier).reorderSongs(['s2', 's1']);
    final songs = container.read(playlistSongProvider('p1')).playlistSongs;
    expect(songs.length, 2);
    expect(songs[0].songId, 's2');
    expect(songs[1].songId, 's1');
  });

  test('loadSongs', () async {
    mockRepo.playlistSongs = [
      PlaylistSong(playlistId: 'p1', songId: 's1', position: 0),
      PlaylistSong(playlistId: 'p1', songId: 's2', position: 1),
    ];
    await container.read(playlistSongProvider('p1').notifier).loadSongs();
    expect(container.read(playlistSongProvider('p1')).playlistSongs.length, 2);
  });

  test('reorderSongs with unknown song ID skips it', () async {
    await container.read(playlistSongProvider('p1').notifier).addSong('s1');
    await container.read(playlistSongProvider('p1').notifier).addSong('s2');
    await container.read(playlistSongProvider('p1').notifier).reorderSongs(['s2', 'unknown', 's1']);
    final songs = container.read(playlistSongProvider('p1')).playlistSongs;
    expect(songs.length, 2);
    expect(songs[0].songId, 's2');
    expect(songs[1].songId, 's1');
  });

  test('addSong sets error status on failure', () async {
    // Create a mock that throws on addSongToPlaylist
    final failingMock = _FailingPlaylistRepository();
    final failingContainer = ProviderContainer(
      overrides: [
        playlistRepositoryProvider.overrideWithValue(failingMock),
      ],
    );
    
    try {
      await failingContainer.read(playlistSongProvider('p1').notifier).addSong('s1');
      fail('Expected exception');
    } catch (e) {
      expect(e, isA<Exception>());
    }
    expect(failingContainer.read(playlistSongProvider('p1')).status, PlaylistSongStatus.error);
    expect(failingContainer.read(playlistSongProvider('p1')).error, isNotNull);
    failingContainer.dispose();
  });

  test('removeSong sets error status on failure', () async {
    final failingMock = _FailingPlaylistRepository();
    final failingContainer = ProviderContainer(
      overrides: [
        playlistRepositoryProvider.overrideWithValue(failingMock),
      ],
    );
    
    try {
      await failingContainer.read(playlistSongProvider('p1').notifier).removeSong('s1');
      fail('Expected exception');
    } catch (e) {
      expect(e, isA<Exception>());
    }
    expect(failingContainer.read(playlistSongProvider('p1')).status, PlaylistSongStatus.error);
    expect(failingContainer.read(playlistSongProvider('p1')).error, isNotNull);
    failingContainer.dispose();
  });

  test('reorderSongs sets error status on failure', () async {
    final failingMock = _FailingPlaylistRepository();
    final failingContainer = ProviderContainer(
      overrides: [
        playlistRepositoryProvider.overrideWithValue(failingMock),
      ],
    );
    
    try {
      await failingContainer.read(playlistSongProvider('p1').notifier).reorderSongs(['s1']);
      fail('Expected exception');
    } catch (e) {
      expect(e, isA<Exception>());
    }
    expect(failingContainer.read(playlistSongProvider('p1')).status, PlaylistSongStatus.error);
    expect(failingContainer.read(playlistSongProvider('p1')).error, isNotNull);
    failingContainer.dispose();
  });

  test('different playlist instances are independent', () async {
    await container.read(playlistSongProvider('p1').notifier).addSong('s1');
    await container.read(playlistSongProvider('p2').notifier).addSong('s2');
    expect(container.read(playlistSongProvider('p1')).playlistSongs.length, 1);
    expect(container.read(playlistSongProvider('p2')).playlistSongs.length, 1);
    expect(container.read(playlistSongProvider('p1')).playlistSongs.first.songId, 's1');
    expect(container.read(playlistSongProvider('p2')).playlistSongs.first.songId, 's2');
  });
}

class _FailingPlaylistRepository implements PlaylistRepository {
  @override Future<PlaylistSong> addSongToPlaylist({required String playlistId, required String songId, int position = 0}) async => throw Exception('Failed to add song');
  @override Future<void> removeSongFromPlaylist({required String playlistId, required String songId}) async => throw Exception('Failed to remove song');
  @override Future<void> reorderSongs({required String playlistId, required List<String> songIds}) async => throw Exception('Failed to reorder songs');
  @override Future<List<PlaylistSong>> listPlaylistSongs({required String playlistId, int pageSize = 100}) async => throw Exception('Failed to list songs');
  @override Future<Playlist> createPlaylist({required String name, String? description, bool isPublic = false}) async => throw UnimplementedError();
  @override Future<void> deletePlaylist(String id) async => throw UnimplementedError();
  @override Future<Playlist> getPlaylist(String id) async => throw UnimplementedError();
  @override Future<List<Playlist>> listPlaylists({int pageSize = 20}) async => throw UnimplementedError();
  @override Future<Playlist> updatePlaylist({required String id, String? name, String? description, bool? isPublic}) async => throw UnimplementedError();
}
