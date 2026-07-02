import 'package:grpc/grpc.dart';
import 'package:echo_vault_app/core/grpc/client.dart';
import 'package:echo_vault_app/core/grpc/grpc_rpc_client.dart';
import 'package:echo_vault_app/core/grpc/proto_codec.dart';
import 'package:echo_vault_app/models/generated/echo_vault/song/v1/song_service.pb.dart';

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
  @override
  String toString() => 'SongRepositoryException: $message${grpcCode != null ? " (code: $grpcCode)" : ""}';
}

class SongRepository {
  final DirectGrpcClient _client;
  final String _svcPath;

  SongRepository({required GrpcClientManager manager})
      : _client = manager.directClient!,
        _svcPath = manager.songServicePath;

  SongRepository.withClient(this._client, this._svcPath);

  Future<List<CheckResult>> checkSongsByHash({
    required String deviceId,
    required List<String> fileHashes,
  }) async {
    try {
      final req = CheckSongsByHashRequest(deviceId: deviceId, fileHashes: fileHashes);
      final reqBytes = ProtoCodec.encodeCheckSongsByHashRequest(req);
      final respBytes = await _client.unaryCallRaw(
        servicePath: _svcPath, methodName: 'CheckSongsByHash', requestBytes: reqBytes,
      );
      final resp = ProtoCodec.decodeCheckSongsByHashResponse(respBytes);
      return resp.results.map((r) => CheckResult(fileHash: r.fileHash, exists: r.exists, song: r.song)).toList();
    } on GrpcError catch (e) {
      throw SongRepositoryException(e.message ?? 'unknown error', grpcCode: e.code);
    }
  }

  Future<Song> publishSong({
    required String fileHash, required String title, required String artist,
    String? album, String? genre, int trackNumber = 0, int discNumber = 0,
    int year = 0, required String fileName, required int fileSize, required String mimeType,
  }) async {
    try {
      final req = PublishSongRequest(
        fileHash: fileHash, title: title, artist: artist, album: album ?? '',
        genre: genre ?? '', trackNumber: trackNumber, discNumber: discNumber,
        year: year, fileName: fileName, fileSize: fileSize, mimeType: mimeType,
      );
      final reqBytes = ProtoCodec.encodePublishSongRequest(req);
      final respBytes = await _client.unaryCallRaw(
        servicePath: _svcPath, methodName: 'PublishSong', requestBytes: reqBytes,
      );
      return ProtoCodec.decodePublishSongResponse(respBytes).song;
    } on GrpcError catch (e) {
      throw SongRepositoryException(e.message ?? 'unknown error', grpcCode: e.code);
    }
  }

  Future<List<Song>> searchSongs(String query, {int pageSize = 20}) async {
    try {
      final reqBytes = ProtoCodec.encodeSearchSongsRequest(query, pageSize);
      final respBytes = await _client.unaryCallRaw(
        servicePath: _svcPath, methodName: 'SearchSongs', requestBytes: reqBytes,
      );
      return ProtoCodec.decodeRepeatedSongs(respBytes);
    } on GrpcError catch (e) {
      throw SongRepositoryException(e.message ?? 'unknown error', grpcCode: e.code);
    }
  }

  Future<List<Song>> listSongs({int pageSize = 20}) async {
    try {
      final buf = <int>[];
      var tag = (1 << 3) | 2;
      while (tag >= 0x80) { buf.add((tag & 0x7F) | 0x80); tag >>= 7; }
      buf.add(tag & 0x7F);
      var len = 0;
      var ps = pageSize;
      len = 0; var t = ps; do { len++; t >>= 7; } while (t > 0);
      var tmp = ps;
      while (tmp >= 0x80) { buf.add(0); tmp >>= 7; } // placeholder for tag
      buf.removeRange(buf.length - len, buf.length); // remove bogus
      final inner = <int>[];
      var pv = ps;
      while (pv >= 0x80) { inner.add((pv & 0x7F) | 0x80); pv >>= 7; }
      inner.add(pv & 0x7F);
      tag = (1 << 3) | 2;
      while (tag >= 0x80) { buf.add((tag & 0x7F) | 0x80); tag >>= 7; }
      buf.add(tag & 0x7F);
      len = inner.length;
      while (len >= 0x80) { buf.add((len & 0x7F) | 0x80); len >>= 7; }
      buf.add(len & 0x7F);
      buf.addAll(inner);
      final respBytes = await _client.unaryCallRaw(
        servicePath: _svcPath, methodName: 'ListSongs', requestBytes: buf,
      );
      return ProtoCodec.decodeRepeatedSongs(respBytes);
    } on GrpcError catch (e) {
      throw SongRepositoryException(e.message ?? 'unknown error', grpcCode: e.code);
    }
  }

  Future<Song> getSong(String id) async {
    try {
      final buf = <int>[];
      final idBytes = id.codeUnits;
      var tag = (1 << 3) | 2;
      while (tag >= 0x80) { buf.add((tag & 0x7F) | 0x80); tag >>= 7; }
      buf.add(tag & 0x7F);
      var len = idBytes.length;
      while (len >= 0x80) { buf.add((len & 0x7F) | 0x80); len >>= 7; }
      buf.add(len & 0x7F);
      buf.addAll(idBytes);
      final respBytes = await _client.unaryCallRaw(
        servicePath: _svcPath, methodName: 'GetSong', requestBytes: buf,
      );
      return ProtoCodec.decodeSong(respBytes);
    } on GrpcError catch (e) {
      throw SongRepositoryException(e.message ?? 'unknown error', grpcCode: e.code);
    }
  }
}
