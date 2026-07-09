import 'package:flutter_test/flutter_test.dart';
import 'package:fixnum/fixnum.dart';
import 'package:echo_vault_app/features/playlist/models/playlist_model.dart';
import 'package:echo_vault_app/features/playlist/models/playlist_song_model.dart';
import 'package:echo_vault_app/models/generated/echo_vault/playlist/v1/playlist_service.pb.dart';
import 'package:echo_vault_app/models/generated/google/protobuf/timestamp.pb.dart';

void main() {
  test('PlaylistModel fromProto', () {
    final now = DateTime.now();
    final proto = Playlist(
      id: 'p1',
      name: 'Test Playlist',
      description: 'A test playlist',
      type: Playlist_Type.TYPE_USER,
      ownerId: 'u1',
      isPublic: true,
      songCount: 5,
      version: Int64(1),
      createdAt: Timestamp.fromDateTime(now),
      updatedAt: Timestamp.fromDateTime(now),
    );

    final model = PlaylistModel.fromProto(proto);
    expect(model.id, 'p1');
    expect(model.name, 'Test Playlist');
    expect(model.description, 'A test playlist');
    expect(model.type, Playlist_Type.TYPE_USER);
    expect(model.ownerId, 'u1');
    expect(model.isPublic, isTrue);
    expect(model.songCount, 5);
    expect(model.version, 1);
  });

  test('PlaylistModel toProto', () {
    final now = DateTime.now();
    final model = PlaylistModel(
      id: 'p1',
      name: 'Test Playlist',
      ownerId: 'u1',
      createdAt: now,
      updatedAt: now,
    );

    final proto = model.toProto();
    expect(proto.id, 'p1');
    expect(proto.name, 'Test Playlist');
    expect(proto.ownerId, 'u1');
    expect(proto.version, Int64(0));
  });

  test('PlaylistModel fromProto with empty description and coverUrl', () {
    final now = DateTime.now();
    final proto = Playlist(
      id: 'p2',
      name: 'Empty Fields',
      description: '',
      coverUrl: '',
      type: Playlist_Type.TYPE_FAVORITE,
      ownerId: 'u2',
      isPublic: false,
      songCount: 0,
      version: Int64(0),
      createdAt: Timestamp.fromDateTime(now),
      updatedAt: Timestamp.fromDateTime(now),
    );

    final model = PlaylistModel.fromProto(proto);
    expect(model.description, isNull);
    expect(model.coverUrl, isNull);
  });

  test('PlaylistModel copyWith', () {
    final now = DateTime.now();
    final model = PlaylistModel(
      id: 'p1',
      name: 'Test Playlist',
      ownerId: 'u1',
      createdAt: now,
      updatedAt: now,
    );

    final updated = model.copyWith(name: 'Updated Name');
    expect(updated.id, 'p1');
    expect(updated.name, 'Updated Name');
    expect(updated.ownerId, 'u1');
  });

  test('PlaylistModel copyWith clearDescription', () {
    final model = PlaylistModel(
      id: 'p1',
      name: 'Test',
      description: 'Desc',
      ownerId: 'u1',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    );
    final cleared = model.copyWith(clearDescription: true);
    expect(cleared.description, isNull);
  });

  test('PlaylistModel copyWith clearCoverUrl', () {
    final model = PlaylistModel(
      id: 'p1',
      name: 'Test',
      coverUrl: 'url',
      ownerId: 'u1',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    );
    final cleared = model.copyWith(clearCoverUrl: true);
    expect(cleared.coverUrl, isNull);
  });

  test('PlaylistSongModel fromProto', () {
    final now = DateTime.now().toUtc();
    final proto = PlaylistSong(
      playlistId: 'p1',
      songId: 's1',
      position: 5,
      addedAt: Timestamp.fromDateTime(now),
    );

    final model = PlaylistSongModel.fromProto(proto);
    expect(model.playlistId, 'p1');
    expect(model.songId, 's1');
    expect(model.position, 5);
    expect(model.addedAt.toUtc(), now);
  });

  test('PlaylistSongModel toProto', () {
    final now = DateTime.now().toUtc();
    final model = PlaylistSongModel(
      playlistId: 'p1',
      songId: 's1',
      position: 5,
      addedAt: now,
    );

    final proto = model.toProto();
    expect(proto.playlistId, 'p1');
    expect(proto.songId, 's1');
    expect(proto.position, 5);
  });

  test('PlaylistModel roundtrip fromProto → toProto → fromProto', () {
    final original = PlaylistModel(
      id: 'p1',
      name: 'Test',
      description: 'Desc',
      coverUrl: 'url',
      type: Playlist_Type.TYPE_USER,
      ownerId: 'u1',
      isPublic: true,
      songCount: 5,
      version: 3,
      createdAt: DateTime.utc(2026, 1, 1),
      updatedAt: DateTime.utc(2026, 1, 2),
    );
    final roundtripped = PlaylistModel.fromProto(original.toProto());
    expect(roundtripped.id, original.id);
    expect(roundtripped.name, original.name);
    expect(roundtripped.description, original.description);
    expect(roundtripped.coverUrl, original.coverUrl);
    expect(roundtripped.type, original.type);
    expect(roundtripped.ownerId, original.ownerId);
    expect(roundtripped.isPublic, original.isPublic);
    expect(roundtripped.songCount, original.songCount);
    expect(roundtripped.version, original.version);
  });

  test('PlaylistSongModel roundtrip fromProto → toProto → fromProto', () {
    final original = PlaylistSongModel(
      playlistId: 'p1',
      songId: 's1',
      position: 5,
      addedAt: DateTime.utc(2026, 1, 1),
    );
    final roundtripped = PlaylistSongModel.fromProto(original.toProto());
    expect(roundtripped.playlistId, original.playlistId);
    expect(roundtripped.songId, original.songId);
    expect(roundtripped.position, original.position);
    expect(roundtripped.addedAt, original.addedAt);
  });
}
