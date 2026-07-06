import 'package:grpc/grpc.dart';
import 'package:echo_vault_app/core/grpc/client.dart';
import 'package:echo_vault_app/models/generated/echo_vault/playlist/v1/playlist_service.pb.dart';
import 'package:echo_vault_app/models/generated/echo_vault/playlist/v1/playlist_service.pbgrpc.dart';
import 'package:echo_vault_app/models/generated/echo_vault/common/v1/types.pb.dart';

/// gRPC PlaylistService 抽象接口（生产用 PlaylistServiceClient，测试用 mock）
abstract class PlaylistService {
  Future<CreatePlaylistResponse> createPlaylist(CreatePlaylistRequest request);
  Future<GetPlaylistResponse> getPlaylist(GetPlaylistRequest request);
  Future<ListPlaylistsResponse> listPlaylists(ListPlaylistsRequest request);
  Future<UpdatePlaylistResponse> updatePlaylist(UpdatePlaylistRequest request);
  Future<DeletePlaylistResponse> deletePlaylist(DeletePlaylistRequest request);
  Future<AddSongResponse> addSong(AddSongRequest request);
  Future<RemoveSongResponse> removeSong(RemoveSongRequest request);
  Future<ReorderSongsResponse> reorderSongs(ReorderSongsRequest request);
}

/// 生产实现 — 直接使用生成的 PlaylistServiceClient
class ChannelPlaylistService implements PlaylistService {
  final PlaylistServiceClient _client;
  ChannelPlaylistService(ClientChannel channel) : _client = PlaylistServiceClient(channel);

  @override Future<CreatePlaylistResponse> createPlaylist(CreatePlaylistRequest r) => _client.createPlaylist(r);
  @override Future<GetPlaylistResponse> getPlaylist(GetPlaylistRequest r) => _client.getPlaylist(r);
  @override Future<ListPlaylistsResponse> listPlaylists(ListPlaylistsRequest r) => _client.listPlaylists(r);
  @override Future<UpdatePlaylistResponse> updatePlaylist(UpdatePlaylistRequest r) => _client.updatePlaylist(r);
  @override Future<DeletePlaylistResponse> deletePlaylist(DeletePlaylistRequest r) => _client.deletePlaylist(r);
  @override Future<AddSongResponse> addSong(AddSongRequest r) => _client.addSong(r);
  @override Future<RemoveSongResponse> removeSong(RemoveSongRequest r) => _client.removeSong(r);
  @override Future<ReorderSongsResponse> reorderSongs(ReorderSongsRequest r) => _client.reorderSongs(r);
}

class PlaylistRepositoryException implements Exception {
  final String message;
  final int? grpcCode;
  const PlaylistRepositoryException(this.message, {this.grpcCode});
  @override String toString() => 'PlaylistRepositoryException: $message${grpcCode != null ? " (code: $grpcCode)" : ""}';
}

class PlaylistRepository {
  final PlaylistService _svc;

  PlaylistRepository({required GrpcClientManager manager}) : _svc = ChannelPlaylistService(manager.channel);
  PlaylistRepository.withService(this._svc);

  Future<Playlist> createPlaylist({
    required String name,
    String? description,
    bool isPublic = false,
  }) async {
    try {
      return (await _svc.createPlaylist(CreatePlaylistRequest(
        name: name,
        description: description ?? '',
        isPublic: isPublic,
      ))).playlist;
    } on GrpcError catch (e) { throw PlaylistRepositoryException(e.message ?? '', grpcCode: e.code); }
  }

  Future<Playlist> getPlaylist(String id) async {
    try {
      return (await _svc.getPlaylist(GetPlaylistRequest(id: id))).playlist;
    } on GrpcError catch (e) { throw PlaylistRepositoryException(e.message ?? '', grpcCode: e.code); }
  }

  Future<List<Playlist>> listPlaylists({int pageSize = 20}) async {
    try {
      return (await _svc.listPlaylists(ListPlaylistsRequest(
        pagination: PaginationRequest(pageSize: pageSize),
      ))).playlists;
    } on GrpcError catch (e) { throw PlaylistRepositoryException(e.message ?? '', grpcCode: e.code); }
  }

  Future<Playlist> updatePlaylist({
    required String id,
    String? name,
    String? description,
    bool? isPublic,
  }) async {
    try {
      return (await _svc.updatePlaylist(UpdatePlaylistRequest(
        id: id,
        name: name ?? '',
        description: description ?? '',
        isPublic: isPublic ?? false,
      ))).playlist;
    } on GrpcError catch (e) { throw PlaylistRepositoryException(e.message ?? '', grpcCode: e.code); }
  }

  Future<void> deletePlaylist(String id) async {
    try {
      await _svc.deletePlaylist(DeletePlaylistRequest(id: id));
    } on GrpcError catch (e) { throw PlaylistRepositoryException(e.message ?? '', grpcCode: e.code); }
  }

  Future<PlaylistSong> addSongToPlaylist({
    required String playlistId,
    required String songId,
    int position = 0,
  }) async {
    try {
      return (await _svc.addSong(AddSongRequest(
        playlistId: playlistId,
        songId: songId,
        position: position,
      ))).playlistSong;
    } on GrpcError catch (e) { throw PlaylistRepositoryException(e.message ?? '', grpcCode: e.code); }
  }

  Future<void> removeSongFromPlaylist({
    required String playlistId,
    required String songId,
  }) async {
    try {
      await _svc.removeSong(RemoveSongRequest(
        playlistId: playlistId,
        songId: songId,
      ));
    } on GrpcError catch (e) { throw PlaylistRepositoryException(e.message ?? '', grpcCode: e.code); }
  }

  Future<void> reorderSongs({
    required String playlistId,
    required List<String> songIds,
  }) async {
    try {
      await _svc.reorderSongs(ReorderSongsRequest(
        playlistId: playlistId,
        songIds: songIds,
      ));
    } on GrpcError catch (e) { throw PlaylistRepositoryException(e.message ?? '', grpcCode: e.code); }
  }
}
