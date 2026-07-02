import 'dart:async';
import 'package:flutter_test/flutter_test.dart';
import 'package:grpc/grpc.dart';
import 'package:echo_vault_app/core/grpc/grpc_rpc_client.dart';
import 'package:echo_vault_app/core/grpc/proto_codec.dart';
import 'package:echo_vault_app/features/library/services/song_repository.dart';
import 'package:echo_vault_app/models/generated/echo_vault/song/v1/song_service.pb.dart';

/// 不继承 DirectGrpcClient — 直接实现相同接口用于测试。
class _MockGrpcClient {
  final Map<String, List<int> Function()> _responses = {};
  bool throwOnCall = false;

  void when(String method, List<int> Function() responseBuilder) {
    _responses[method] = responseBuilder;
  }

  Future<List<int>> unaryCallRaw({
    required String servicePath,
    required String methodName,
    required List<int> requestBytes,
  }) async {
    if (throwOnCall) {
      throw GrpcError.unavailable('server down');
    }
    final builder = _responses[methodName];
    if (builder == null) {
      throw GrpcError.unimplemented('No mock for $methodName');
    }
    return builder();
  }
}

/// 测试用 SongRepository — 使用 mock client 而非 DirectGrpcClient
class _TestSongRepository extends SongRepository {
  final _MockGrpcClient _mockClient;
  _TestSongRepository(this._mockClient) : super._fromClient(_mockClient as dynamic, '/echo_vault.song.v1.SongService');
}

void main() {
  late _MockGrpcClient mockClient;
  late SongRepository repository;

  setUp(() {
    mockClient = _MockGrpcClient();

    // 通过构造 withClient 方法注入 mock
    // withClient 接受 DirectGrpcClient，但我们需要传入 mock 对象
    // 由于 Dart 结构类型兼容，使用 dynamic 强制转换
    repository = SongRepository.withClient(
      mockClient as dynamic,
      '/echo_vault.song.v1.SongService',
    );
  });

  group('checkSongsByHash', () {
    test('returns mapping of hash to existence', () async {
      mockClient.when('CheckSongsByHash', () {
        final resp = CheckSongsByHashResponse(results: [
          CheckSongsByHashResponse_Result(
            fileHash: 'hash1', exists: true,
            song: Song(id: 'song-1', title: 'Known Song', artist: 'A'),
          ),
          CheckSongsByHashResponse_Result(fileHash: 'hash2', exists: false),
        ]);
        return ProtoCodec.encodeCheckSongsByHashResponse(resp);
      });

      final results = await repository.checkSongsByHash(
        deviceId: 'dev-1', fileHashes: ['hash1', 'hash2'],
      );
      expect(results.length, 2);
      expect(results[0].exists, isTrue);
      expect(results[0].song!.id, 'song-1');
      expect(results[1].exists, isFalse);
    });

    test('throws SongRepositoryException on gRPC error', () async {
      mockClient.throwOnCall = true;
      expect(
        () => repository.checkSongsByHash(deviceId: 'dev-1', fileHashes: ['hash1']),
        throwsA(isA<SongRepositoryException>()),
      );
    });
  });

  group('publishSong', () {
    test('returns published song', () async {
      mockClient.when('PublishSong', () {
        return ProtoCodec.encodeSong(Song(id: 'new-song', title: 'My Song', artist: 'Me'));
      });
      final song = await repository.publishSong(
        fileHash: 'hash1', title: 'My Song', artist: 'Me',
        fileName: 'test.mp3', fileSize: 1024, mimeType: 'audio/mpeg',
      );
      expect(song.id, 'new-song');
      expect(song.title, 'My Song');
    });
  });

  group('searchSongs', () {
    test('returns matching songs', () async {
      mockClient.when('SearchSongs', () {
        final buf = <int>[];
        for (final song in [Song(id: 's1', title: 'Hello', artist: 'A'), Song(id: 's2', title: 'World', artist: 'B')]) {
          final encoded = ProtoCodec.encodeSong(song);
          var tag = (1 << 3) | 2;
          while (tag >= 0x80) { buf.add((tag & 0x7F) | 0x80); tag >>= 7; }
          buf.add(tag & 0x7F);
          var len = encoded.length;
          while (len >= 0x80) { buf.add((len & 0x7F) | 0x80); len >>= 7; }
          buf.add(len & 0x7F);
          buf.addAll(encoded);
        }
        return buf;
      });
      final songs = await repository.searchSongs('Hello');
      expect(songs.length, 2);
      expect(songs[0].title, 'Hello');
      expect(songs[1].title, 'World');
    });
  });
}
