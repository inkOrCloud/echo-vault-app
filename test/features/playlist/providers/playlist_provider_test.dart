import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:echo_vault_app/features/playlist/providers/playlist_provider.dart';
import 'package:echo_vault_app/features/playlist/services/playlist_repository.dart';
import 'package:echo_vault_app/models/generated/echo_vault/playlist/v1/playlist_service.pb.dart';

class MockPlaylistRepository implements PlaylistRepository {
  List<Playlist> playlists = [];
  bool shouldThrow = false;

  @override
  Future<Playlist> createPlaylist({required String name, String? description, bool isPublic = false}) async {
    if (shouldThrow) throw Exception('error');
    final playlist = Playlist(id: 'p${playlists.length + 1}', name: name, description: description ?? '');
    playlists.add(playlist);
    return playlist;
  }

  @override
  Future<void> deletePlaylist(String id) async {
    if (shouldThrow) throw Exception('error');
    playlists.removeWhere((p) => p.id == id);
  }

  @override
  Future<List<Playlist>> listPlaylists({int pageSize = 20}) async {
    if (shouldThrow) throw Exception('error');
    return playlists;
  }

  @override
  Future<Playlist> getPlaylist(String id) async => throw UnimplementedError();

  @override
  Future<Playlist> updatePlaylist({required String id, String? name, String? description, bool? isPublic}) async {
    if (shouldThrow) throw Exception('error');
    final index = playlists.indexWhere((p) => p.id == id);
    if (index == -1) throw Exception('Playlist not found');
    final existing = playlists[index];
    final updated = Playlist(
      id: existing.id,
      name: name ?? existing.name,
      description: description ?? existing.description,
      isPublic: isPublic ?? existing.isPublic,
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
}

void main() {
  late MockPlaylistRepository mockRepo;
  late ProviderContainer container;

  setUp(() {
    mockRepo = MockPlaylistRepository();
    container = ProviderContainer(
      overrides: [
        playlistRepositoryProvider.overrideWithValue(mockRepo),
      ],
    );
  });

  tearDown(() => container.dispose());

  test('loadPlaylists', () async {
    mockRepo.playlists = [Playlist(id: 'p1', name: 'Test')];
    await container.read(playlistProvider.notifier).loadPlaylists();
    expect(container.read(playlistProvider).playlists.length, 1);
  });

  test('createPlaylist', () async {
    await container.read(playlistProvider.notifier).createPlaylist(name: 'New Playlist');
    expect(container.read(playlistProvider).playlists.length, 1);
    expect(container.read(playlistProvider).playlists.first.name, 'New Playlist');
  });

  test('deletePlaylist', () async {
    mockRepo.playlists = [Playlist(id: 'p1', name: 'Test')];
    await container.read(playlistProvider.notifier).loadPlaylists();
    await container.read(playlistProvider.notifier).deletePlaylist('p1');
    expect(container.read(playlistProvider).playlists.length, 0);
  });

  test('setQuery', () async {
    mockRepo.playlists = [
      Playlist(id: 'p1', name: 'Rock Music'),
      Playlist(id: 'p2', name: 'Pop Music'),
    ];
    await container.read(playlistProvider.notifier).loadPlaylists();
    container.read(playlistProvider.notifier).setQuery('rock');
    expect(container.read(playlistProvider).filteredPlaylists.length, 1);
  });

  test('loadPlaylists sets error status on failure', () async {
    mockRepo.shouldThrow = true;
    await container.read(playlistProvider.notifier).loadPlaylists();
    expect(container.read(playlistProvider).status, PlaylistStatus.error);
    expect(container.read(playlistProvider).error, isNotNull);
  });

  test('createPlaylist rethrows on failure', () async {
    mockRepo.playlists = [Playlist(id: 'p1', name: 'Test')];
    await container.read(playlistProvider.notifier).loadPlaylists();
    mockRepo.shouldThrow = true;
    try {
      await container.read(playlistProvider.notifier).createPlaylist(name: 'Test');
      fail('Expected exception');
    } catch (e) {
      expect(e, isA<Exception>());
    }
    expect(container.read(playlistProvider).status, PlaylistStatus.error);
  });

  test('loadPlaylists preserves searchQuery', () async {
    mockRepo.playlists = [Playlist(id: 'p1', name: 'Test')];
    container.read(playlistProvider.notifier).setQuery('test');
    await container.read(playlistProvider.notifier).loadPlaylists();
    expect(container.read(playlistProvider).searchQuery, 'test');
  });

  test('updatePlaylist', () async {
    mockRepo.playlists = [Playlist(id: 'p1', name: 'Original', description: 'desc', isPublic: false)];
    await container.read(playlistProvider.notifier).loadPlaylists();
    await container.read(playlistProvider.notifier).updatePlaylist(
      id: 'p1',
      name: 'Updated',
      isPublic: true,
    );
    final updated = container.read(playlistProvider).playlists.first;
    expect(updated.name, 'Updated');
    expect(updated.description, 'desc');
    expect(updated.isPublic, true);
  });

  test('updatePlaylist rethrows on failure', () async {
    mockRepo.playlists = [Playlist(id: 'p1', name: 'Original')];
    await container.read(playlistProvider.notifier).loadPlaylists();
    mockRepo.shouldThrow = true;
    try {
      await container.read(playlistProvider.notifier).updatePlaylist(id: 'p1', name: 'Updated');
      fail('Expected exception');
    } catch (e) {
      expect(e, isA<Exception>());
    }
    expect(container.read(playlistProvider).status, PlaylistStatus.error);
  });

  test('deletePlaylist rethrows on failure', () async {
    mockRepo.playlists = [Playlist(id: 'p1', name: 'Test')];
    await container.read(playlistProvider.notifier).loadPlaylists();
    mockRepo.shouldThrow = true;
    try {
      await container.read(playlistProvider.notifier).deletePlaylist('p1');
      fail('Expected exception');
    } catch (e) {
      expect(e, isA<Exception>());
    }
    expect(container.read(playlistProvider).status, PlaylistStatus.error);
  });
}
