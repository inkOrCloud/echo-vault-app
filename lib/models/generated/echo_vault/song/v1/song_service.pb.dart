///
//  Generated code. Do not modify.
//  source: echo_vault/song/v1/song_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../../../google/protobuf/timestamp.pb.dart' as $0;
import '../../common/v1/types.pb.dart' as $1;

import '../../common/v1/types.pbenum.dart' as $1;

class Song extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Song', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'echo_vault.song.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'title')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'artist')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'album')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'genre')
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'trackNumber', $pb.PbFieldType.O3)
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'discNumber', $pb.PbFieldType.O3)
    ..a<$core.int>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'durationMs', $pb.PbFieldType.O3)
    ..a<$core.int>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'year', $pb.PbFieldType.O3)
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fileName')
    ..aInt64(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fileSize')
    ..aOS(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fileHash')
    ..aOS(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mimeType')
    ..a<$core.int>(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bitrate', $pb.PbFieldType.O3)
    ..a<$core.int>(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sampleRate', $pb.PbFieldType.O3)
    ..e<$1.FileSource>(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'source', $pb.PbFieldType.OE, defaultOrMaker: $1.FileSource.FILE_SOURCE_UNSPECIFIED, valueOf: $1.FileSource.valueOf, enumValues: $1.FileSource.values)
    ..e<$1.FileStatus>(17, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fileStatus', $pb.PbFieldType.OE, defaultOrMaker: $1.FileStatus.FILE_STATUS_UNSPECIFIED, valueOf: $1.FileStatus.valueOf, enumValues: $1.FileStatus.values)
    ..aOS(18, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ownerId')
    ..aInt64(19, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'version')
    ..aOB(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isDeleted')
    ..aOM<$0.Timestamp>(21, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdAt', subBuilder: $0.Timestamp.create)
    ..aOM<$0.Timestamp>(22, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updatedAt', subBuilder: $0.Timestamp.create)
    ..aOS(23, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'coverUrl')
    ..aOS(24, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'audioUrl')
    ..hasRequiredFields = false
  ;

  Song._() : super();
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
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (title != null) {
      _result.title = title;
    }
    if (artist != null) {
      _result.artist = artist;
    }
    if (album != null) {
      _result.album = album;
    }
    if (genre != null) {
      _result.genre = genre;
    }
    if (trackNumber != null) {
      _result.trackNumber = trackNumber;
    }
    if (discNumber != null) {
      _result.discNumber = discNumber;
    }
    if (durationMs != null) {
      _result.durationMs = durationMs;
    }
    if (year != null) {
      _result.year = year;
    }
    if (fileName != null) {
      _result.fileName = fileName;
    }
    if (fileSize != null) {
      _result.fileSize = fileSize;
    }
    if (fileHash != null) {
      _result.fileHash = fileHash;
    }
    if (mimeType != null) {
      _result.mimeType = mimeType;
    }
    if (bitrate != null) {
      _result.bitrate = bitrate;
    }
    if (sampleRate != null) {
      _result.sampleRate = sampleRate;
    }
    if (source != null) {
      _result.source = source;
    }
    if (fileStatus != null) {
      _result.fileStatus = fileStatus;
    }
    if (ownerId != null) {
      _result.ownerId = ownerId;
    }
    if (version != null) {
      _result.version = version;
    }
    if (isDeleted != null) {
      _result.isDeleted = isDeleted;
    }
    if (createdAt != null) {
      _result.createdAt = createdAt;
    }
    if (updatedAt != null) {
      _result.updatedAt = updatedAt;
    }
    if (coverUrl != null) {
      _result.coverUrl = coverUrl;
    }
    if (audioUrl != null) {
      _result.audioUrl = audioUrl;
    }
    return _result;
  }
  factory Song.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Song.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Song clone() => Song()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Song copyWith(void Function(Song) updates) => super.copyWith((message) => updates(message as Song)) as Song; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Song create() => Song._();
  Song createEmptyInstance() => create();
  static $pb.PbList<Song> createRepeated() => $pb.PbList<Song>();
  @$core.pragma('dart2js:noInline')
  static Song getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Song>(create);
  static Song? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get artist => $_getSZ(2);
  @$pb.TagNumber(3)
  set artist($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasArtist() => $_has(2);
  @$pb.TagNumber(3)
  void clearArtist() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get album => $_getSZ(3);
  @$pb.TagNumber(4)
  set album($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAlbum() => $_has(3);
  @$pb.TagNumber(4)
  void clearAlbum() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get genre => $_getSZ(4);
  @$pb.TagNumber(5)
  set genre($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasGenre() => $_has(4);
  @$pb.TagNumber(5)
  void clearGenre() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get trackNumber => $_getIZ(5);
  @$pb.TagNumber(6)
  set trackNumber($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasTrackNumber() => $_has(5);
  @$pb.TagNumber(6)
  void clearTrackNumber() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get discNumber => $_getIZ(6);
  @$pb.TagNumber(7)
  set discNumber($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasDiscNumber() => $_has(6);
  @$pb.TagNumber(7)
  void clearDiscNumber() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get durationMs => $_getIZ(7);
  @$pb.TagNumber(8)
  set durationMs($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasDurationMs() => $_has(7);
  @$pb.TagNumber(8)
  void clearDurationMs() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get year => $_getIZ(8);
  @$pb.TagNumber(9)
  set year($core.int v) { $_setSignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasYear() => $_has(8);
  @$pb.TagNumber(9)
  void clearYear() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get fileName => $_getSZ(9);
  @$pb.TagNumber(10)
  set fileName($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasFileName() => $_has(9);
  @$pb.TagNumber(10)
  void clearFileName() => clearField(10);

  @$pb.TagNumber(11)
  $fixnum.Int64 get fileSize => $_getI64(10);
  @$pb.TagNumber(11)
  set fileSize($fixnum.Int64 v) { $_setInt64(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasFileSize() => $_has(10);
  @$pb.TagNumber(11)
  void clearFileSize() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get fileHash => $_getSZ(11);
  @$pb.TagNumber(12)
  set fileHash($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasFileHash() => $_has(11);
  @$pb.TagNumber(12)
  void clearFileHash() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get mimeType => $_getSZ(12);
  @$pb.TagNumber(13)
  set mimeType($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasMimeType() => $_has(12);
  @$pb.TagNumber(13)
  void clearMimeType() => clearField(13);

  @$pb.TagNumber(14)
  $core.int get bitrate => $_getIZ(13);
  @$pb.TagNumber(14)
  set bitrate($core.int v) { $_setSignedInt32(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasBitrate() => $_has(13);
  @$pb.TagNumber(14)
  void clearBitrate() => clearField(14);

  @$pb.TagNumber(15)
  $core.int get sampleRate => $_getIZ(14);
  @$pb.TagNumber(15)
  set sampleRate($core.int v) { $_setSignedInt32(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasSampleRate() => $_has(14);
  @$pb.TagNumber(15)
  void clearSampleRate() => clearField(15);

  @$pb.TagNumber(16)
  $1.FileSource get source => $_getN(15);
  @$pb.TagNumber(16)
  set source($1.FileSource v) { setField(16, v); }
  @$pb.TagNumber(16)
  $core.bool hasSource() => $_has(15);
  @$pb.TagNumber(16)
  void clearSource() => clearField(16);

  @$pb.TagNumber(17)
  $1.FileStatus get fileStatus => $_getN(16);
  @$pb.TagNumber(17)
  set fileStatus($1.FileStatus v) { setField(17, v); }
  @$pb.TagNumber(17)
  $core.bool hasFileStatus() => $_has(16);
  @$pb.TagNumber(17)
  void clearFileStatus() => clearField(17);

  @$pb.TagNumber(18)
  $core.String get ownerId => $_getSZ(17);
  @$pb.TagNumber(18)
  set ownerId($core.String v) { $_setString(17, v); }
  @$pb.TagNumber(18)
  $core.bool hasOwnerId() => $_has(17);
  @$pb.TagNumber(18)
  void clearOwnerId() => clearField(18);

  @$pb.TagNumber(19)
  $fixnum.Int64 get version => $_getI64(18);
  @$pb.TagNumber(19)
  set version($fixnum.Int64 v) { $_setInt64(18, v); }
  @$pb.TagNumber(19)
  $core.bool hasVersion() => $_has(18);
  @$pb.TagNumber(19)
  void clearVersion() => clearField(19);

  @$pb.TagNumber(20)
  $core.bool get isDeleted => $_getBF(19);
  @$pb.TagNumber(20)
  set isDeleted($core.bool v) { $_setBool(19, v); }
  @$pb.TagNumber(20)
  $core.bool hasIsDeleted() => $_has(19);
  @$pb.TagNumber(20)
  void clearIsDeleted() => clearField(20);

  @$pb.TagNumber(21)
  $0.Timestamp get createdAt => $_getN(20);
  @$pb.TagNumber(21)
  set createdAt($0.Timestamp v) { setField(21, v); }
  @$pb.TagNumber(21)
  $core.bool hasCreatedAt() => $_has(20);
  @$pb.TagNumber(21)
  void clearCreatedAt() => clearField(21);
  @$pb.TagNumber(21)
  $0.Timestamp ensureCreatedAt() => $_ensure(20);

  @$pb.TagNumber(22)
  $0.Timestamp get updatedAt => $_getN(21);
  @$pb.TagNumber(22)
  set updatedAt($0.Timestamp v) { setField(22, v); }
  @$pb.TagNumber(22)
  $core.bool hasUpdatedAt() => $_has(21);
  @$pb.TagNumber(22)
  void clearUpdatedAt() => clearField(22);
  @$pb.TagNumber(22)
  $0.Timestamp ensureUpdatedAt() => $_ensure(21);

  @$pb.TagNumber(23)
  $core.String get coverUrl => $_getSZ(22);
  @$pb.TagNumber(23)
  set coverUrl($core.String v) { $_setString(22, v); }
  @$pb.TagNumber(23)
  $core.bool hasCoverUrl() => $_has(22);
  @$pb.TagNumber(23)
  void clearCoverUrl() => clearField(23);

  @$pb.TagNumber(24)
  $core.String get audioUrl => $_getSZ(23);
  @$pb.TagNumber(24)
  set audioUrl($core.String v) { $_setString(23, v); }
  @$pb.TagNumber(24)
  $core.bool hasAudioUrl() => $_has(23);
  @$pb.TagNumber(24)
  void clearAudioUrl() => clearField(24);
}

class CheckSongsByHashRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CheckSongsByHashRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'echo_vault.song.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deviceId')
    ..pPS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fileHashes')
    ..hasRequiredFields = false
  ;

  CheckSongsByHashRequest._() : super();
  factory CheckSongsByHashRequest({
    $core.String? deviceId,
    $core.Iterable<$core.String>? fileHashes,
  }) {
    final _result = create();
    if (deviceId != null) {
      _result.deviceId = deviceId;
    }
    if (fileHashes != null) {
      _result.fileHashes.addAll(fileHashes);
    }
    return _result;
  }
  factory CheckSongsByHashRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CheckSongsByHashRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CheckSongsByHashRequest clone() => CheckSongsByHashRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CheckSongsByHashRequest copyWith(void Function(CheckSongsByHashRequest) updates) => super.copyWith((message) => updates(message as CheckSongsByHashRequest)) as CheckSongsByHashRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CheckSongsByHashRequest create() => CheckSongsByHashRequest._();
  CheckSongsByHashRequest createEmptyInstance() => create();
  static $pb.PbList<CheckSongsByHashRequest> createRepeated() => $pb.PbList<CheckSongsByHashRequest>();
  @$core.pragma('dart2js:noInline')
  static CheckSongsByHashRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CheckSongsByHashRequest>(create);
  static CheckSongsByHashRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get deviceId => $_getSZ(0);
  @$pb.TagNumber(1)
  set deviceId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDeviceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDeviceId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.String> get fileHashes => $_getList(1);
}

class CheckSongsByHashResponse_Result extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CheckSongsByHashResponse.Result', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'echo_vault.song.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fileHash')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'exists')
    ..aOM<Song>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'song', subBuilder: Song.create)
    ..hasRequiredFields = false
  ;

  CheckSongsByHashResponse_Result._() : super();
  factory CheckSongsByHashResponse_Result({
    $core.String? fileHash,
    $core.bool? exists,
    Song? song,
  }) {
    final _result = create();
    if (fileHash != null) {
      _result.fileHash = fileHash;
    }
    if (exists != null) {
      _result.exists = exists;
    }
    if (song != null) {
      _result.song = song;
    }
    return _result;
  }
  factory CheckSongsByHashResponse_Result.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CheckSongsByHashResponse_Result.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CheckSongsByHashResponse_Result clone() => CheckSongsByHashResponse_Result()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CheckSongsByHashResponse_Result copyWith(void Function(CheckSongsByHashResponse_Result) updates) => super.copyWith((message) => updates(message as CheckSongsByHashResponse_Result)) as CheckSongsByHashResponse_Result; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CheckSongsByHashResponse_Result create() => CheckSongsByHashResponse_Result._();
  CheckSongsByHashResponse_Result createEmptyInstance() => create();
  static $pb.PbList<CheckSongsByHashResponse_Result> createRepeated() => $pb.PbList<CheckSongsByHashResponse_Result>();
  @$core.pragma('dart2js:noInline')
  static CheckSongsByHashResponse_Result getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CheckSongsByHashResponse_Result>(create);
  static CheckSongsByHashResponse_Result? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get fileHash => $_getSZ(0);
  @$pb.TagNumber(1)
  set fileHash($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFileHash() => $_has(0);
  @$pb.TagNumber(1)
  void clearFileHash() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get exists => $_getBF(1);
  @$pb.TagNumber(2)
  set exists($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasExists() => $_has(1);
  @$pb.TagNumber(2)
  void clearExists() => clearField(2);

  @$pb.TagNumber(3)
  Song get song => $_getN(2);
  @$pb.TagNumber(3)
  set song(Song v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasSong() => $_has(2);
  @$pb.TagNumber(3)
  void clearSong() => clearField(3);
  @$pb.TagNumber(3)
  Song ensureSong() => $_ensure(2);
}

class CheckSongsByHashResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CheckSongsByHashResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'echo_vault.song.v1'), createEmptyInstance: create)
    ..pc<CheckSongsByHashResponse_Result>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'results', $pb.PbFieldType.PM, subBuilder: CheckSongsByHashResponse_Result.create)
    ..hasRequiredFields = false
  ;

  CheckSongsByHashResponse._() : super();
  factory CheckSongsByHashResponse({
    $core.Iterable<CheckSongsByHashResponse_Result>? results,
  }) {
    final _result = create();
    if (results != null) {
      _result.results.addAll(results);
    }
    return _result;
  }
  factory CheckSongsByHashResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CheckSongsByHashResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CheckSongsByHashResponse clone() => CheckSongsByHashResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CheckSongsByHashResponse copyWith(void Function(CheckSongsByHashResponse) updates) => super.copyWith((message) => updates(message as CheckSongsByHashResponse)) as CheckSongsByHashResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CheckSongsByHashResponse create() => CheckSongsByHashResponse._();
  CheckSongsByHashResponse createEmptyInstance() => create();
  static $pb.PbList<CheckSongsByHashResponse> createRepeated() => $pb.PbList<CheckSongsByHashResponse>();
  @$core.pragma('dart2js:noInline')
  static CheckSongsByHashResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CheckSongsByHashResponse>(create);
  static CheckSongsByHashResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<CheckSongsByHashResponse_Result> get results => $_getList(0);
}

class PublishSongRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PublishSongRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'echo_vault.song.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fileHash')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'title')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'artist')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'album')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'genre')
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'trackNumber', $pb.PbFieldType.O3)
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'discNumber', $pb.PbFieldType.O3)
    ..a<$core.int>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'year', $pb.PbFieldType.O3)
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fileName')
    ..aInt64(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fileSize')
    ..aOS(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mimeType')
    ..hasRequiredFields = false
  ;

  PublishSongRequest._() : super();
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
    final _result = create();
    if (fileHash != null) {
      _result.fileHash = fileHash;
    }
    if (title != null) {
      _result.title = title;
    }
    if (artist != null) {
      _result.artist = artist;
    }
    if (album != null) {
      _result.album = album;
    }
    if (genre != null) {
      _result.genre = genre;
    }
    if (trackNumber != null) {
      _result.trackNumber = trackNumber;
    }
    if (discNumber != null) {
      _result.discNumber = discNumber;
    }
    if (year != null) {
      _result.year = year;
    }
    if (fileName != null) {
      _result.fileName = fileName;
    }
    if (fileSize != null) {
      _result.fileSize = fileSize;
    }
    if (mimeType != null) {
      _result.mimeType = mimeType;
    }
    return _result;
  }
  factory PublishSongRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PublishSongRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PublishSongRequest clone() => PublishSongRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PublishSongRequest copyWith(void Function(PublishSongRequest) updates) => super.copyWith((message) => updates(message as PublishSongRequest)) as PublishSongRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PublishSongRequest create() => PublishSongRequest._();
  PublishSongRequest createEmptyInstance() => create();
  static $pb.PbList<PublishSongRequest> createRepeated() => $pb.PbList<PublishSongRequest>();
  @$core.pragma('dart2js:noInline')
  static PublishSongRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PublishSongRequest>(create);
  static PublishSongRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get fileHash => $_getSZ(0);
  @$pb.TagNumber(1)
  set fileHash($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFileHash() => $_has(0);
  @$pb.TagNumber(1)
  void clearFileHash() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get artist => $_getSZ(2);
  @$pb.TagNumber(3)
  set artist($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasArtist() => $_has(2);
  @$pb.TagNumber(3)
  void clearArtist() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get album => $_getSZ(3);
  @$pb.TagNumber(4)
  set album($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAlbum() => $_has(3);
  @$pb.TagNumber(4)
  void clearAlbum() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get genre => $_getSZ(4);
  @$pb.TagNumber(5)
  set genre($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasGenre() => $_has(4);
  @$pb.TagNumber(5)
  void clearGenre() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get trackNumber => $_getIZ(5);
  @$pb.TagNumber(6)
  set trackNumber($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasTrackNumber() => $_has(5);
  @$pb.TagNumber(6)
  void clearTrackNumber() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get discNumber => $_getIZ(6);
  @$pb.TagNumber(7)
  set discNumber($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasDiscNumber() => $_has(6);
  @$pb.TagNumber(7)
  void clearDiscNumber() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get year => $_getIZ(7);
  @$pb.TagNumber(8)
  set year($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasYear() => $_has(7);
  @$pb.TagNumber(8)
  void clearYear() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get fileName => $_getSZ(8);
  @$pb.TagNumber(9)
  set fileName($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasFileName() => $_has(8);
  @$pb.TagNumber(9)
  void clearFileName() => clearField(9);

  @$pb.TagNumber(10)
  $fixnum.Int64 get fileSize => $_getI64(9);
  @$pb.TagNumber(10)
  set fileSize($fixnum.Int64 v) { $_setInt64(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasFileSize() => $_has(9);
  @$pb.TagNumber(10)
  void clearFileSize() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get mimeType => $_getSZ(10);
  @$pb.TagNumber(11)
  set mimeType($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasMimeType() => $_has(10);
  @$pb.TagNumber(11)
  void clearMimeType() => clearField(11);
}

class PublishSongResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PublishSongResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'echo_vault.song.v1'), createEmptyInstance: create)
    ..aOM<Song>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'song', subBuilder: Song.create)
    ..hasRequiredFields = false
  ;

  PublishSongResponse._() : super();
  factory PublishSongResponse({
    Song? song,
  }) {
    final _result = create();
    if (song != null) {
      _result.song = song;
    }
    return _result;
  }
  factory PublishSongResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PublishSongResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PublishSongResponse clone() => PublishSongResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PublishSongResponse copyWith(void Function(PublishSongResponse) updates) => super.copyWith((message) => updates(message as PublishSongResponse)) as PublishSongResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PublishSongResponse create() => PublishSongResponse._();
  PublishSongResponse createEmptyInstance() => create();
  static $pb.PbList<PublishSongResponse> createRepeated() => $pb.PbList<PublishSongResponse>();
  @$core.pragma('dart2js:noInline')
  static PublishSongResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PublishSongResponse>(create);
  static PublishSongResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Song get song => $_getN(0);
  @$pb.TagNumber(1)
  set song(Song v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSong() => $_has(0);
  @$pb.TagNumber(1)
  void clearSong() => clearField(1);
  @$pb.TagNumber(1)
  Song ensureSong() => $_ensure(0);
}

class UpdateSongRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateSongRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'echo_vault.song.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'title')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'artist')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'album')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'genre')
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'trackNumber', $pb.PbFieldType.O3)
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'discNumber', $pb.PbFieldType.O3)
    ..a<$core.int>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'year', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  UpdateSongRequest._() : super();
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
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (title != null) {
      _result.title = title;
    }
    if (artist != null) {
      _result.artist = artist;
    }
    if (album != null) {
      _result.album = album;
    }
    if (genre != null) {
      _result.genre = genre;
    }
    if (trackNumber != null) {
      _result.trackNumber = trackNumber;
    }
    if (discNumber != null) {
      _result.discNumber = discNumber;
    }
    if (year != null) {
      _result.year = year;
    }
    return _result;
  }
  factory UpdateSongRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateSongRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateSongRequest clone() => UpdateSongRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateSongRequest copyWith(void Function(UpdateSongRequest) updates) => super.copyWith((message) => updates(message as UpdateSongRequest)) as UpdateSongRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateSongRequest create() => UpdateSongRequest._();
  UpdateSongRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateSongRequest> createRepeated() => $pb.PbList<UpdateSongRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateSongRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateSongRequest>(create);
  static UpdateSongRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get artist => $_getSZ(2);
  @$pb.TagNumber(3)
  set artist($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasArtist() => $_has(2);
  @$pb.TagNumber(3)
  void clearArtist() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get album => $_getSZ(3);
  @$pb.TagNumber(4)
  set album($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAlbum() => $_has(3);
  @$pb.TagNumber(4)
  void clearAlbum() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get genre => $_getSZ(4);
  @$pb.TagNumber(5)
  set genre($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasGenre() => $_has(4);
  @$pb.TagNumber(5)
  void clearGenre() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get trackNumber => $_getIZ(5);
  @$pb.TagNumber(6)
  set trackNumber($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasTrackNumber() => $_has(5);
  @$pb.TagNumber(6)
  void clearTrackNumber() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get discNumber => $_getIZ(6);
  @$pb.TagNumber(7)
  set discNumber($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasDiscNumber() => $_has(6);
  @$pb.TagNumber(7)
  void clearDiscNumber() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get year => $_getIZ(7);
  @$pb.TagNumber(8)
  set year($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasYear() => $_has(7);
  @$pb.TagNumber(8)
  void clearYear() => clearField(8);
}

class UpdateSongResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateSongResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'echo_vault.song.v1'), createEmptyInstance: create)
    ..aOM<Song>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'song', subBuilder: Song.create)
    ..hasRequiredFields = false
  ;

  UpdateSongResponse._() : super();
  factory UpdateSongResponse({
    Song? song,
  }) {
    final _result = create();
    if (song != null) {
      _result.song = song;
    }
    return _result;
  }
  factory UpdateSongResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateSongResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateSongResponse clone() => UpdateSongResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateSongResponse copyWith(void Function(UpdateSongResponse) updates) => super.copyWith((message) => updates(message as UpdateSongResponse)) as UpdateSongResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateSongResponse create() => UpdateSongResponse._();
  UpdateSongResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateSongResponse> createRepeated() => $pb.PbList<UpdateSongResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateSongResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateSongResponse>(create);
  static UpdateSongResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Song get song => $_getN(0);
  @$pb.TagNumber(1)
  set song(Song v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSong() => $_has(0);
  @$pb.TagNumber(1)
  void clearSong() => clearField(1);
  @$pb.TagNumber(1)
  Song ensureSong() => $_ensure(0);
}

class DeleteSongRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeleteSongRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'echo_vault.song.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  DeleteSongRequest._() : super();
  factory DeleteSongRequest({
    $core.String? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory DeleteSongRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteSongRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteSongRequest clone() => DeleteSongRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteSongRequest copyWith(void Function(DeleteSongRequest) updates) => super.copyWith((message) => updates(message as DeleteSongRequest)) as DeleteSongRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteSongRequest create() => DeleteSongRequest._();
  DeleteSongRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteSongRequest> createRepeated() => $pb.PbList<DeleteSongRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteSongRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteSongRequest>(create);
  static DeleteSongRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class DeleteSongResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeleteSongResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'echo_vault.song.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  DeleteSongResponse._() : super();
  factory DeleteSongResponse() => create();
  factory DeleteSongResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteSongResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteSongResponse clone() => DeleteSongResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteSongResponse copyWith(void Function(DeleteSongResponse) updates) => super.copyWith((message) => updates(message as DeleteSongResponse)) as DeleteSongResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteSongResponse create() => DeleteSongResponse._();
  DeleteSongResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteSongResponse> createRepeated() => $pb.PbList<DeleteSongResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteSongResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteSongResponse>(create);
  static DeleteSongResponse? _defaultInstance;
}

class GetSongRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetSongRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'echo_vault.song.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  GetSongRequest._() : super();
  factory GetSongRequest({
    $core.String? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory GetSongRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetSongRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetSongRequest clone() => GetSongRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetSongRequest copyWith(void Function(GetSongRequest) updates) => super.copyWith((message) => updates(message as GetSongRequest)) as GetSongRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetSongRequest create() => GetSongRequest._();
  GetSongRequest createEmptyInstance() => create();
  static $pb.PbList<GetSongRequest> createRepeated() => $pb.PbList<GetSongRequest>();
  @$core.pragma('dart2js:noInline')
  static GetSongRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetSongRequest>(create);
  static GetSongRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class GetSongResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetSongResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'echo_vault.song.v1'), createEmptyInstance: create)
    ..aOM<Song>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'song', subBuilder: Song.create)
    ..hasRequiredFields = false
  ;

  GetSongResponse._() : super();
  factory GetSongResponse({
    Song? song,
  }) {
    final _result = create();
    if (song != null) {
      _result.song = song;
    }
    return _result;
  }
  factory GetSongResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetSongResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetSongResponse clone() => GetSongResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetSongResponse copyWith(void Function(GetSongResponse) updates) => super.copyWith((message) => updates(message as GetSongResponse)) as GetSongResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetSongResponse create() => GetSongResponse._();
  GetSongResponse createEmptyInstance() => create();
  static $pb.PbList<GetSongResponse> createRepeated() => $pb.PbList<GetSongResponse>();
  @$core.pragma('dart2js:noInline')
  static GetSongResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetSongResponse>(create);
  static GetSongResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Song get song => $_getN(0);
  @$pb.TagNumber(1)
  set song(Song v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSong() => $_has(0);
  @$pb.TagNumber(1)
  void clearSong() => clearField(1);
  @$pb.TagNumber(1)
  Song ensureSong() => $_ensure(0);
}

class ListSongsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListSongsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'echo_vault.song.v1'), createEmptyInstance: create)
    ..aOM<$1.PaginationRequest>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pagination', subBuilder: $1.PaginationRequest.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ownerId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sortBy')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sortOrder')
    ..hasRequiredFields = false
  ;

  ListSongsRequest._() : super();
  factory ListSongsRequest({
    $1.PaginationRequest? pagination,
    $core.String? ownerId,
    $core.String? sortBy,
    $core.String? sortOrder,
  }) {
    final _result = create();
    if (pagination != null) {
      _result.pagination = pagination;
    }
    if (ownerId != null) {
      _result.ownerId = ownerId;
    }
    if (sortBy != null) {
      _result.sortBy = sortBy;
    }
    if (sortOrder != null) {
      _result.sortOrder = sortOrder;
    }
    return _result;
  }
  factory ListSongsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListSongsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListSongsRequest clone() => ListSongsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListSongsRequest copyWith(void Function(ListSongsRequest) updates) => super.copyWith((message) => updates(message as ListSongsRequest)) as ListSongsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListSongsRequest create() => ListSongsRequest._();
  ListSongsRequest createEmptyInstance() => create();
  static $pb.PbList<ListSongsRequest> createRepeated() => $pb.PbList<ListSongsRequest>();
  @$core.pragma('dart2js:noInline')
  static ListSongsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListSongsRequest>(create);
  static ListSongsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $1.PaginationRequest get pagination => $_getN(0);
  @$pb.TagNumber(1)
  set pagination($1.PaginationRequest v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPagination() => $_has(0);
  @$pb.TagNumber(1)
  void clearPagination() => clearField(1);
  @$pb.TagNumber(1)
  $1.PaginationRequest ensurePagination() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get ownerId => $_getSZ(1);
  @$pb.TagNumber(2)
  set ownerId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOwnerId() => $_has(1);
  @$pb.TagNumber(2)
  void clearOwnerId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get sortBy => $_getSZ(2);
  @$pb.TagNumber(3)
  set sortBy($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSortBy() => $_has(2);
  @$pb.TagNumber(3)
  void clearSortBy() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get sortOrder => $_getSZ(3);
  @$pb.TagNumber(4)
  set sortOrder($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSortOrder() => $_has(3);
  @$pb.TagNumber(4)
  void clearSortOrder() => clearField(4);
}

class ListSongsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListSongsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'echo_vault.song.v1'), createEmptyInstance: create)
    ..pc<Song>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'songs', $pb.PbFieldType.PM, subBuilder: Song.create)
    ..aOM<$1.PaginationResponse>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pagination', subBuilder: $1.PaginationResponse.create)
    ..hasRequiredFields = false
  ;

  ListSongsResponse._() : super();
  factory ListSongsResponse({
    $core.Iterable<Song>? songs,
    $1.PaginationResponse? pagination,
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
  factory ListSongsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListSongsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListSongsResponse clone() => ListSongsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListSongsResponse copyWith(void Function(ListSongsResponse) updates) => super.copyWith((message) => updates(message as ListSongsResponse)) as ListSongsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListSongsResponse create() => ListSongsResponse._();
  ListSongsResponse createEmptyInstance() => create();
  static $pb.PbList<ListSongsResponse> createRepeated() => $pb.PbList<ListSongsResponse>();
  @$core.pragma('dart2js:noInline')
  static ListSongsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListSongsResponse>(create);
  static ListSongsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Song> get songs => $_getList(0);

  @$pb.TagNumber(2)
  $1.PaginationResponse get pagination => $_getN(1);
  @$pb.TagNumber(2)
  set pagination($1.PaginationResponse v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPagination() => $_has(1);
  @$pb.TagNumber(2)
  void clearPagination() => clearField(2);
  @$pb.TagNumber(2)
  $1.PaginationResponse ensurePagination() => $_ensure(1);
}

class SearchSongsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SearchSongsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'echo_vault.song.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'query')
    ..aOM<$1.PaginationRequest>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pagination', subBuilder: $1.PaginationRequest.create)
    ..hasRequiredFields = false
  ;

  SearchSongsRequest._() : super();
  factory SearchSongsRequest({
    $core.String? query,
    $1.PaginationRequest? pagination,
  }) {
    final _result = create();
    if (query != null) {
      _result.query = query;
    }
    if (pagination != null) {
      _result.pagination = pagination;
    }
    return _result;
  }
  factory SearchSongsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SearchSongsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SearchSongsRequest clone() => SearchSongsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SearchSongsRequest copyWith(void Function(SearchSongsRequest) updates) => super.copyWith((message) => updates(message as SearchSongsRequest)) as SearchSongsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SearchSongsRequest create() => SearchSongsRequest._();
  SearchSongsRequest createEmptyInstance() => create();
  static $pb.PbList<SearchSongsRequest> createRepeated() => $pb.PbList<SearchSongsRequest>();
  @$core.pragma('dart2js:noInline')
  static SearchSongsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SearchSongsRequest>(create);
  static SearchSongsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get query => $_getSZ(0);
  @$pb.TagNumber(1)
  set query($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasQuery() => $_has(0);
  @$pb.TagNumber(1)
  void clearQuery() => clearField(1);

  @$pb.TagNumber(2)
  $1.PaginationRequest get pagination => $_getN(1);
  @$pb.TagNumber(2)
  set pagination($1.PaginationRequest v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPagination() => $_has(1);
  @$pb.TagNumber(2)
  void clearPagination() => clearField(2);
  @$pb.TagNumber(2)
  $1.PaginationRequest ensurePagination() => $_ensure(1);
}

class SearchSongsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SearchSongsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'echo_vault.song.v1'), createEmptyInstance: create)
    ..pc<Song>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'songs', $pb.PbFieldType.PM, subBuilder: Song.create)
    ..aOM<$1.PaginationResponse>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pagination', subBuilder: $1.PaginationResponse.create)
    ..hasRequiredFields = false
  ;

  SearchSongsResponse._() : super();
  factory SearchSongsResponse({
    $core.Iterable<Song>? songs,
    $1.PaginationResponse? pagination,
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
  factory SearchSongsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SearchSongsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SearchSongsResponse clone() => SearchSongsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SearchSongsResponse copyWith(void Function(SearchSongsResponse) updates) => super.copyWith((message) => updates(message as SearchSongsResponse)) as SearchSongsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SearchSongsResponse create() => SearchSongsResponse._();
  SearchSongsResponse createEmptyInstance() => create();
  static $pb.PbList<SearchSongsResponse> createRepeated() => $pb.PbList<SearchSongsResponse>();
  @$core.pragma('dart2js:noInline')
  static SearchSongsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SearchSongsResponse>(create);
  static SearchSongsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Song> get songs => $_getList(0);

  @$pb.TagNumber(2)
  $1.PaginationResponse get pagination => $_getN(1);
  @$pb.TagNumber(2)
  set pagination($1.PaginationResponse v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPagination() => $_has(1);
  @$pb.TagNumber(2)
  void clearPagination() => clearField(2);
  @$pb.TagNumber(2)
  $1.PaginationResponse ensurePagination() => $_ensure(1);
}

class ListDeviceLocalSongsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListDeviceLocalSongsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'echo_vault.song.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deviceId')
    ..hasRequiredFields = false
  ;

  ListDeviceLocalSongsRequest._() : super();
  factory ListDeviceLocalSongsRequest({
    $core.String? deviceId,
  }) {
    final _result = create();
    if (deviceId != null) {
      _result.deviceId = deviceId;
    }
    return _result;
  }
  factory ListDeviceLocalSongsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListDeviceLocalSongsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListDeviceLocalSongsRequest clone() => ListDeviceLocalSongsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListDeviceLocalSongsRequest copyWith(void Function(ListDeviceLocalSongsRequest) updates) => super.copyWith((message) => updates(message as ListDeviceLocalSongsRequest)) as ListDeviceLocalSongsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListDeviceLocalSongsRequest create() => ListDeviceLocalSongsRequest._();
  ListDeviceLocalSongsRequest createEmptyInstance() => create();
  static $pb.PbList<ListDeviceLocalSongsRequest> createRepeated() => $pb.PbList<ListDeviceLocalSongsRequest>();
  @$core.pragma('dart2js:noInline')
  static ListDeviceLocalSongsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListDeviceLocalSongsRequest>(create);
  static ListDeviceLocalSongsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get deviceId => $_getSZ(0);
  @$pb.TagNumber(1)
  set deviceId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDeviceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDeviceId() => clearField(1);
}

class ListDeviceLocalSongsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListDeviceLocalSongsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'echo_vault.song.v1'), createEmptyInstance: create)
    ..pc<Song>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'songs', $pb.PbFieldType.PM, subBuilder: Song.create)
    ..hasRequiredFields = false
  ;

  ListDeviceLocalSongsResponse._() : super();
  factory ListDeviceLocalSongsResponse({
    $core.Iterable<Song>? songs,
  }) {
    final _result = create();
    if (songs != null) {
      _result.songs.addAll(songs);
    }
    return _result;
  }
  factory ListDeviceLocalSongsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListDeviceLocalSongsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListDeviceLocalSongsResponse clone() => ListDeviceLocalSongsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListDeviceLocalSongsResponse copyWith(void Function(ListDeviceLocalSongsResponse) updates) => super.copyWith((message) => updates(message as ListDeviceLocalSongsResponse)) as ListDeviceLocalSongsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListDeviceLocalSongsResponse create() => ListDeviceLocalSongsResponse._();
  ListDeviceLocalSongsResponse createEmptyInstance() => create();
  static $pb.PbList<ListDeviceLocalSongsResponse> createRepeated() => $pb.PbList<ListDeviceLocalSongsResponse>();
  @$core.pragma('dart2js:noInline')
  static ListDeviceLocalSongsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListDeviceLocalSongsResponse>(create);
  static ListDeviceLocalSongsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Song> get songs => $_getList(0);
}

class SongServiceApi {
  $pb.RpcClient _client;
  SongServiceApi(this._client);

  $async.Future<CheckSongsByHashResponse> checkSongsByHash($pb.ClientContext? ctx, CheckSongsByHashRequest request) {
    var emptyResponse = CheckSongsByHashResponse();
    return _client.invoke<CheckSongsByHashResponse>(ctx, 'SongService', 'CheckSongsByHash', request, emptyResponse);
  }
  $async.Future<PublishSongResponse> publishSong($pb.ClientContext? ctx, PublishSongRequest request) {
    var emptyResponse = PublishSongResponse();
    return _client.invoke<PublishSongResponse>(ctx, 'SongService', 'PublishSong', request, emptyResponse);
  }
  $async.Future<UpdateSongResponse> updateSong($pb.ClientContext? ctx, UpdateSongRequest request) {
    var emptyResponse = UpdateSongResponse();
    return _client.invoke<UpdateSongResponse>(ctx, 'SongService', 'UpdateSong', request, emptyResponse);
  }
  $async.Future<DeleteSongResponse> deleteSong($pb.ClientContext? ctx, DeleteSongRequest request) {
    var emptyResponse = DeleteSongResponse();
    return _client.invoke<DeleteSongResponse>(ctx, 'SongService', 'DeleteSong', request, emptyResponse);
  }
  $async.Future<GetSongResponse> getSong($pb.ClientContext? ctx, GetSongRequest request) {
    var emptyResponse = GetSongResponse();
    return _client.invoke<GetSongResponse>(ctx, 'SongService', 'GetSong', request, emptyResponse);
  }
  $async.Future<ListSongsResponse> listSongs($pb.ClientContext? ctx, ListSongsRequest request) {
    var emptyResponse = ListSongsResponse();
    return _client.invoke<ListSongsResponse>(ctx, 'SongService', 'ListSongs', request, emptyResponse);
  }
  $async.Future<SearchSongsResponse> searchSongs($pb.ClientContext? ctx, SearchSongsRequest request) {
    var emptyResponse = SearchSongsResponse();
    return _client.invoke<SearchSongsResponse>(ctx, 'SongService', 'SearchSongs', request, emptyResponse);
  }
  $async.Future<ListDeviceLocalSongsResponse> listDeviceLocalSongs($pb.ClientContext? ctx, ListDeviceLocalSongsRequest request) {
    var emptyResponse = ListDeviceLocalSongsResponse();
    return _client.invoke<ListDeviceLocalSongsResponse>(ctx, 'SongService', 'ListDeviceLocalSongs', request, emptyResponse);
  }
}

