import 'package:fixnum/fixnum.dart';
import 'package:grpc/grpc.dart';
import 'package:echo_vault_app/core/grpc/client.dart';
import 'package:echo_vault_app/models/generated/echo_vault/song/v1/song_service.pbgrpc.dart';
import 'package:echo_vault_app/models/generated/echo_vault/common/v1/types.pb.dart';

/// gRPC SongService 抽象接口（生产用 SongServiceClient，测试用 mock）
abstract class SongService {
  Future<CheckSongsByHashResponse> checkSongsByHash(CheckSongsByHashRequest request);
  Future<PublishSongResponse> publishSong(PublishSongRequest request);
  Future<SearchSongsResponse> searchSongs(SearchSongsRequest request);
  Future<ListSongsResponse> listSongs(ListSongsRequest request);
  Future<GetSongResponse> getSong(GetSongRequest request);
}

/// 生产实现 — 直接使用生成的 SongServiceClient
class ChannelSongService implements SongService {
  final SongServiceClient _client;
  ChannelSongService(ClientChannel channel) : _client = SongServiceClient(channel);

  @override Future<CheckSongsByHashResponse> checkSongsByHash(CheckSongsByHashRequest r) => _client.checkSongsByHash(r);
  @override Future<PublishSongResponse> publishSong(PublishSongRequest r) => _client.publishSong(r);
  @override Future<SearchSongsResponse> searchSongs(SearchSongsRequest r) => _client.searchSongs(r);
  @override Future<ListSongsResponse> listSongs(ListSongsRequest r) => _client.listSongs(r);
  @override Future<GetSongResponse> getSong(GetSongRequest r) => _client.getSong(r);
}

class CheckResult {
  final String fileHash;
  final bool exists;
  final Song? song;
  const CheckResult({required this.fileHash, required this.exists, this.song});
}

class SongRepositoryException implements Exception {
  final String message;
  final int? grpcCode;
  const SongRepositoryException(this.message, {this.grpcCode});
  @override String toString() => 'SongRepositoryException: $message${grpcCode != null ? " (code: $grpcCode)" : ""}';
}

class SongRepository {
  final SongService _svc;

  SongRepository({required GrpcClientManager manager}) : _svc = ChannelSongService(manager.channel);
  SongRepository.withService(this._svc);

  Future<List<CheckResult>> checkSongsByHash({required String deviceId, required List<String> fileHashes}) async {
    try {
      final r = await _svc.checkSongsByHash(CheckSongsByHashRequest(deviceId: deviceId, fileHashes: fileHashes));
      return r.results.map((r) => CheckResult(fileHash: r.fileHash, exists: r.exists, song: r.hasSong() ? r.song : null)).toList();
    } on GrpcError catch (e) { throw SongRepositoryException(e.message ?? '', grpcCode: e.code); }
  }

  Future<Song> publishSong({
    required String fileHash, required String title, required String artist,
    String? album, String? genre, int trackNumber = 0, int discNumber = 0,
    int year = 0, required String fileName, required int fileSize, required String mimeType,
  }) async {
    try {
      return (await _svc.publishSong(PublishSongRequest(
        fileHash: fileHash, title: title, artist: artist, album: album ?? '',
        genre: genre ?? '', trackNumber: trackNumber, discNumber: discNumber,
        year: year, fileName: fileName, fileSize: Int64(fileSize), mimeType: mimeType,
      ))).song;
    } on GrpcError catch (e) { throw SongRepositoryException(e.message ?? '', grpcCode: e.code); }
  }

  Future<List<Song>> searchSongs(String query, {int pageSize = 20}) async {
    try {
      return (await _svc.searchSongs(SearchSongsRequest(query: query, pagination: PaginationRequest(pageSize: pageSize)))).songs;
    } on GrpcError catch (e) { throw SongRepositoryException(e.message ?? '', grpcCode: e.code); }
  }

  Future<List<Song>> listSongs({int pageSize = 20}) async {
    try {
      return (await _svc.listSongs(ListSongsRequest(pagination: PaginationRequest(pageSize: pageSize)))).songs;
    } on GrpcError catch (e) { throw SongRepositoryException(e.message ?? '', grpcCode: e.code); }
  }

  Future<Song> getSong(String id) async {
    try {
      return (await _svc.getSong(GetSongRequest(id: id))).song;
    } on GrpcError catch (e) { throw SongRepositoryException(e.message ?? '', grpcCode: e.code); }
  }
}
