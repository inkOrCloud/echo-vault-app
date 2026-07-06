import 'package:echo_vault_app/models/generated/echo_vault/playlist/v1/playlist_service.pb.dart';
import 'package:echo_vault_app/models/generated/google/protobuf/timestamp.pb.dart';

/// PlaylistSong model adapted to match actual protobuf structure.
/// 
/// **Deviation from spec:** 
/// - Proto uses `position` instead of `sortOrder` (field 4)
/// - Proto has no `id` field (composite key: playlistId + songId)
/// - Proto includes `song` and `addedBy` fields not in spec (omitted for simplicity)
class PlaylistSongModel {
  final String playlistId;
  final String songId;
  final int position;  // Proto field name: position (spec said sortOrder)
  final DateTime addedAt;

  const PlaylistSongModel({
    required this.playlistId,
    required this.songId,
    this.position = 0,
    required this.addedAt,
  });

  factory PlaylistSongModel.fromProto(PlaylistSong proto) {
    return PlaylistSongModel(
      playlistId: proto.playlistId,
      songId: proto.songId,
      position: proto.position,
      addedAt: proto.addedAt.toDateTime(),
    );
  }

  PlaylistSong toProto() {
    return PlaylistSong(
      playlistId: playlistId,
      songId: songId,
      position: position,
      addedAt: Timestamp.fromDateTime(addedAt),
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PlaylistSongModel &&
          runtimeType == other.runtimeType &&
          playlistId == other.playlistId &&
          songId == other.songId &&
          position == other.position &&
          addedAt == other.addedAt;

  @override
  int get hashCode =>
      playlistId.hashCode ^
      songId.hashCode ^
      position.hashCode ^
      addedAt.hashCode;

  PlaylistSongModel copyWith({
    String? playlistId,
    String? songId,
    int? position,
    DateTime? addedAt,
  }) {
    return PlaylistSongModel(
      playlistId: playlistId ?? this.playlistId,
      songId: songId ?? this.songId,
      position: position ?? this.position,
      addedAt: addedAt ?? this.addedAt,
    );
  }
}
