import 'dart:async';
import 'package:grpc/grpc.dart';
import 'package:fixnum/fixnum.dart';
import 'package:echo_vault_app/core/grpc/client.dart';
import 'package:echo_vault_app/core/grpc/grpc_rpc_client.dart';
import 'package:echo_vault_app/models/generated/echo_vault/song/v1/song_service.pb.dart';
import 'package:echo_vault_app/models/generated/echo_vault/common/v1/types.pb.dart';

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
      final respBytes = await _client.unaryCallRaw(
        servicePath: _svcPath, methodName: 'CheckSongsByHash', requestBytes: req.writeToBuffer(),
      );
      final resp = CheckSongsByHashResponse()..mergeFromBuffer(respBytes);
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
        year: year, fileName: fileName, fileSize: Int64(fileSize), mimeType: mimeType,
      );
      final respBytes = await _client.unaryCallRaw(
        servicePath: _svcPath, methodName: 'PublishSong', requestBytes: req.writeToBuffer(),
      );
      return (PublishSongResponse()..mergeFromBuffer(respBytes)).song;
    } on GrpcError catch (e) {
      throw SongRepositoryException(e.message ?? 'unknown error', grpcCode: e.code);
    }
  }

  Future<List<Song>> searchSongs(String query, {int pageSize = 20}) async {
    try {
      final req = SearchSongsRequest(query: query, pagination: PaginationRequest(pageSize: pageSize));
      final respBytes = await _client.unaryCallRaw(
        servicePath: _svcPath, methodName: 'SearchSongs', requestBytes: req.writeToBuffer(),
      );
      return (SearchSongsResponse()..mergeFromBuffer(respBytes)).songs;
    } on GrpcError catch (e) {
      throw SongRepositoryException(e.message ?? 'unknown error', grpcCode: e.code);
    }
  }

  Future<List<Song>> listSongs({int pageSize = 20}) async {
    try {
      final req = ListSongsRequest(pagination: PaginationRequest(pageSize: pageSize));
      final respBytes = await _client.unaryCallRaw(
        servicePath: _svcPath, methodName: 'ListSongs', requestBytes: req.writeToBuffer(),
      );
      return (ListSongsResponse()..mergeFromBuffer(respBytes)).songs;
    } on GrpcError catch (e) {
      throw SongRepositoryException(e.message ?? 'unknown error', grpcCode: e.code);
    }
  }

  Future<Song> getSong(String id) async {
    try {
      final req = GetSongRequest(id: id);
      final respBytes = await _client.unaryCallRaw(
        servicePath: _svcPath, methodName: 'GetSong', requestBytes: req.writeToBuffer(),
      );
      return (GetSongResponse()..mergeFromBuffer(respBytes)).song;
    } on GrpcError catch (e) {
      throw SongRepositoryException(e.message ?? 'unknown error', grpcCode: e.code);
    }
  }
}
