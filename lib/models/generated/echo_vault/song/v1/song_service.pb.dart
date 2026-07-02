// This is a generated file - do not edit.
//
// Generated from echo_vault/song/v1/song_service.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;
import 'package:protobuf/well_known_types/google/protobuf/timestamp.pb.dart'
    as $0;

import '../../common/v1/types.pb.dart' as $1;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// 歌曲
class Song extends $pb.GeneratedMessage {
  factory Song({
    $core.String? id,
    $core.String? title,
    $core.String? artist,
    $core.String? album,
    $core.String? genre,
    $core.int? trackNumber,
    $core.int? discNumber,
    $core.int? durationMs,
    $core.int? year,
    $core.String? fileName,
    $fixnum.Int64? fileSize,
    $core.String? fileHash,
    $core.String? mimeType,
    $core.int? bitrate,
    $core.int? sampleRate,
    $1.FileSource? source,
    $1.FileStatus? fileStatus,
    $core.String? ownerId,
    $fixnum.Int64? version,
    $core.bool? isDeleted,
    $0.Timestamp? createdAt,
    $0.Timestamp? updatedAt,
    $core.String? coverUrl,
    $core.String? audioUrl,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (title != null) result.title = title;
    if (artist != null) result.artist = artist;
    if (album != null) result.album = album;
    if (genre != null) result.genre = genre;
    if (trackNumber != null) result.trackNumber = trackNumber;
    if (discNumber != null) result.discNumber = discNumber;
    if (durationMs != null) result.durationMs = durationMs;
    if (year != null) result.year = year;
    if (fileName != null) result.fileName = fileName;
    if (fileSize != null) result.fileSize = fileSize;
    if (fileHash != null) result.fileHash = fileHash;
    if (mimeType != null) result.mimeType = mimeType;
    if (bitrate != null) result.bitrate = bitrate;
    if (sampleRate != null) result.sampleRate = sampleRate;
    if (source != null) result.source = source;
    if (fileStatus != null) result.fileStatus = fileStatus;
    if (ownerId != null) result.ownerId = ownerId;
    if (version != null) result.version = version;
    if (isDeleted != null) result.isDeleted = isDeleted;
    if (createdAt != null) result.createdAt = createdAt;
    if (updatedAt != null) result.updatedAt = updatedAt;
    if (coverUrl != null) result.coverUrl = coverUrl;
    if (audioUrl != null) result.audioUrl = audioUrl;
    return result;
  }

  Song._();

  factory Song.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Song.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Song',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'echo_vault.song.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'title')
    ..aOS(3, _omitFieldNames ? '' : 'artist')
    ..aOS(4, _omitFieldNames ? '' : 'album')
    ..aOS(5, _omitFieldNames ? '' : 'genre')
    ..aI(6, _omitFieldNames ? '' : 'trackNumber')
    ..aI(7, _omitFieldNames ? '' : 'discNumber')
    ..aI(8, _omitFieldNames ? '' : 'durationMs')
    ..aI(9, _omitFieldNames ? '' : 'year')
    ..aOS(10, _omitFieldNames ? '' : 'fileName')
    ..aInt64(11, _omitFieldNames ? '' : 'fileSize')
    ..aOS(12, _omitFieldNames ? '' : 'fileHash')
    ..aOS(13, _omitFieldNames ? '' : 'mimeType')
    ..aI(14, _omitFieldNames ? '' : 'bitrate')
    ..aI(15, _omitFieldNames ? '' : 'sampleRate')
    ..aE<$1.FileSource>(16, _omitFieldNames ? '' : 'source',
        enumValues: $1.FileSource.values)
    ..aE<$1.FileStatus>(17, _omitFieldNames ? '' : 'fileStatus',
        enumValues: $1.FileStatus.values)
    ..aOS(18, _omitFieldNames ? '' : 'ownerId')
    ..aInt64(19, _omitFieldNames ? '' : 'version')
    ..aOB(20, _omitFieldNames ? '' : 'isDeleted')
    ..aOM<$0.Timestamp>(21, _omitFieldNames ? '' : 'createdAt',
        subBuilder: $0.Timestamp.create)
    ..aOM<$0.Timestamp>(22, _omitFieldNames ? '' : 'updatedAt',
        subBuilder: $0.Timestamp.create)
    ..aOS(23, _omitFieldNames ? '' : 'coverUrl')
    ..aOS(24, _omitFieldNames ? '' : 'audioUrl')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Song clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Song copyWith(void Function(Song) updates) =>
      super.copyWith((message) => updates(message as Song)) as Song;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Song create() => Song._();
  @$core.override
  Song createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Song getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Song>(create);
  static Song? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get artist => $_getSZ(2);
  @$pb.TagNumber(3)
  set artist($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasArtist() => $_has(2);
  @$pb.TagNumber(3)
  void clearArtist() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get album => $_getSZ(3);
  @$pb.TagNumber(4)
  set album($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasAlbum() => $_has(3);
  @$pb.TagNumber(4)
  void clearAlbum() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get genre => $_getSZ(4);
  @$pb.TagNumber(5)
  set genre($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasGenre() => $_has(4);
  @$pb.TagNumber(5)
  void clearGenre() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get trackNumber => $_getIZ(5);
  @$pb.TagNumber(6)
  set trackNumber($core.int value) => $_setSignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasTrackNumber() => $_has(5);
  @$pb.TagNumber(6)
  void clearTrackNumber() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get discNumber => $_getIZ(6);
  @$pb.TagNumber(7)
  set discNumber($core.int value) => $_setSignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasDiscNumber() => $_has(6);
  @$pb.TagNumber(7)
  void clearDiscNumber() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.int get durationMs => $_getIZ(7);
  @$pb.TagNumber(8)
  set durationMs($core.int value) => $_setSignedInt32(7, value);
  @$pb.TagNumber(8)
  $core.bool hasDurationMs() => $_has(7);
  @$pb.TagNumber(8)
  void clearDurationMs() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.int get year => $_getIZ(8);
  @$pb.TagNumber(9)
  set year($core.int value) => $_setSignedInt32(8, value);
  @$pb.TagNumber(9)
  $core.bool hasYear() => $_has(8);
  @$pb.TagNumber(9)
  void clearYear() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.String get fileName => $_getSZ(9);
  @$pb.TagNumber(10)
  set fileName($core.String value) => $_setString(9, value);
  @$pb.TagNumber(10)
  $core.bool hasFileName() => $_has(9);
  @$pb.TagNumber(10)
  void clearFileName() => $_clearField(10);

  @$pb.TagNumber(11)
  $fixnum.Int64 get fileSize => $_getI64(10);
  @$pb.TagNumber(11)
  set fileSize($fixnum.Int64 value) => $_setInt64(10, value);
  @$pb.TagNumber(11)
  $core.bool hasFileSize() => $_has(10);
  @$pb.TagNumber(11)
  void clearFileSize() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.String get fileHash => $_getSZ(11);
  @$pb.TagNumber(12)
  set fileHash($core.String value) => $_setString(11, value);
  @$pb.TagNumber(12)
  $core.bool hasFileHash() => $_has(11);
  @$pb.TagNumber(12)
  void clearFileHash() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.String get mimeType => $_getSZ(12);
  @$pb.TagNumber(13)
  set mimeType($core.String value) => $_setString(12, value);
  @$pb.TagNumber(13)
  $core.bool hasMimeType() => $_has(12);
  @$pb.TagNumber(13)
  void clearMimeType() => $_clearField(13);

  @$pb.TagNumber(14)
  $core.int get bitrate => $_getIZ(13);
  @$pb.TagNumber(14)
  set bitrate($core.int value) => $_setSignedInt32(13, value);
  @$pb.TagNumber(14)
  $core.bool hasBitrate() => $_has(13);
  @$pb.TagNumber(14)
  void clearBitrate() => $_clearField(14);

  @$pb.TagNumber(15)
  $core.int get sampleRate => $_getIZ(14);
  @$pb.TagNumber(15)
  set sampleRate($core.int value) => $_setSignedInt32(14, value);
  @$pb.TagNumber(15)
  $core.bool hasSampleRate() => $_has(14);
  @$pb.TagNumber(15)
  void clearSampleRate() => $_clearField(15);

  @$pb.TagNumber(16)
  $1.FileSource get source => $_getN(15);
  @$pb.TagNumber(16)
  set source($1.FileSource value) => $_setField(16, value);
  @$pb.TagNumber(16)
  $core.bool hasSource() => $_has(15);
  @$pb.TagNumber(16)
  void clearSource() => $_clearField(16);

  @$pb.TagNumber(17)
  $1.FileStatus get fileStatus => $_getN(16);
  @$pb.TagNumber(17)
  set fileStatus($1.FileStatus value) => $_setField(17, value);
  @$pb.TagNumber(17)
  $core.bool hasFileStatus() => $_has(16);
  @$pb.TagNumber(17)
  void clearFileStatus() => $_clearField(17);

  @$pb.TagNumber(18)
  $core.String get ownerId => $_getSZ(17);
  @$pb.TagNumber(18)
  set ownerId($core.String value) => $_setString(17, value);
  @$pb.TagNumber(18)
  $core.bool hasOwnerId() => $_has(17);
  @$pb.TagNumber(18)
  void clearOwnerId() => $_clearField(18);

  @$pb.TagNumber(19)
  $fixnum.Int64 get version => $_getI64(18);
  @$pb.TagNumber(19)
  set version($fixnum.Int64 value) => $_setInt64(18, value);
  @$pb.TagNumber(19)
  $core.bool hasVersion() => $_has(18);
  @$pb.TagNumber(19)
  void clearVersion() => $_clearField(19);

  @$pb.TagNumber(20)
  $core.bool get isDeleted => $_getBF(19);
  @$pb.TagNumber(20)
  set isDeleted($core.bool value) => $_setBool(19, value);
  @$pb.TagNumber(20)
  $core.bool hasIsDeleted() => $_has(19);
  @$pb.TagNumber(20)
  void clearIsDeleted() => $_clearField(20);

  @$pb.TagNumber(21)
  $0.Timestamp get createdAt => $_getN(20);
  @$pb.TagNumber(21)
  set createdAt($0.Timestamp value) => $_setField(21, value);
  @$pb.TagNumber(21)
  $core.bool hasCreatedAt() => $_has(20);
  @$pb.TagNumber(21)
  void clearCreatedAt() => $_clearField(21);
  @$pb.TagNumber(21)
  $0.Timestamp ensureCreatedAt() => $_ensure(20);

  @$pb.TagNumber(22)
  $0.Timestamp get updatedAt => $_getN(21);
  @$pb.TagNumber(22)
  set updatedAt($0.Timestamp value) => $_setField(22, value);
  @$pb.TagNumber(22)
  $core.bool hasUpdatedAt() => $_has(21);
  @$pb.TagNumber(22)
  void clearUpdatedAt() => $_clearField(22);
  @$pb.TagNumber(22)
  $0.Timestamp ensureUpdatedAt() => $_ensure(21);

  @$pb.TagNumber(23)
  $core.String get coverUrl => $_getSZ(22);
  @$pb.TagNumber(23)
  set coverUrl($core.String value) => $_setString(22, value);
  @$pb.TagNumber(23)
  $core.bool hasCoverUrl() => $_has(22);
  @$pb.TagNumber(23)
  void clearCoverUrl() => $_clearField(23);

  @$pb.TagNumber(24)
  $core.String get audioUrl => $_getSZ(23);
  @$pb.TagNumber(24)
  set audioUrl($core.String value) => $_setString(23, value);
  @$pb.TagNumber(24)
  $core.bool hasAudioUrl() => $_has(23);
  @$pb.TagNumber(24)
  void clearAudioUrl() => $_clearField(24);
}

class CheckSongsByHashRequest extends $pb.GeneratedMessage {
  factory CheckSongsByHashRequest({
    $core.String? deviceId,
    $core.Iterable<$core.String>? fileHashes,
  }) {
    final result = create();
    if (deviceId != null) result.deviceId = deviceId;
    if (fileHashes != null) result.fileHashes.addAll(fileHashes);
    return result;
  }

  CheckSongsByHashRequest._();

  factory CheckSongsByHashRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CheckSongsByHashRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CheckSongsByHashRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'echo_vault.song.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'deviceId')
    ..pPS(2, _omitFieldNames ? '' : 'fileHashes')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CheckSongsByHashRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CheckSongsByHashRequest copyWith(
          void Function(CheckSongsByHashRequest) updates) =>
      super.copyWith((message) => updates(message as CheckSongsByHashRequest))
          as CheckSongsByHashRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CheckSongsByHashRequest create() => CheckSongsByHashRequest._();
  @$core.override
  CheckSongsByHashRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CheckSongsByHashRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CheckSongsByHashRequest>(create);
  static CheckSongsByHashRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get deviceId => $_getSZ(0);
  @$pb.TagNumber(1)
  set deviceId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDeviceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDeviceId() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<$core.String> get fileHashes => $_getList(1);
}

class CheckSongsByHashResponse_Result extends $pb.GeneratedMessage {
  factory CheckSongsByHashResponse_Result({
    $core.String? fileHash,
    $core.bool? exists,
    Song? song,
  }) {
    final result = create();
    if (fileHash != null) result.fileHash = fileHash;
    if (exists != null) result.exists = exists;
    if (song != null) result.song = song;
    return result;
  }

  CheckSongsByHashResponse_Result._();

  factory CheckSongsByHashResponse_Result.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CheckSongsByHashResponse_Result.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CheckSongsByHashResponse.Result',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'echo_vault.song.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'fileHash')
    ..aOB(2, _omitFieldNames ? '' : 'exists')
    ..aOM<Song>(3, _omitFieldNames ? '' : 'song', subBuilder: Song.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CheckSongsByHashResponse_Result clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CheckSongsByHashResponse_Result copyWith(
          void Function(CheckSongsByHashResponse_Result) updates) =>
      super.copyWith(
              (message) => updates(message as CheckSongsByHashResponse_Result))
          as CheckSongsByHashResponse_Result;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CheckSongsByHashResponse_Result create() =>
      CheckSongsByHashResponse_Result._();
  @$core.override
  CheckSongsByHashResponse_Result createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CheckSongsByHashResponse_Result getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CheckSongsByHashResponse_Result>(
          create);
  static CheckSongsByHashResponse_Result? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get fileHash => $_getSZ(0);
  @$pb.TagNumber(1)
  set fileHash($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasFileHash() => $_has(0);
  @$pb.TagNumber(1)
  void clearFileHash() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get exists => $_getBF(1);
  @$pb.TagNumber(2)
  set exists($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasExists() => $_has(1);
  @$pb.TagNumber(2)
  void clearExists() => $_clearField(2);

  @$pb.TagNumber(3)
  Song get song => $_getN(2);
  @$pb.TagNumber(3)
  set song(Song value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasSong() => $_has(2);
  @$pb.TagNumber(3)
  void clearSong() => $_clearField(3);
  @$pb.TagNumber(3)
  Song ensureSong() => $_ensure(2);
}

class CheckSongsByHashResponse extends $pb.GeneratedMessage {
  factory CheckSongsByHashResponse({
    $core.Iterable<CheckSongsByHashResponse_Result>? results,
  }) {
    final result = create();
    if (results != null) result.results.addAll(results);
    return result;
  }

  CheckSongsByHashResponse._();

  factory CheckSongsByHashResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CheckSongsByHashResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CheckSongsByHashResponse',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'echo_vault.song.v1'),
      createEmptyInstance: create)
    ..pPM<CheckSongsByHashResponse_Result>(1, _omitFieldNames ? '' : 'results',
        subBuilder: CheckSongsByHashResponse_Result.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CheckSongsByHashResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CheckSongsByHashResponse copyWith(
          void Function(CheckSongsByHashResponse) updates) =>
      super.copyWith((message) => updates(message as CheckSongsByHashResponse))
          as CheckSongsByHashResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CheckSongsByHashResponse create() => CheckSongsByHashResponse._();
  @$core.override
  CheckSongsByHashResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CheckSongsByHashResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CheckSongsByHashResponse>(create);
  static CheckSongsByHashResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<CheckSongsByHashResponse_Result> get results => $_getList(0);
}

class PublishSongRequest extends $pb.GeneratedMessage {
  factory PublishSongRequest({
    $core.String? fileHash,
    $core.String? title,
    $core.String? artist,
    $core.String? album,
    $core.String? genre,
    $core.int? trackNumber,
    $core.int? discNumber,
    $core.int? year,
    $core.String? fileName,
    $fixnum.Int64? fileSize,
    $core.String? mimeType,
  }) {
    final result = create();
    if (fileHash != null) result.fileHash = fileHash;
    if (title != null) result.title = title;
    if (artist != null) result.artist = artist;
    if (album != null) result.album = album;
    if (genre != null) result.genre = genre;
    if (trackNumber != null) result.trackNumber = trackNumber;
    if (discNumber != null) result.discNumber = discNumber;
    if (year != null) result.year = year;
    if (fileName != null) result.fileName = fileName;
    if (fileSize != null) result.fileSize = fileSize;
    if (mimeType != null) result.mimeType = mimeType;
    return result;
  }

  PublishSongRequest._();

  factory PublishSongRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PublishSongRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PublishSongRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'echo_vault.song.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'fileHash')
    ..aOS(2, _omitFieldNames ? '' : 'title')
    ..aOS(3, _omitFieldNames ? '' : 'artist')
    ..aOS(4, _omitFieldNames ? '' : 'album')
    ..aOS(5, _omitFieldNames ? '' : 'genre')
    ..aI(6, _omitFieldNames ? '' : 'trackNumber')
    ..aI(7, _omitFieldNames ? '' : 'discNumber')
    ..aI(8, _omitFieldNames ? '' : 'year')
    ..aOS(9, _omitFieldNames ? '' : 'fileName')
    ..aInt64(10, _omitFieldNames ? '' : 'fileSize')
    ..aOS(11, _omitFieldNames ? '' : 'mimeType')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PublishSongRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PublishSongRequest copyWith(void Function(PublishSongRequest) updates) =>
      super.copyWith((message) => updates(message as PublishSongRequest))
          as PublishSongRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PublishSongRequest create() => PublishSongRequest._();
  @$core.override
  PublishSongRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PublishSongRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PublishSongRequest>(create);
  static PublishSongRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get fileHash => $_getSZ(0);
  @$pb.TagNumber(1)
  set fileHash($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasFileHash() => $_has(0);
  @$pb.TagNumber(1)
  void clearFileHash() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get artist => $_getSZ(2);
  @$pb.TagNumber(3)
  set artist($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasArtist() => $_has(2);
  @$pb.TagNumber(3)
  void clearArtist() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get album => $_getSZ(3);
  @$pb.TagNumber(4)
  set album($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasAlbum() => $_has(3);
  @$pb.TagNumber(4)
  void clearAlbum() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get genre => $_getSZ(4);
  @$pb.TagNumber(5)
  set genre($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasGenre() => $_has(4);
  @$pb.TagNumber(5)
  void clearGenre() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get trackNumber => $_getIZ(5);
  @$pb.TagNumber(6)
  set trackNumber($core.int value) => $_setSignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasTrackNumber() => $_has(5);
  @$pb.TagNumber(6)
  void clearTrackNumber() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get discNumber => $_getIZ(6);
  @$pb.TagNumber(7)
  set discNumber($core.int value) => $_setSignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasDiscNumber() => $_has(6);
  @$pb.TagNumber(7)
  void clearDiscNumber() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.int get year => $_getIZ(7);
  @$pb.TagNumber(8)
  set year($core.int value) => $_setSignedInt32(7, value);
  @$pb.TagNumber(8)
  $core.bool hasYear() => $_has(7);
  @$pb.TagNumber(8)
  void clearYear() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.String get fileName => $_getSZ(8);
  @$pb.TagNumber(9)
  set fileName($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasFileName() => $_has(8);
  @$pb.TagNumber(9)
  void clearFileName() => $_clearField(9);

  @$pb.TagNumber(10)
  $fixnum.Int64 get fileSize => $_getI64(9);
  @$pb.TagNumber(10)
  set fileSize($fixnum.Int64 value) => $_setInt64(9, value);
  @$pb.TagNumber(10)
  $core.bool hasFileSize() => $_has(9);
  @$pb.TagNumber(10)
  void clearFileSize() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.String get mimeType => $_getSZ(10);
  @$pb.TagNumber(11)
  set mimeType($core.String value) => $_setString(10, value);
  @$pb.TagNumber(11)
  $core.bool hasMimeType() => $_has(10);
  @$pb.TagNumber(11)
  void clearMimeType() => $_clearField(11);
}

class PublishSongResponse extends $pb.GeneratedMessage {
  factory PublishSongResponse({
    Song? song,
  }) {
    final result = create();
    if (song != null) result.song = song;
    return result;
  }

  PublishSongResponse._();

  factory PublishSongResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PublishSongResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PublishSongResponse',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'echo_vault.song.v1'),
      createEmptyInstance: create)
    ..aOM<Song>(1, _omitFieldNames ? '' : 'song', subBuilder: Song.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PublishSongResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PublishSongResponse copyWith(void Function(PublishSongResponse) updates) =>
      super.copyWith((message) => updates(message as PublishSongResponse))
          as PublishSongResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PublishSongResponse create() => PublishSongResponse._();
  @$core.override
  PublishSongResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PublishSongResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PublishSongResponse>(create);
  static PublishSongResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Song get song => $_getN(0);
  @$pb.TagNumber(1)
  set song(Song value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasSong() => $_has(0);
  @$pb.TagNumber(1)
  void clearSong() => $_clearField(1);
  @$pb.TagNumber(1)
  Song ensureSong() => $_ensure(0);
}

class UpdateSongRequest extends $pb.GeneratedMessage {
  factory UpdateSongRequest({
    $core.String? id,
    $core.String? title,
    $core.String? artist,
    $core.String? album,
    $core.String? genre,
    $core.int? trackNumber,
    $core.int? discNumber,
    $core.int? year,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (title != null) result.title = title;
    if (artist != null) result.artist = artist;
    if (album != null) result.album = album;
    if (genre != null) result.genre = genre;
    if (trackNumber != null) result.trackNumber = trackNumber;
    if (discNumber != null) result.discNumber = discNumber;
    if (year != null) result.year = year;
    return result;
  }

  UpdateSongRequest._();

  factory UpdateSongRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UpdateSongRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UpdateSongRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'echo_vault.song.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'title')
    ..aOS(3, _omitFieldNames ? '' : 'artist')
    ..aOS(4, _omitFieldNames ? '' : 'album')
    ..aOS(5, _omitFieldNames ? '' : 'genre')
    ..aI(6, _omitFieldNames ? '' : 'trackNumber')
    ..aI(7, _omitFieldNames ? '' : 'discNumber')
    ..aI(8, _omitFieldNames ? '' : 'year')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateSongRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateSongRequest copyWith(void Function(UpdateSongRequest) updates) =>
      super.copyWith((message) => updates(message as UpdateSongRequest))
          as UpdateSongRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateSongRequest create() => UpdateSongRequest._();
  @$core.override
  UpdateSongRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UpdateSongRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpdateSongRequest>(create);
  static UpdateSongRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get artist => $_getSZ(2);
  @$pb.TagNumber(3)
  set artist($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasArtist() => $_has(2);
  @$pb.TagNumber(3)
  void clearArtist() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get album => $_getSZ(3);
  @$pb.TagNumber(4)
  set album($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasAlbum() => $_has(3);
  @$pb.TagNumber(4)
  void clearAlbum() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get genre => $_getSZ(4);
  @$pb.TagNumber(5)
  set genre($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasGenre() => $_has(4);
  @$pb.TagNumber(5)
  void clearGenre() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get trackNumber => $_getIZ(5);
  @$pb.TagNumber(6)
  set trackNumber($core.int value) => $_setSignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasTrackNumber() => $_has(5);
  @$pb.TagNumber(6)
  void clearTrackNumber() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get discNumber => $_getIZ(6);
  @$pb.TagNumber(7)
  set discNumber($core.int value) => $_setSignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasDiscNumber() => $_has(6);
  @$pb.TagNumber(7)
  void clearDiscNumber() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.int get year => $_getIZ(7);
  @$pb.TagNumber(8)
  set year($core.int value) => $_setSignedInt32(7, value);
  @$pb.TagNumber(8)
  $core.bool hasYear() => $_has(7);
  @$pb.TagNumber(8)
  void clearYear() => $_clearField(8);
}

class UpdateSongResponse extends $pb.GeneratedMessage {
  factory UpdateSongResponse({
    Song? song,
  }) {
    final result = create();
    if (song != null) result.song = song;
    return result;
  }

  UpdateSongResponse._();

  factory UpdateSongResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UpdateSongResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UpdateSongResponse',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'echo_vault.song.v1'),
      createEmptyInstance: create)
    ..aOM<Song>(1, _omitFieldNames ? '' : 'song', subBuilder: Song.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateSongResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateSongResponse copyWith(void Function(UpdateSongResponse) updates) =>
      super.copyWith((message) => updates(message as UpdateSongResponse))
          as UpdateSongResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateSongResponse create() => UpdateSongResponse._();
  @$core.override
  UpdateSongResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UpdateSongResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpdateSongResponse>(create);
  static UpdateSongResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Song get song => $_getN(0);
  @$pb.TagNumber(1)
  set song(Song value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasSong() => $_has(0);
  @$pb.TagNumber(1)
  void clearSong() => $_clearField(1);
  @$pb.TagNumber(1)
  Song ensureSong() => $_ensure(0);
}

class DeleteSongRequest extends $pb.GeneratedMessage {
  factory DeleteSongRequest({
    $core.String? id,
  }) {
    final result = create();
    if (id != null) result.id = id;
    return result;
  }

  DeleteSongRequest._();

  factory DeleteSongRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DeleteSongRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeleteSongRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'echo_vault.song.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteSongRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteSongRequest copyWith(void Function(DeleteSongRequest) updates) =>
      super.copyWith((message) => updates(message as DeleteSongRequest))
          as DeleteSongRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteSongRequest create() => DeleteSongRequest._();
  @$core.override
  DeleteSongRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DeleteSongRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteSongRequest>(create);
  static DeleteSongRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);
}

class DeleteSongResponse extends $pb.GeneratedMessage {
  factory DeleteSongResponse() => create();

  DeleteSongResponse._();

  factory DeleteSongResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DeleteSongResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeleteSongResponse',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'echo_vault.song.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteSongResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteSongResponse copyWith(void Function(DeleteSongResponse) updates) =>
      super.copyWith((message) => updates(message as DeleteSongResponse))
          as DeleteSongResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteSongResponse create() => DeleteSongResponse._();
  @$core.override
  DeleteSongResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DeleteSongResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteSongResponse>(create);
  static DeleteSongResponse? _defaultInstance;
}

class GetSongRequest extends $pb.GeneratedMessage {
  factory GetSongRequest({
    $core.String? id,
  }) {
    final result = create();
    if (id != null) result.id = id;
    return result;
  }

  GetSongRequest._();

  factory GetSongRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetSongRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetSongRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'echo_vault.song.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetSongRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetSongRequest copyWith(void Function(GetSongRequest) updates) =>
      super.copyWith((message) => updates(message as GetSongRequest))
          as GetSongRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetSongRequest create() => GetSongRequest._();
  @$core.override
  GetSongRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetSongRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetSongRequest>(create);
  static GetSongRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);
}

class GetSongResponse extends $pb.GeneratedMessage {
  factory GetSongResponse({
    Song? song,
  }) {
    final result = create();
    if (song != null) result.song = song;
    return result;
  }

  GetSongResponse._();

  factory GetSongResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetSongResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetSongResponse',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'echo_vault.song.v1'),
      createEmptyInstance: create)
    ..aOM<Song>(1, _omitFieldNames ? '' : 'song', subBuilder: Song.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetSongResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetSongResponse copyWith(void Function(GetSongResponse) updates) =>
      super.copyWith((message) => updates(message as GetSongResponse))
          as GetSongResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetSongResponse create() => GetSongResponse._();
  @$core.override
  GetSongResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetSongResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetSongResponse>(create);
  static GetSongResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Song get song => $_getN(0);
  @$pb.TagNumber(1)
  set song(Song value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasSong() => $_has(0);
  @$pb.TagNumber(1)
  void clearSong() => $_clearField(1);
  @$pb.TagNumber(1)
  Song ensureSong() => $_ensure(0);
}

class ListSongsRequest extends $pb.GeneratedMessage {
  factory ListSongsRequest({
    $1.PaginationRequest? pagination,
    $core.String? ownerId,
    $core.String? sortBy,
    $core.String? sortOrder,
  }) {
    final result = create();
    if (pagination != null) result.pagination = pagination;
    if (ownerId != null) result.ownerId = ownerId;
    if (sortBy != null) result.sortBy = sortBy;
    if (sortOrder != null) result.sortOrder = sortOrder;
    return result;
  }

  ListSongsRequest._();

  factory ListSongsRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ListSongsRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListSongsRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'echo_vault.song.v1'),
      createEmptyInstance: create)
    ..aOM<$1.PaginationRequest>(1, _omitFieldNames ? '' : 'pagination',
        subBuilder: $1.PaginationRequest.create)
    ..aOS(2, _omitFieldNames ? '' : 'ownerId')
    ..aOS(3, _omitFieldNames ? '' : 'sortBy')
    ..aOS(4, _omitFieldNames ? '' : 'sortOrder')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListSongsRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListSongsRequest copyWith(void Function(ListSongsRequest) updates) =>
      super.copyWith((message) => updates(message as ListSongsRequest))
          as ListSongsRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListSongsRequest create() => ListSongsRequest._();
  @$core.override
  ListSongsRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ListSongsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListSongsRequest>(create);
  static ListSongsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $1.PaginationRequest get pagination => $_getN(0);
  @$pb.TagNumber(1)
  set pagination($1.PaginationRequest value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasPagination() => $_has(0);
  @$pb.TagNumber(1)
  void clearPagination() => $_clearField(1);
  @$pb.TagNumber(1)
  $1.PaginationRequest ensurePagination() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get ownerId => $_getSZ(1);
  @$pb.TagNumber(2)
  set ownerId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasOwnerId() => $_has(1);
  @$pb.TagNumber(2)
  void clearOwnerId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get sortBy => $_getSZ(2);
  @$pb.TagNumber(3)
  set sortBy($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSortBy() => $_has(2);
  @$pb.TagNumber(3)
  void clearSortBy() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get sortOrder => $_getSZ(3);
  @$pb.TagNumber(4)
  set sortOrder($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasSortOrder() => $_has(3);
  @$pb.TagNumber(4)
  void clearSortOrder() => $_clearField(4);
}

class ListSongsResponse extends $pb.GeneratedMessage {
  factory ListSongsResponse({
    $core.Iterable<Song>? songs,
    $1.PaginationResponse? pagination,
  }) {
    final result = create();
    if (songs != null) result.songs.addAll(songs);
    if (pagination != null) result.pagination = pagination;
    return result;
  }

  ListSongsResponse._();

  factory ListSongsResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ListSongsResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListSongsResponse',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'echo_vault.song.v1'),
      createEmptyInstance: create)
    ..pPM<Song>(1, _omitFieldNames ? '' : 'songs', subBuilder: Song.create)
    ..aOM<$1.PaginationResponse>(2, _omitFieldNames ? '' : 'pagination',
        subBuilder: $1.PaginationResponse.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListSongsResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListSongsResponse copyWith(void Function(ListSongsResponse) updates) =>
      super.copyWith((message) => updates(message as ListSongsResponse))
          as ListSongsResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListSongsResponse create() => ListSongsResponse._();
  @$core.override
  ListSongsResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ListSongsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListSongsResponse>(create);
  static ListSongsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<Song> get songs => $_getList(0);

  @$pb.TagNumber(2)
  $1.PaginationResponse get pagination => $_getN(1);
  @$pb.TagNumber(2)
  set pagination($1.PaginationResponse value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasPagination() => $_has(1);
  @$pb.TagNumber(2)
  void clearPagination() => $_clearField(2);
  @$pb.TagNumber(2)
  $1.PaginationResponse ensurePagination() => $_ensure(1);
}

class SearchSongsRequest extends $pb.GeneratedMessage {
  factory SearchSongsRequest({
    $core.String? query,
    $1.PaginationRequest? pagination,
  }) {
    final result = create();
    if (query != null) result.query = query;
    if (pagination != null) result.pagination = pagination;
    return result;
  }

  SearchSongsRequest._();

  factory SearchSongsRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SearchSongsRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SearchSongsRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'echo_vault.song.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'query')
    ..aOM<$1.PaginationRequest>(2, _omitFieldNames ? '' : 'pagination',
        subBuilder: $1.PaginationRequest.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SearchSongsRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SearchSongsRequest copyWith(void Function(SearchSongsRequest) updates) =>
      super.copyWith((message) => updates(message as SearchSongsRequest))
          as SearchSongsRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SearchSongsRequest create() => SearchSongsRequest._();
  @$core.override
  SearchSongsRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SearchSongsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SearchSongsRequest>(create);
  static SearchSongsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get query => $_getSZ(0);
  @$pb.TagNumber(1)
  set query($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasQuery() => $_has(0);
  @$pb.TagNumber(1)
  void clearQuery() => $_clearField(1);

  @$pb.TagNumber(2)
  $1.PaginationRequest get pagination => $_getN(1);
  @$pb.TagNumber(2)
  set pagination($1.PaginationRequest value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasPagination() => $_has(1);
  @$pb.TagNumber(2)
  void clearPagination() => $_clearField(2);
  @$pb.TagNumber(2)
  $1.PaginationRequest ensurePagination() => $_ensure(1);
}

class SearchSongsResponse extends $pb.GeneratedMessage {
  factory SearchSongsResponse({
    $core.Iterable<Song>? songs,
    $1.PaginationResponse? pagination,
  }) {
    final result = create();
    if (songs != null) result.songs.addAll(songs);
    if (pagination != null) result.pagination = pagination;
    return result;
  }

  SearchSongsResponse._();

  factory SearchSongsResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SearchSongsResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SearchSongsResponse',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'echo_vault.song.v1'),
      createEmptyInstance: create)
    ..pPM<Song>(1, _omitFieldNames ? '' : 'songs', subBuilder: Song.create)
    ..aOM<$1.PaginationResponse>(2, _omitFieldNames ? '' : 'pagination',
        subBuilder: $1.PaginationResponse.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SearchSongsResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SearchSongsResponse copyWith(void Function(SearchSongsResponse) updates) =>
      super.copyWith((message) => updates(message as SearchSongsResponse))
          as SearchSongsResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SearchSongsResponse create() => SearchSongsResponse._();
  @$core.override
  SearchSongsResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SearchSongsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SearchSongsResponse>(create);
  static SearchSongsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<Song> get songs => $_getList(0);

  @$pb.TagNumber(2)
  $1.PaginationResponse get pagination => $_getN(1);
  @$pb.TagNumber(2)
  set pagination($1.PaginationResponse value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasPagination() => $_has(1);
  @$pb.TagNumber(2)
  void clearPagination() => $_clearField(2);
  @$pb.TagNumber(2)
  $1.PaginationResponse ensurePagination() => $_ensure(1);
}

class ListDeviceLocalSongsRequest extends $pb.GeneratedMessage {
  factory ListDeviceLocalSongsRequest({
    $core.String? deviceId,
  }) {
    final result = create();
    if (deviceId != null) result.deviceId = deviceId;
    return result;
  }

  ListDeviceLocalSongsRequest._();

  factory ListDeviceLocalSongsRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ListDeviceLocalSongsRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListDeviceLocalSongsRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'echo_vault.song.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'deviceId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListDeviceLocalSongsRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListDeviceLocalSongsRequest copyWith(
          void Function(ListDeviceLocalSongsRequest) updates) =>
      super.copyWith(
              (message) => updates(message as ListDeviceLocalSongsRequest))
          as ListDeviceLocalSongsRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListDeviceLocalSongsRequest create() =>
      ListDeviceLocalSongsRequest._();
  @$core.override
  ListDeviceLocalSongsRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ListDeviceLocalSongsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListDeviceLocalSongsRequest>(create);
  static ListDeviceLocalSongsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get deviceId => $_getSZ(0);
  @$pb.TagNumber(1)
  set deviceId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDeviceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDeviceId() => $_clearField(1);
}

class ListDeviceLocalSongsResponse extends $pb.GeneratedMessage {
  factory ListDeviceLocalSongsResponse({
    $core.Iterable<Song>? songs,
  }) {
    final result = create();
    if (songs != null) result.songs.addAll(songs);
    return result;
  }

  ListDeviceLocalSongsResponse._();

  factory ListDeviceLocalSongsResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ListDeviceLocalSongsResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListDeviceLocalSongsResponse',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'echo_vault.song.v1'),
      createEmptyInstance: create)
    ..pPM<Song>(1, _omitFieldNames ? '' : 'songs', subBuilder: Song.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListDeviceLocalSongsResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListDeviceLocalSongsResponse copyWith(
          void Function(ListDeviceLocalSongsResponse) updates) =>
      super.copyWith(
              (message) => updates(message as ListDeviceLocalSongsResponse))
          as ListDeviceLocalSongsResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListDeviceLocalSongsResponse create() =>
      ListDeviceLocalSongsResponse._();
  @$core.override
  ListDeviceLocalSongsResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ListDeviceLocalSongsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListDeviceLocalSongsResponse>(create);
  static ListDeviceLocalSongsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<Song> get songs => $_getList(0);
}

/// ==========================================
/// 歌曲服务
/// ==========================================
class SongServiceApi {
  final $pb.RpcClient _client;

  SongServiceApi(this._client);

  /// 批量查询 hash → 获取服务端已有的歌曲信息
  $async.Future<CheckSongsByHashResponse> checkSongsByHash(
          $pb.ClientContext? ctx, CheckSongsByHashRequest request) =>
      _client.invoke<CheckSongsByHashResponse>(ctx, 'SongService',
          'CheckSongsByHash', request, CheckSongsByHashResponse());

  /// 发布新歌曲
  $async.Future<PublishSongResponse> publishSong(
          $pb.ClientContext? ctx, PublishSongRequest request) =>
      _client.invoke<PublishSongResponse>(
          ctx, 'SongService', 'PublishSong', request, PublishSongResponse());

  /// 更新歌曲元数据
  $async.Future<UpdateSongResponse> updateSong(
          $pb.ClientContext? ctx, UpdateSongRequest request) =>
      _client.invoke<UpdateSongResponse>(
          ctx, 'SongService', 'UpdateSong', request, UpdateSongResponse());

  /// 删除歌曲
  $async.Future<DeleteSongResponse> deleteSong(
          $pb.ClientContext? ctx, DeleteSongRequest request) =>
      _client.invoke<DeleteSongResponse>(
          ctx, 'SongService', 'DeleteSong', request, DeleteSongResponse());

  /// 获取歌曲详情
  $async.Future<GetSongResponse> getSong(
          $pb.ClientContext? ctx, GetSongRequest request) =>
      _client.invoke<GetSongResponse>(
          ctx, 'SongService', 'GetSong', request, GetSongResponse());

  /// 获取歌曲列表（支持分页）
  $async.Future<ListSongsResponse> listSongs(
          $pb.ClientContext? ctx, ListSongsRequest request) =>
      _client.invoke<ListSongsResponse>(
          ctx, 'SongService', 'ListSongs', request, ListSongsResponse());

  /// 搜索歌曲
  $async.Future<SearchSongsResponse> searchSongs(
          $pb.ClientContext? ctx, SearchSongsRequest request) =>
      _client.invoke<SearchSongsResponse>(
          ctx, 'SongService', 'SearchSongs', request, SearchSongsResponse());

  /// 获取某个设备上的本地歌曲
  $async.Future<ListDeviceLocalSongsResponse> listDeviceLocalSongs(
          $pb.ClientContext? ctx, ListDeviceLocalSongsRequest request) =>
      _client.invoke<ListDeviceLocalSongsResponse>(ctx, 'SongService',
          'ListDeviceLocalSongs', request, ListDeviceLocalSongsResponse());
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
