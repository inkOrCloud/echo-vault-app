import 'package:echo_vault_app/models/generated/echo_vault/playlist/v1/playlist_service.pbgrpc.dart';
import 'package:echo_vault_app/core/grpc/client.dart';
import 'package:echo_vault_app/models/generated/echo_vault/common/v1/types.pb.dart' as common;

class PlaylistRepository {
  final GrpcClientManager _clientManager;

  PlaylistRepository(this._clientManager);

  PlaylistServiceClient get _client => PlaylistServiceClient(_clientManager.channel);

  Future<List<Playlist>> listPlaylists({int pageSize = 50, String pageToken = ''}) async {
    final request = ListPlaylistsRequest()
      ..pagination = (common.PaginationRequest()
        ..pageSize = pageSize
        ..pageToken = pageToken);
    final response = await _client.listPlaylists(request);
    return response.playlists.toList();
  }

  Future<Playlist> createPlaylist({
    required String name,
    String description = '',
    bool isPublic = false,
  }) async {
    final request = CreatePlaylistRequest()
      ..name = name
      ..description = description
      ..isPublic = isPublic;
    final response = await _client.createPlaylist(request);
    return response.playlist;
  }

  Future<Playlist> getPlaylist(String id) async {
    final request = GetPlaylistRequest()..id = id;
    final response = await _client.getPlaylist(request);
    return response.playlist;
  }

  Future<Playlist> updatePlaylist({
    required String id,
    String? name,
    String? description,
    bool? isPublic,
  }) async {
    final request = UpdatePlaylistRequest()..id = id;
    if (name != null) request.name = name;
    if (description != null) request.description = description;
    if (isPublic != null) request.isPublic = isPublic;
    final response = await _client.updatePlaylist(request);
    return response.playlist;
  }

  Future<void> deletePlaylist(String id) async {
    final request = DeletePlaylistRequest()..id = id;
    await _client.deletePlaylist(request);
  }

  Future<List<PlaylistSong>> listPlaylistSongs(String playlistId) async {
    final request = ListPlaylistSongsRequest()..playlistId = playlistId;
    final response = await _client.listPlaylistSongs(request);
    return response.songs.toList();
  }

  Future<PlaylistSong> addSong({
    required String playlistId,
    required String songId,
    int position = -1,
  }) async {
    final request = AddSongRequest()
      ..playlistId = playlistId
      ..songId = songId
      ..position = position;
    final response = await _client.addSong(request);
    return response.playlistSong;
  }

  Future<void> removeSong({
    required String playlistId,
    required String songId,
  }) async {
    final request = RemoveSongRequest()
      ..playlistId = playlistId
      ..songId = songId;
    await _client.removeSong(request);
  }

  Future<void> reorderSongs({
    required String playlistId,
    required List<String> songIds,
  }) async {
    final request = ReorderSongsRequest()
      ..playlistId = playlistId
      ..songIds.addAll(songIds);
    await _client.reorderSongs(request);
  }
}
