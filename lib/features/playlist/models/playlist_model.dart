import 'package:fixnum/fixnum.dart';
import 'package:echo_vault_app/models/generated/echo_vault/playlist/v1/playlist_service.pb.dart';
import 'package:echo_vault_app/models/generated/google/protobuf/timestamp.pb.dart';

class PlaylistModel {
  final String id;
  final String name;
  final String? description;
  final String? coverUrl;
  final Playlist_Type type;
  final String ownerId;
  final bool isPublic;
  final int songCount;
  final int version;
  final DateTime createdAt;
  final DateTime updatedAt;

  const PlaylistModel({
    required this.id,
    required this.name,
    this.description,
    this.coverUrl,
    this.type = Playlist_Type.TYPE_UNSPECIFIED,
    required this.ownerId,
    this.isPublic = false,
    this.songCount = 0,
    this.version = 0,
    required this.createdAt,
    required this.updatedAt,
  });

  factory PlaylistModel.fromProto(Playlist proto) {
    return PlaylistModel(
      id: proto.id,
      name: proto.name,
      description: proto.description.isEmpty ? null : proto.description,
      coverUrl: proto.coverUrl.isEmpty ? null : proto.coverUrl,
      type: proto.type,
      ownerId: proto.ownerId,
      isPublic: proto.isPublic,
      songCount: proto.songCount,
      version: proto.version.toInt(),
      createdAt: proto.createdAt.toDateTime(),
      updatedAt: proto.updatedAt.toDateTime(),
    );
  }

  Playlist toProto() {
    return Playlist(
      id: id,
      name: name,
      description: description ?? '',
      coverUrl: coverUrl ?? '',
      type: type,
      ownerId: ownerId,
      isPublic: isPublic,
      songCount: songCount,
      version: Int64(version),
      createdAt: Timestamp.fromDateTime(createdAt),
      updatedAt: Timestamp.fromDateTime(updatedAt),
    );
  }

  PlaylistModel copyWith({
    String? id,
    String? name,
    String? description,
    bool clearDescription = false,
    String? coverUrl,
    bool clearCoverUrl = false,
    Playlist_Type? type,
    String? ownerId,
    bool? isPublic,
    int? songCount,
    int? version,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return PlaylistModel(
      id: id ?? this.id,
      name: name ?? this.name,
      description: clearDescription ? null : (description ?? this.description),
      coverUrl: clearCoverUrl ? null : (coverUrl ?? this.coverUrl),
      type: type ?? this.type,
      ownerId: ownerId ?? this.ownerId,
      isPublic: isPublic ?? this.isPublic,
      songCount: songCount ?? this.songCount,
      version: version ?? this.version,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
