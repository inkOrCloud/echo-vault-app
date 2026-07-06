import 'package:flutter_test/flutter_test.dart';
import 'package:fixnum/fixnum.dart';
import 'package:echo_vault_app/features/playlist/models/playlist_model.dart';
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
}
