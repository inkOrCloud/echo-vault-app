import 'dart:async';
import 'package:flutter_test/flutter_test.dart';
import 'package:grpc/grpc.dart';
import 'package:fixnum/fixnum.dart';
import 'package:echo_vault_app/core/grpc/grpc_rpc_client.dart';
import 'package:echo_vault_app/features/library/services/song_repository.dart';
import 'package:echo_vault_app/models/generated/echo_vault/song/v1/song_service.pb.dart';

class _MockGrpcClient {
  final Map<String, List<int> Function()> _responses = {};
  bool throwOnCall = false;

  void when(String method, List<int> Function() responseBuilder) { _responses[method] = responseBuilder; }

  Future<List<int>> unaryCallRaw({required String servicePath, required String methodName, required List<int> requestBytes}) async {
    if (throwOnCall) throw GrpcError.unavailable('server down');
    final builder = _responses[methodName];
    if (builder == null) throw GrpcError.unimplemented('No mock for $methodName');
    return builder();
  }
}

void main() {
  late _MockGrpcClient mockClient;
  late SongRepository repository;

  setUp(() {
    mockClient = _MockGrpcClient();
    repository = SongRepository.withClient(mockClient as dynamic, '/echo_vault.song.v1.SongService');
  });

  group('checkSongsByHash', () {
    test('returns mapping of hash to existence', () async {
      mockClient.when('CheckSongsByHash', () {
        return CheckSongsByHashResponse(results: [
          CheckSongsByHashResponse_Result(fileHash: 'hash1', exists: true, song: Song(id: 'song-1', title: 'Known Song', artist: 'A')),
          CheckSongsByHashResponse_Result(fileHash: 'hash2', exists: false),
        ]).writeToBuffer();
      });
      final results = await repository.checkSongsByHash(deviceId: 'dev-1', fileHashes: ['hash1', 'hash2']);
      expect(results.length, 2);
      expect(results[0].exists, isTrue);
      expect(results[0].song!.id, 'song-1');
      expect(results[1].exists, isFalse);
    });

    test('throws SongRepositoryException on gRPC error', () async {
      mockClient.throwOnCall = true;
      expect(() => repository.checkSongsByHash(deviceId: 'dev-1', fileHashes: ['hash1']), throwsA(isA<SongRepositoryException>()));
    });
  });

  group('publishSong', () {
    test('returns published song', () async {
      mockClient.when('PublishSong', () => PublishSongResponse(song: Song(id: 'new-song', title: 'My Song', artist: 'Me')).writeToBuffer());
      final song = await repository.publishSong(fileHash: 'hash1', title: 'My Song', artist: 'Me', fileName: 'test.mp3', fileSize: 1024, mimeType: 'audio/mpeg');
      expect(song.id, 'new-song');
      expect(song.title, 'My Song');
    });
  });

  group('searchSongs', () {
    test('returns matching songs', () async {
      mockClient.when('SearchSongs', () => SearchSongsResponse(songs: [Song(id: 's1', title: 'Hello'), Song(id: 's2', title: 'World')]).writeToBuffer());
      final songs = await repository.searchSongs('Hello');
      expect(songs.length, 2);
    });
  });
}
