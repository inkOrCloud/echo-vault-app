import 'package:flutter_test/flutter_test.dart';
import 'package:grpc/grpc.dart';
import 'package:echo_vault_app/features/playlist/services/playlist_repository.dart';
import 'package:echo_vault_app/models/generated/echo_vault/playlist/v1/playlist_service.pb.dart';

class MockPlaylistService implements PlaylistService {
  final Map<String, Object Function()> _handlers = {};
  bool throwOnCall = false;
  void when(String m, Object Function() h) { _handlers[m] = h; }

  @override Future<CreatePlaylistResponse> createPlaylist(CreatePlaylistRequest r) {
    if (throwOnCall) throw GrpcError.unavailable('down');
    return Future.value(_handlers['createPlaylist']!() as CreatePlaylistResponse);
  }
  @override Future<GetPlaylistResponse> getPlaylist(GetPlaylistRequest r) =>
    Future.value(_handlers['getPlaylist']!() as GetPlaylistResponse);
  @override Future<ListPlaylistsResponse> listPlaylists(ListPlaylistsRequest r) =>
    Future.value(_handlers['listPlaylists']!() as ListPlaylistsResponse);
  @override Future<UpdatePlaylistResponse> updatePlaylist(UpdatePlaylistRequest r) =>
    Future.value(_handlers['updatePlaylist']!() as UpdatePlaylistResponse);
  @override Future<DeletePlaylistResponse> deletePlaylist(DeletePlaylistRequest r) =>
    Future.value(_handlers['deletePlaylist']!() as DeletePlaylistResponse);
  @override Future<AddSongResponse> addSong(AddSongRequest r) =>
    Future.value(_handlers['addSong']!() as AddSongResponse);
  @override Future<RemoveSongResponse> removeSong(RemoveSongRequest r) =>
    Future.value(_handlers['removeSong']!() as RemoveSongResponse);
  @override Future<ReorderSongsResponse> reorderSongs(ReorderSongsRequest r) =>
    Future.value(_handlers['reorderSongs']!() as ReorderSongsResponse);
}

void main() {
  late MockPlaylistService mock;
  late PlaylistRepository repo;
  setUp(() { mock = MockPlaylistService(); repo = PlaylistRepository.withService(mock); });

  test('createPlaylist', () async {
    mock.when('createPlaylist', () => CreatePlaylistResponse(playlist: Playlist(id: 'p1', name: 'Test')));
    final p = await repo.createPlaylist(name: 'Test');
    expect(p.id, 'p1');
    expect(p.name, 'Test');
  });

  test('listPlaylists', () async {
    mock.when('listPlaylists', () => ListPlaylistsResponse(playlists: [
      Playlist(id: 'p1', name: 'Playlist 1'),
      Playlist(id: 'p2', name: 'Playlist 2'),
    ]));
    final playlists = await repo.listPlaylists();
    expect(playlists.length, 2);
  });

  test('throws on error', () async {
    mock.throwOnCall = true;
    expect(() => repo.createPlaylist(name: 'Test'), throwsA(isA<PlaylistRepositoryException>()));
  });

  test('addSongToPlaylist', () async {
    mock.when('addSong', () => AddSongResponse(
      playlistSong: PlaylistSong(playlistId: 'p1', songId: 's1', position: 0),
    ));
    final ps = await repo.addSongToPlaylist(playlistId: 'p1', songId: 's1');
    expect(ps.playlistId, 'p1');
    expect(ps.songId, 's1');
  });
}
