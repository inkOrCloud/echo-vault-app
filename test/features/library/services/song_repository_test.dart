import 'package:flutter_test/flutter_test.dart';
import 'package:grpc/grpc.dart';
import 'package:echo_vault_app/features/library/services/song_repository.dart';
import 'package:echo_vault_app/models/generated/echo_vault/song/v1/song_service.pb.dart';

class MockSongService implements SongService {
  final Map<String, Object Function()> _handlers = {};
  bool throwOnCall = false;
  void when(String m, Object Function() h) { _handlers[m] = h; }

  @override Future<CheckSongsByHashResponse> checkSongsByHash(CheckSongsByHashRequest r) {
    if (throwOnCall) throw GrpcError.unavailable('down');
    return Future.value(_handlers['checkSongsByHash']!() as CheckSongsByHashResponse);
  }
  @override Future<PublishSongResponse> publishSong(PublishSongRequest r) =>
    Future.value(_handlers['publishSong']!() as PublishSongResponse);
  @override Future<SearchSongsResponse> searchSongs(SearchSongsRequest r) =>
    Future.value(_handlers['searchSongs']!() as SearchSongsResponse);
  @override Future<ListSongsResponse> listSongs(ListSongsRequest r) => Future.value(ListSongsResponse());
  @override Future<GetSongResponse> getSong(GetSongRequest r) => Future.value(GetSongResponse());
}

void main() {
  late MockSongService mock;
  late SongRepository repo;
  setUp(() { mock = MockSongService(); repo = SongRepository.withService(mock); });

  test('checkSongsByHash', () async {
    mock.when('checkSongsByHash', () => CheckSongsByHashResponse(results: [
      CheckSongsByHashResponse_Result(fileHash: 'h1', exists: true, song: Song(id: 's1', title: 'T')),
      CheckSongsByHashResponse_Result(fileHash: 'h2', exists: false),
    ]));
    final r = await repo.checkSongsByHash(deviceId: 'd', fileHashes: ['h1','h2']);
    expect(r.length, 2); expect(r[0].exists, isTrue); expect(r[1].exists, isFalse);
  });
  test('throws on error', () async {
    mock.throwOnCall = true;
    expect(() => repo.checkSongsByHash(deviceId: 'd', fileHashes: ['h']), throwsA(isA<SongRepositoryException>()));
  });
  test('publishSong', () async {
    mock.when('publishSong', () => PublishSongResponse(song: Song(id: 'n', title: 'T', artist: 'A')));
    final s = await repo.publishSong(fileHash: 'h', title: 'T', artist: 'A', fileName: 'f.mp3', fileSize: 100, mimeType: 'audio/mpeg');
    expect(s.id, 'n');
  });
  test('searchSongs', () async {
    mock.when('searchSongs', () => SearchSongsResponse(songs: [Song(id: 's1', title: 'Hello')]));
    expect((await repo.searchSongs('Hello')).length, 1);
  });
}
