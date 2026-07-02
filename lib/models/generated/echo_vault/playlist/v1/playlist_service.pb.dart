///
//  Generated code. Do not modify.
//  source: echo_vault/playlist/v1/playlist_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../../../google/protobuf/timestamp.pb.dart' as $5;
import '../../song/v1/song_service.pb.dart' as $1;
import '../../common/v1/types.pb.dart' as $6;

import 'playlist_service.pbenum.dart';

export 'playlist_service.pbenum.dart';

class Playlist extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Playlist', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'echo_vault.playlist.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'coverUrl')
    ..e<Playlist_Type>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: Playlist_Type.TYPE_UNSPECIFIED, valueOf: Playlist_Type.valueOf, enumValues: Playlist_Type.values)
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ownerId')
    ..aOB(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isPublic')
    ..a<$core.int>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'songCount', $pb.PbFieldType.O3)
    ..aInt64(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'version')
    ..aOM<$5.Timestamp>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdAt', subBuilder: $5.Timestamp.create)
    ..aOM<$5.Timestamp>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updatedAt', subBuilder: $5.Timestamp.create)
    ..hasRequiredFields = false
  ;

  Playlist._() : super();
  factory Playlist({
    $core.String? id,
    $core.String? name,
    $core.String? description,
    $core.String? coverUrl,
    Playlist_Type? type,
    $core.String? ownerId,
    $core.bool? isPublic,
    $core.int? songCount,
    $fixnum.Int64? version,
    $5.Timestamp? createdAt,
    $5.Timestamp? updatedAt,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (name != null) {
      _result.name = name;
    }
    if (description != null) {
      _result.description = description;
    }
    if (coverUrl != null) {
      _result.coverUrl = coverUrl;
    }
    if (type != null) {
      _result.type = type;
    }
    if (ownerId != null) {
      _result.ownerId = ownerId;
    }
    if (isPublic != null) {
      _result.isPublic = isPublic;
    }
    if (songCount != null) {
      _result.songCount = songCount;
    }
    if (version != null) {
      _result.version = version;
    }
    if (createdAt != null) {
      _result.createdAt = createdAt;
    }
    if (updatedAt != null) {
      _result.updatedAt = updatedAt;
    }
    return _result;
  }
  factory Playlist.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Playlist.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Playlist clone() => Playlist()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Playlist copyWith(void Function(Playlist) updates) => super.copyWith((message) => updates(message as Playlist)) as Playlist; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Playlist create() => Playlist._();
  Playlist createEmptyInstance() => create();
  static $pb.PbList<Playlist> createRepeated() => $pb.PbList<Playlist>();
  @$core.pragma('dart2js:noInline')
  static Playlist getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Playlist>(create);
  static Playlist? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(3)
  set description($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescription() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get coverUrl => $_getSZ(3);
  @$pb.TagNumber(4)
  set coverUrl($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCoverUrl() => $_has(3);
  @$pb.TagNumber(4)
  void clearCoverUrl() => clearField(4);

  @$pb.TagNumber(5)
  Playlist_Type get type => $_getN(4);
  @$pb.TagNumber(5)
  set type(Playlist_Type v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasType() => $_has(4);
  @$pb.TagNumber(5)
  void clearType() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get ownerId => $_getSZ(5);
  @$pb.TagNumber(6)
  set ownerId($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasOwnerId() => $_has(5);
  @$pb.TagNumber(6)
  void clearOwnerId() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get isPublic => $_getBF(6);
  @$pb.TagNumber(7)
  set isPublic($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasIsPublic() => $_has(6);
  @$pb.TagNumber(7)
  void clearIsPublic() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get songCount => $_getIZ(7);
  @$pb.TagNumber(8)
  set songCount($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasSongCount() => $_has(7);
  @$pb.TagNumber(8)
  void clearSongCount() => clearField(8);

  @$pb.TagNumber(9)
  $fixnum.Int64 get version => $_getI64(8);
  @$pb.TagNumber(9)
  set version($fixnum.Int64 v) { $_setInt64(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasVersion() => $_has(8);
  @$pb.TagNumber(9)
  void clearVersion() => clearField(9);

  @$pb.TagNumber(10)
  $5.Timestamp get createdAt => $_getN(9);
  @$pb.TagNumber(10)
  set createdAt($5.Timestamp v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasCreatedAt() => $_has(9);
  @$pb.TagNumber(10)
  void clearCreatedAt() => clearField(10);
  @$pb.TagNumber(10)
  $5.Timestamp ensureCreatedAt() => $_ensure(9);

  @$pb.TagNumber(11)
  $5.Timestamp get updatedAt => $_getN(10);
  @$pb.TagNumber(11)
  set updatedAt($5.Timestamp v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasUpdatedAt() => $_has(10);
  @$pb.TagNumber(11)
  void clearUpdatedAt() => clearField(11);
  @$pb.TagNumber(11)
  $5.Timestamp ensureUpdatedAt() => $_ensure(10);
}

class PlaylistSong extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PlaylistSong', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'echo_vault.playlist.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'playlistId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'songId')
    ..aOM<$1.Song>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'song', subBuilder: $1.Song.create)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'position', $pb.PbFieldType.O3)
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'addedBy')
    ..aOM<$5.Timestamp>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'addedAt', subBuilder: $5.Timestamp.create)
    ..hasRequiredFields = false
  ;

  PlaylistSong._() : super();
  factory PlaylistSong({
    $core.String? playlistId,
    $core.String? songId,
    $1.Song? song,
    $core.int? position,
    $core.String? addedBy,
    $5.Timestamp? addedAt,
  }) {
    final _result = create();
    if (playlistId != null) {
      _result.playlistId = playlistId;
    }
    if (songId != null) {
      _result.songId = songId;
    }
    if (song != null) {
      _result.song = song;
    }
    if (position != null) {
      _result.position = position;
    }
    if (addedBy != null) {
      _result.addedBy = addedBy;
    }
    if (addedAt != null) {
      _result.addedAt = addedAt;
    }
    return _result;
  }
  factory PlaylistSong.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PlaylistSong.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PlaylistSong clone() => PlaylistSong()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PlaylistSong copyWith(void Function(PlaylistSong) updates) => super.copyWith((message) => updates(message as PlaylistSong)) as PlaylistSong; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PlaylistSong create() => PlaylistSong._();
  PlaylistSong createEmptyInstance() => create();
  static $pb.PbList<PlaylistSong> createRepeated() => $pb.PbList<PlaylistSong>();
  @$core.pragma('dart2js:noInline')
  static PlaylistSong getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PlaylistSong>(create);
  static PlaylistSong? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get playlistId => $_getSZ(0);
  @$pb.TagNumber(1)
  set playlistId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPlaylistId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPlaylistId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get songId => $_getSZ(1);
  @$pb.TagNumber(2)
  set songId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSongId() => $_has(1);
  @$pb.TagNumber(2)
  void clearSongId() => clearField(2);

  @$pb.TagNumber(3)
  $1.Song get song => $_getN(2);
  @$pb.TagNumber(3)
  set song($1.Song v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasSong() => $_has(2);
  @$pb.TagNumber(3)
  void clearSong() => clearField(3);
  @$pb.TagNumber(3)
  $1.Song ensureSong() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.int get position => $_getIZ(3);
  @$pb.TagNumber(4)
  set position($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPosition() => $_has(3);
  @$pb.TagNumber(4)
  void clearPosition() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get addedBy => $_getSZ(4);
  @$pb.TagNumber(5)
  set addedBy($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAddedBy() => $_has(4);
  @$pb.TagNumber(5)
  void clearAddedBy() => clearField(5);

  @$pb.TagNumber(6)
  $5.Timestamp get addedAt => $_getN(5);
  @$pb.TagNumber(6)
  set addedAt($5.Timestamp v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasAddedAt() => $_has(5);
  @$pb.TagNumber(6)
  void clearAddedAt() => clearField(6);
  @$pb.TagNumber(6)
  $5.Timestamp ensureAddedAt() => $_ensure(5);
}

class CreatePlaylistRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreatePlaylistRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'echo_vault.playlist.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isPublic')
    ..hasRequiredFields = false
  ;

  CreatePlaylistRequest._() : super();
  factory CreatePlaylistRequest({
    $core.String? name,
    $core.String? description,
    $core.bool? isPublic,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (description != null) {
      _result.description = description;
    }
    if (isPublic != null) {
      _result.isPublic = isPublic;
    }
    return _result;
  }
  factory CreatePlaylistRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreatePlaylistRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreatePlaylistRequest clone() => CreatePlaylistRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreatePlaylistRequest copyWith(void Function(CreatePlaylistRequest) updates) => super.copyWith((message) => updates(message as CreatePlaylistRequest)) as CreatePlaylistRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreatePlaylistRequest create() => CreatePlaylistRequest._();
  CreatePlaylistRequest createEmptyInstance() => create();
  static $pb.PbList<CreatePlaylistRequest> createRepeated() => $pb.PbList<CreatePlaylistRequest>();
  @$core.pragma('dart2js:noInline')
  static CreatePlaylistRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreatePlaylistRequest>(create);
  static CreatePlaylistRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get description => $_getSZ(1);
  @$pb.TagNumber(2)
  set description($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDescription() => $_has(1);
  @$pb.TagNumber(2)
  void clearDescription() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get isPublic => $_getBF(2);
  @$pb.TagNumber(3)
  set isPublic($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIsPublic() => $_has(2);
  @$pb.TagNumber(3)
  void clearIsPublic() => clearField(3);
}

class CreatePlaylistResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreatePlaylistResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'echo_vault.playlist.v1'), createEmptyInstance: create)
    ..aOM<Playlist>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'playlist', subBuilder: Playlist.create)
    ..hasRequiredFields = false
  ;

  CreatePlaylistResponse._() : super();
  factory CreatePlaylistResponse({
    Playlist? playlist,
  }) {
    final _result = create();
    if (playlist != null) {
      _result.playlist = playlist;
    }
    return _result;
  }
  factory CreatePlaylistResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreatePlaylistResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreatePlaylistResponse clone() => CreatePlaylistResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreatePlaylistResponse copyWith(void Function(CreatePlaylistResponse) updates) => super.copyWith((message) => updates(message as CreatePlaylistResponse)) as CreatePlaylistResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreatePlaylistResponse create() => CreatePlaylistResponse._();
  CreatePlaylistResponse createEmptyInstance() => create();
  static $pb.PbList<CreatePlaylistResponse> createRepeated() => $pb.PbList<CreatePlaylistResponse>();
  @$core.pragma('dart2js:noInline')
  static CreatePlaylistResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreatePlaylistResponse>(create);
  static CreatePlaylistResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Playlist get playlist => $_getN(0);
  @$pb.TagNumber(1)
  set playlist(Playlist v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPlaylist() => $_has(0);
  @$pb.TagNumber(1)
  void clearPlaylist() => clearField(1);
  @$pb.TagNumber(1)
  Playlist ensurePlaylist() => $_ensure(0);
}

class GetPlaylistRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetPlaylistRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'echo_vault.playlist.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  GetPlaylistRequest._() : super();
  factory GetPlaylistRequest({
    $core.String? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory GetPlaylistRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPlaylistRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPlaylistRequest clone() => GetPlaylistRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPlaylistRequest copyWith(void Function(GetPlaylistRequest) updates) => super.copyWith((message) => updates(message as GetPlaylistRequest)) as GetPlaylistRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetPlaylistRequest create() => GetPlaylistRequest._();
  GetPlaylistRequest createEmptyInstance() => create();
  static $pb.PbList<GetPlaylistRequest> createRepeated() => $pb.PbList<GetPlaylistRequest>();
  @$core.pragma('dart2js:noInline')
  static GetPlaylistRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPlaylistRequest>(create);
  static GetPlaylistRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class GetPlaylistResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetPlaylistResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'echo_vault.playlist.v1'), createEmptyInstance: create)
    ..aOM<Playlist>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'playlist', subBuilder: Playlist.create)
    ..hasRequiredFields = false
  ;

  GetPlaylistResponse._() : super();
  factory GetPlaylistResponse({
    Playlist? playlist,
  }) {
    final _result = create();
    if (playlist != null) {
      _result.playlist = playlist;
    }
    return _result;
  }
  factory GetPlaylistResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPlaylistResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPlaylistResponse clone() => GetPlaylistResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPlaylistResponse copyWith(void Function(GetPlaylistResponse) updates) => super.copyWith((message) => updates(message as GetPlaylistResponse)) as GetPlaylistResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetPlaylistResponse create() => GetPlaylistResponse._();
  GetPlaylistResponse createEmptyInstance() => create();
  static $pb.PbList<GetPlaylistResponse> createRepeated() => $pb.PbList<GetPlaylistResponse>();
  @$core.pragma('dart2js:noInline')
  static GetPlaylistResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPlaylistResponse>(create);
  static GetPlaylistResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Playlist get playlist => $_getN(0);
  @$pb.TagNumber(1)
  set playlist(Playlist v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPlaylist() => $_has(0);
  @$pb.TagNumber(1)
  void clearPlaylist() => clearField(1);
  @$pb.TagNumber(1)
  Playlist ensurePlaylist() => $_ensure(0);
}

class UpdatePlaylistRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdatePlaylistRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'echo_vault.playlist.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isPublic')
    ..hasRequiredFields = false
  ;

  UpdatePlaylistRequest._() : super();
  factory UpdatePlaylistRequest({
    $core.String? id,
    $core.String? name,
    $core.String? description,
    $core.bool? isPublic,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (name != null) {
      _result.name = name;
    }
    if (description != null) {
      _result.description = description;
    }
    if (isPublic != null) {
      _result.isPublic = isPublic;
    }
    return _result;
  }
  factory UpdatePlaylistRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdatePlaylistRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdatePlaylistRequest clone() => UpdatePlaylistRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdatePlaylistRequest copyWith(void Function(UpdatePlaylistRequest) updates) => super.copyWith((message) => updates(message as UpdatePlaylistRequest)) as UpdatePlaylistRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdatePlaylistRequest create() => UpdatePlaylistRequest._();
  UpdatePlaylistRequest createEmptyInstance() => create();
  static $pb.PbList<UpdatePlaylistRequest> createRepeated() => $pb.PbList<UpdatePlaylistRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdatePlaylistRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdatePlaylistRequest>(create);
  static UpdatePlaylistRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(3)
  set description($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescription() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get isPublic => $_getBF(3);
  @$pb.TagNumber(4)
  set isPublic($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasIsPublic() => $_has(3);
  @$pb.TagNumber(4)
  void clearIsPublic() => clearField(4);
}

class UpdatePlaylistResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdatePlaylistResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'echo_vault.playlist.v1'), createEmptyInstance: create)
    ..aOM<Playlist>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'playlist', subBuilder: Playlist.create)
    ..hasRequiredFields = false
  ;

  UpdatePlaylistResponse._() : super();
  factory UpdatePlaylistResponse({
    Playlist? playlist,
  }) {
    final _result = create();
    if (playlist != null) {
      _result.playlist = playlist;
    }
    return _result;
  }
  factory UpdatePlaylistResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdatePlaylistResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdatePlaylistResponse clone() => UpdatePlaylistResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdatePlaylistResponse copyWith(void Function(UpdatePlaylistResponse) updates) => super.copyWith((message) => updates(message as UpdatePlaylistResponse)) as UpdatePlaylistResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdatePlaylistResponse create() => UpdatePlaylistResponse._();
  UpdatePlaylistResponse createEmptyInstance() => create();
  static $pb.PbList<UpdatePlaylistResponse> createRepeated() => $pb.PbList<UpdatePlaylistResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdatePlaylistResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdatePlaylistResponse>(create);
  static UpdatePlaylistResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Playlist get playlist => $_getN(0);
  @$pb.TagNumber(1)
  set playlist(Playlist v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPlaylist() => $_has(0);
  @$pb.TagNumber(1)
  void clearPlaylist() => clearField(1);
  @$pb.TagNumber(1)
  Playlist ensurePlaylist() => $_ensure(0);
}

class DeletePlaylistRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeletePlaylistRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'echo_vault.playlist.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  DeletePlaylistRequest._() : super();
  factory DeletePlaylistRequest({
    $core.String? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory DeletePlaylistRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeletePlaylistRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeletePlaylistRequest clone() => DeletePlaylistRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeletePlaylistRequest copyWith(void Function(DeletePlaylistRequest) updates) => super.copyWith((message) => updates(message as DeletePlaylistRequest)) as DeletePlaylistRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeletePlaylistRequest create() => DeletePlaylistRequest._();
  DeletePlaylistRequest createEmptyInstance() => create();
  static $pb.PbList<DeletePlaylistRequest> createRepeated() => $pb.PbList<DeletePlaylistRequest>();
  @$core.pragma('dart2js:noInline')
  static DeletePlaylistRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeletePlaylistRequest>(create);
  static DeletePlaylistRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class DeletePlaylistResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeletePlaylistResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'echo_vault.playlist.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  DeletePlaylistResponse._() : super();
  factory DeletePlaylistResponse() => create();
  factory DeletePlaylistResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeletePlaylistResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeletePlaylistResponse clone() => DeletePlaylistResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeletePlaylistResponse copyWith(void Function(DeletePlaylistResponse) updates) => super.copyWith((message) => updates(message as DeletePlaylistResponse)) as DeletePlaylistResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeletePlaylistResponse create() => DeletePlaylistResponse._();
  DeletePlaylistResponse createEmptyInstance() => create();
  static $pb.PbList<DeletePlaylistResponse> createRepeated() => $pb.PbList<DeletePlaylistResponse>();
  @$core.pragma('dart2js:noInline')
  static DeletePlaylistResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeletePlaylistResponse>(create);
  static DeletePlaylistResponse? _defaultInstance;
}

class ListPlaylistsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListPlaylistsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'echo_vault.playlist.v1'), createEmptyInstance: create)
    ..aOM<$6.PaginationRequest>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pagination', subBuilder: $6.PaginationRequest.create)
    ..hasRequiredFields = false
  ;

  ListPlaylistsRequest._() : super();
  factory ListPlaylistsRequest({
    $6.PaginationRequest? pagination,
  }) {
    final _result = create();
    if (pagination != null) {
      _result.pagination = pagination;
    }
    return _result;
  }
  factory ListPlaylistsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListPlaylistsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListPlaylistsRequest clone() => ListPlaylistsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListPlaylistsRequest copyWith(void Function(ListPlaylistsRequest) updates) => super.copyWith((message) => updates(message as ListPlaylistsRequest)) as ListPlaylistsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListPlaylistsRequest create() => ListPlaylistsRequest._();
  ListPlaylistsRequest createEmptyInstance() => create();
  static $pb.PbList<ListPlaylistsRequest> createRepeated() => $pb.PbList<ListPlaylistsRequest>();
  @$core.pragma('dart2js:noInline')
  static ListPlaylistsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListPlaylistsRequest>(create);
  static ListPlaylistsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $6.PaginationRequest get pagination => $_getN(0);
  @$pb.TagNumber(1)
  set pagination($6.PaginationRequest v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPagination() => $_has(0);
  @$pb.TagNumber(1)
  void clearPagination() => clearField(1);
  @$pb.TagNumber(1)
  $6.PaginationRequest ensurePagination() => $_ensure(0);
}

class ListPlaylistsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListPlaylistsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'echo_vault.playlist.v1'), createEmptyInstance: create)
    ..pc<Playlist>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'playlists', $pb.PbFieldType.PM, subBuilder: Playlist.create)
    ..aOM<$6.PaginationResponse>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pagination', subBuilder: $6.PaginationResponse.create)
    ..hasRequiredFields = false
  ;

  ListPlaylistsResponse._() : super();
  factory ListPlaylistsResponse({
    $core.Iterable<Playlist>? playlists,
    $6.PaginationResponse? pagination,
  }) {
    final _result = create();
    if (playlists != null) {
      _result.playlists.addAll(playlists);
    }
    if (pagination != null) {
      _result.pagination = pagination;
    }
    return _result;
  }
  factory ListPlaylistsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListPlaylistsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListPlaylistsResponse clone() => ListPlaylistsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListPlaylistsResponse copyWith(void Function(ListPlaylistsResponse) updates) => super.copyWith((message) => updates(message as ListPlaylistsResponse)) as ListPlaylistsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListPlaylistsResponse create() => ListPlaylistsResponse._();
  ListPlaylistsResponse createEmptyInstance() => create();
  static $pb.PbList<ListPlaylistsResponse> createRepeated() => $pb.PbList<ListPlaylistsResponse>();
  @$core.pragma('dart2js:noInline')
  static ListPlaylistsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListPlaylistsResponse>(create);
  static ListPlaylistsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Playlist> get playlists => $_getList(0);

  @$pb.TagNumber(2)
  $6.PaginationResponse get pagination => $_getN(1);
  @$pb.TagNumber(2)
  set pagination($6.PaginationResponse v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPagination() => $_has(1);
  @$pb.TagNumber(2)
  void clearPagination() => clearField(2);
  @$pb.TagNumber(2)
  $6.PaginationResponse ensurePagination() => $_ensure(1);
}

class AddSongRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddSongRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'echo_vault.playlist.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'playlistId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'songId')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'position', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  AddSongRequest._() : super();
  factory AddSongRequest({
    $core.String? playlistId,
    $core.String? songId,
    $core.int? position,
  }) {
    final _result = create();
    if (playlistId != null) {
      _result.playlistId = playlistId;
    }
    if (songId != null) {
      _result.songId = songId;
    }
    if (position != null) {
      _result.position = position;
    }
    return _result;
  }
  factory AddSongRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddSongRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddSongRequest clone() => AddSongRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddSongRequest copyWith(void Function(AddSongRequest) updates) => super.copyWith((message) => updates(message as AddSongRequest)) as AddSongRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddSongRequest create() => AddSongRequest._();
  AddSongRequest createEmptyInstance() => create();
  static $pb.PbList<AddSongRequest> createRepeated() => $pb.PbList<AddSongRequest>();
  @$core.pragma('dart2js:noInline')
  static AddSongRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddSongRequest>(create);
  static AddSongRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get playlistId => $_getSZ(0);
  @$pb.TagNumber(1)
  set playlistId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPlaylistId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPlaylistId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get songId => $_getSZ(1);
  @$pb.TagNumber(2)
  set songId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSongId() => $_has(1);
  @$pb.TagNumber(2)
  void clearSongId() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get position => $_getIZ(2);
  @$pb.TagNumber(3)
  set position($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPosition() => $_has(2);
  @$pb.TagNumber(3)
  void clearPosition() => clearField(3);
}

class AddSongResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddSongResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'echo_vault.playlist.v1'), createEmptyInstance: create)
    ..aOM<PlaylistSong>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'playlistSong', subBuilder: PlaylistSong.create)
    ..hasRequiredFields = false
  ;

  AddSongResponse._() : super();
  factory AddSongResponse({
    PlaylistSong? playlistSong,
  }) {
    final _result = create();
    if (playlistSong != null) {
      _result.playlistSong = playlistSong;
    }
    return _result;
  }
  factory AddSongResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddSongResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddSongResponse clone() => AddSongResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddSongResponse copyWith(void Function(AddSongResponse) updates) => super.copyWith((message) => updates(message as AddSongResponse)) as AddSongResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddSongResponse create() => AddSongResponse._();
  AddSongResponse createEmptyInstance() => create();
  static $pb.PbList<AddSongResponse> createRepeated() => $pb.PbList<AddSongResponse>();
  @$core.pragma('dart2js:noInline')
  static AddSongResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddSongResponse>(create);
  static AddSongResponse? _defaultInstance;

  @$pb.TagNumber(1)
  PlaylistSong get playlistSong => $_getN(0);
  @$pb.TagNumber(1)
  set playlistSong(PlaylistSong v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPlaylistSong() => $_has(0);
  @$pb.TagNumber(1)
  void clearPlaylistSong() => clearField(1);
  @$pb.TagNumber(1)
  PlaylistSong ensurePlaylistSong() => $_ensure(0);
}

class RemoveSongRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RemoveSongRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'echo_vault.playlist.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'playlistId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'songId')
    ..hasRequiredFields = false
  ;

  RemoveSongRequest._() : super();
  factory RemoveSongRequest({
    $core.String? playlistId,
    $core.String? songId,
  }) {
    final _result = create();
    if (playlistId != null) {
      _result.playlistId = playlistId;
    }
    if (songId != null) {
      _result.songId = songId;
    }
    return _result;
  }
  factory RemoveSongRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemoveSongRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RemoveSongRequest clone() => RemoveSongRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RemoveSongRequest copyWith(void Function(RemoveSongRequest) updates) => super.copyWith((message) => updates(message as RemoveSongRequest)) as RemoveSongRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RemoveSongRequest create() => RemoveSongRequest._();
  RemoveSongRequest createEmptyInstance() => create();
  static $pb.PbList<RemoveSongRequest> createRepeated() => $pb.PbList<RemoveSongRequest>();
  @$core.pragma('dart2js:noInline')
  static RemoveSongRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RemoveSongRequest>(create);
  static RemoveSongRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get playlistId => $_getSZ(0);
  @$pb.TagNumber(1)
  set playlistId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPlaylistId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPlaylistId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get songId => $_getSZ(1);
  @$pb.TagNumber(2)
  set songId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSongId() => $_has(1);
  @$pb.TagNumber(2)
  void clearSongId() => clearField(2);
}

class RemoveSongResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RemoveSongResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'echo_vault.playlist.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  RemoveSongResponse._() : super();
  factory RemoveSongResponse() => create();
  factory RemoveSongResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemoveSongResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RemoveSongResponse clone() => RemoveSongResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RemoveSongResponse copyWith(void Function(RemoveSongResponse) updates) => super.copyWith((message) => updates(message as RemoveSongResponse)) as RemoveSongResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RemoveSongResponse create() => RemoveSongResponse._();
  RemoveSongResponse createEmptyInstance() => create();
  static $pb.PbList<RemoveSongResponse> createRepeated() => $pb.PbList<RemoveSongResponse>();
  @$core.pragma('dart2js:noInline')
  static RemoveSongResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RemoveSongResponse>(create);
  static RemoveSongResponse? _defaultInstance;
}

class ReorderSongsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ReorderSongsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'echo_vault.playlist.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'playlistId')
    ..pPS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'songIds')
    ..hasRequiredFields = false
  ;

  ReorderSongsRequest._() : super();
  factory ReorderSongsRequest({
    $core.String? playlistId,
    $core.Iterable<$core.String>? songIds,
  }) {
    final _result = create();
    if (playlistId != null) {
      _result.playlistId = playlistId;
    }
    if (songIds != null) {
      _result.songIds.addAll(songIds);
    }
    return _result;
  }
  factory ReorderSongsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReorderSongsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReorderSongsRequest clone() => ReorderSongsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReorderSongsRequest copyWith(void Function(ReorderSongsRequest) updates) => super.copyWith((message) => updates(message as ReorderSongsRequest)) as ReorderSongsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReorderSongsRequest create() => ReorderSongsRequest._();
  ReorderSongsRequest createEmptyInstance() => create();
  static $pb.PbList<ReorderSongsRequest> createRepeated() => $pb.PbList<ReorderSongsRequest>();
  @$core.pragma('dart2js:noInline')
  static ReorderSongsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReorderSongsRequest>(create);
  static ReorderSongsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get playlistId => $_getSZ(0);
  @$pb.TagNumber(1)
  set playlistId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPlaylistId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPlaylistId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.String> get songIds => $_getList(1);
}

class ReorderSongsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ReorderSongsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'echo_vault.playlist.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  ReorderSongsResponse._() : super();
  factory ReorderSongsResponse() => create();
  factory ReorderSongsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReorderSongsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReorderSongsResponse clone() => ReorderSongsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReorderSongsResponse copyWith(void Function(ReorderSongsResponse) updates) => super.copyWith((message) => updates(message as ReorderSongsResponse)) as ReorderSongsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReorderSongsResponse create() => ReorderSongsResponse._();
  ReorderSongsResponse createEmptyInstance() => create();
  static $pb.PbList<ReorderSongsResponse> createRepeated() => $pb.PbList<ReorderSongsResponse>();
  @$core.pragma('dart2js:noInline')
  static ReorderSongsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReorderSongsResponse>(create);
  static ReorderSongsResponse? _defaultInstance;
}

class ListPlaylistSongsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListPlaylistSongsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'echo_vault.playlist.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'playlistId')
    ..aOM<$6.PaginationRequest>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pagination', subBuilder: $6.PaginationRequest.create)
    ..hasRequiredFields = false
  ;

  ListPlaylistSongsRequest._() : super();
  factory ListPlaylistSongsRequest({
    $core.String? playlistId,
    $6.PaginationRequest? pagination,
  }) {
    final _result = create();
    if (playlistId != null) {
      _result.playlistId = playlistId;
    }
    if (pagination != null) {
      _result.pagination = pagination;
    }
    return _result;
  }
  factory ListPlaylistSongsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListPlaylistSongsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListPlaylistSongsRequest clone() => ListPlaylistSongsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListPlaylistSongsRequest copyWith(void Function(ListPlaylistSongsRequest) updates) => super.copyWith((message) => updates(message as ListPlaylistSongsRequest)) as ListPlaylistSongsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListPlaylistSongsRequest create() => ListPlaylistSongsRequest._();
  ListPlaylistSongsRequest createEmptyInstance() => create();
  static $pb.PbList<ListPlaylistSongsRequest> createRepeated() => $pb.PbList<ListPlaylistSongsRequest>();
  @$core.pragma('dart2js:noInline')
  static ListPlaylistSongsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListPlaylistSongsRequest>(create);
  static ListPlaylistSongsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get playlistId => $_getSZ(0);
  @$pb.TagNumber(1)
  set playlistId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPlaylistId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPlaylistId() => clearField(1);

  @$pb.TagNumber(2)
  $6.PaginationRequest get pagination => $_getN(1);
  @$pb.TagNumber(2)
  set pagination($6.PaginationRequest v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPagination() => $_has(1);
  @$pb.TagNumber(2)
  void clearPagination() => clearField(2);
  @$pb.TagNumber(2)
  $6.PaginationRequest ensurePagination() => $_ensure(1);
}

class ListPlaylistSongsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListPlaylistSongsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'echo_vault.playlist.v1'), createEmptyInstance: create)
    ..pc<PlaylistSong>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'songs', $pb.PbFieldType.PM, subBuilder: PlaylistSong.create)
    ..aOM<$6.PaginationResponse>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pagination', subBuilder: $6.PaginationResponse.create)
    ..hasRequiredFields = false
  ;

  ListPlaylistSongsResponse._() : super();
  factory ListPlaylistSongsResponse({
    $core.Iterable<PlaylistSong>? songs,
    $6.PaginationResponse? pagination,
  }) {
    final _result = create();
    if (songs != null) {
      _result.songs.addAll(songs);
    }
    if (pagination != null) {
      _result.pagination = pagination;
    }
    return _result;
  }
  factory ListPlaylistSongsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListPlaylistSongsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListPlaylistSongsResponse clone() => ListPlaylistSongsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListPlaylistSongsResponse copyWith(void Function(ListPlaylistSongsResponse) updates) => super.copyWith((message) => updates(message as ListPlaylistSongsResponse)) as ListPlaylistSongsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListPlaylistSongsResponse create() => ListPlaylistSongsResponse._();
  ListPlaylistSongsResponse createEmptyInstance() => create();
  static $pb.PbList<ListPlaylistSongsResponse> createRepeated() => $pb.PbList<ListPlaylistSongsResponse>();
  @$core.pragma('dart2js:noInline')
  static ListPlaylistSongsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListPlaylistSongsResponse>(create);
  static ListPlaylistSongsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<PlaylistSong> get songs => $_getList(0);

  @$pb.TagNumber(2)
  $6.PaginationResponse get pagination => $_getN(1);
  @$pb.TagNumber(2)
  set pagination($6.PaginationResponse v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPagination() => $_has(1);
  @$pb.TagNumber(2)
  void clearPagination() => clearField(2);
  @$pb.TagNumber(2)
  $6.PaginationResponse ensurePagination() => $_ensure(1);
}

