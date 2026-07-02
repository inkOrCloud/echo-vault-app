///
//  Generated code. Do not modify.
//  source: echo_vault/lyric/v1/lyric_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../../../google/protobuf/timestamp.pb.dart' as $5;

import 'lyric_service.pbenum.dart';

export 'lyric_service.pbenum.dart';

class Lyric extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Lyric', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'echo_vault.lyric.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'songId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content')
    ..e<Lyric_Type>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: Lyric_Type.TYPE_UNSPECIFIED, valueOf: Lyric_Type.valueOf, enumValues: Lyric_Type.values)
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'language')
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'offsetMs', $pb.PbFieldType.O3)
    ..e<Lyric_Source>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'source', $pb.PbFieldType.OE, defaultOrMaker: Lyric_Source.SOURCE_UNSPECIFIED, valueOf: Lyric_Source.valueOf, enumValues: Lyric_Source.values)
    ..aInt64(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'version')
    ..aOM<$5.Timestamp>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updatedAt', subBuilder: $5.Timestamp.create)
    ..hasRequiredFields = false
  ;

  Lyric._() : super();
  factory Lyric({
    $core.String? songId,
    $core.String? content,
    Lyric_Type? type,
    $core.String? language,
    $core.int? offsetMs,
    Lyric_Source? source,
    $fixnum.Int64? version,
    $5.Timestamp? updatedAt,
  }) {
    final _result = create();
    if (songId != null) {
      _result.songId = songId;
    }
    if (content != null) {
      _result.content = content;
    }
    if (type != null) {
      _result.type = type;
    }
    if (language != null) {
      _result.language = language;
    }
    if (offsetMs != null) {
      _result.offsetMs = offsetMs;
    }
    if (source != null) {
      _result.source = source;
    }
    if (version != null) {
      _result.version = version;
    }
    if (updatedAt != null) {
      _result.updatedAt = updatedAt;
    }
    return _result;
  }
  factory Lyric.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Lyric.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Lyric clone() => Lyric()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Lyric copyWith(void Function(Lyric) updates) => super.copyWith((message) => updates(message as Lyric)) as Lyric; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Lyric create() => Lyric._();
  Lyric createEmptyInstance() => create();
  static $pb.PbList<Lyric> createRepeated() => $pb.PbList<Lyric>();
  @$core.pragma('dart2js:noInline')
  static Lyric getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Lyric>(create);
  static Lyric? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get songId => $_getSZ(0);
  @$pb.TagNumber(1)
  set songId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSongId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSongId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get content => $_getSZ(1);
  @$pb.TagNumber(2)
  set content($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);

  @$pb.TagNumber(3)
  Lyric_Type get type => $_getN(2);
  @$pb.TagNumber(3)
  set type(Lyric_Type v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasType() => $_has(2);
  @$pb.TagNumber(3)
  void clearType() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get language => $_getSZ(3);
  @$pb.TagNumber(4)
  set language($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLanguage() => $_has(3);
  @$pb.TagNumber(4)
  void clearLanguage() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get offsetMs => $_getIZ(4);
  @$pb.TagNumber(5)
  set offsetMs($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasOffsetMs() => $_has(4);
  @$pb.TagNumber(5)
  void clearOffsetMs() => clearField(5);

  @$pb.TagNumber(6)
  Lyric_Source get source => $_getN(5);
  @$pb.TagNumber(6)
  set source(Lyric_Source v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasSource() => $_has(5);
  @$pb.TagNumber(6)
  void clearSource() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get version => $_getI64(6);
  @$pb.TagNumber(7)
  set version($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasVersion() => $_has(6);
  @$pb.TagNumber(7)
  void clearVersion() => clearField(7);

  @$pb.TagNumber(8)
  $5.Timestamp get updatedAt => $_getN(7);
  @$pb.TagNumber(8)
  set updatedAt($5.Timestamp v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasUpdatedAt() => $_has(7);
  @$pb.TagNumber(8)
  void clearUpdatedAt() => clearField(8);
  @$pb.TagNumber(8)
  $5.Timestamp ensureUpdatedAt() => $_ensure(7);
}

class GetLyricRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetLyricRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'echo_vault.lyric.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'songId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'language')
    ..e<Lyric_Type>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: Lyric_Type.TYPE_UNSPECIFIED, valueOf: Lyric_Type.valueOf, enumValues: Lyric_Type.values)
    ..hasRequiredFields = false
  ;

  GetLyricRequest._() : super();
  factory GetLyricRequest({
    $core.String? songId,
    $core.String? language,
    Lyric_Type? type,
  }) {
    final _result = create();
    if (songId != null) {
      _result.songId = songId;
    }
    if (language != null) {
      _result.language = language;
    }
    if (type != null) {
      _result.type = type;
    }
    return _result;
  }
  factory GetLyricRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetLyricRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetLyricRequest clone() => GetLyricRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetLyricRequest copyWith(void Function(GetLyricRequest) updates) => super.copyWith((message) => updates(message as GetLyricRequest)) as GetLyricRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetLyricRequest create() => GetLyricRequest._();
  GetLyricRequest createEmptyInstance() => create();
  static $pb.PbList<GetLyricRequest> createRepeated() => $pb.PbList<GetLyricRequest>();
  @$core.pragma('dart2js:noInline')
  static GetLyricRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetLyricRequest>(create);
  static GetLyricRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get songId => $_getSZ(0);
  @$pb.TagNumber(1)
  set songId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSongId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSongId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get language => $_getSZ(1);
  @$pb.TagNumber(2)
  set language($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLanguage() => $_has(1);
  @$pb.TagNumber(2)
  void clearLanguage() => clearField(2);

  @$pb.TagNumber(3)
  Lyric_Type get type => $_getN(2);
  @$pb.TagNumber(3)
  set type(Lyric_Type v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasType() => $_has(2);
  @$pb.TagNumber(3)
  void clearType() => clearField(3);
}

class GetLyricResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetLyricResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'echo_vault.lyric.v1'), createEmptyInstance: create)
    ..pc<Lyric>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lyrics', $pb.PbFieldType.PM, subBuilder: Lyric.create)
    ..hasRequiredFields = false
  ;

  GetLyricResponse._() : super();
  factory GetLyricResponse({
    $core.Iterable<Lyric>? lyrics,
  }) {
    final _result = create();
    if (lyrics != null) {
      _result.lyrics.addAll(lyrics);
    }
    return _result;
  }
  factory GetLyricResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetLyricResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetLyricResponse clone() => GetLyricResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetLyricResponse copyWith(void Function(GetLyricResponse) updates) => super.copyWith((message) => updates(message as GetLyricResponse)) as GetLyricResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetLyricResponse create() => GetLyricResponse._();
  GetLyricResponse createEmptyInstance() => create();
  static $pb.PbList<GetLyricResponse> createRepeated() => $pb.PbList<GetLyricResponse>();
  @$core.pragma('dart2js:noInline')
  static GetLyricResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetLyricResponse>(create);
  static GetLyricResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Lyric> get lyrics => $_getList(0);
}

class SaveLyricRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SaveLyricRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'echo_vault.lyric.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'songId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content')
    ..e<Lyric_Type>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: Lyric_Type.TYPE_UNSPECIFIED, valueOf: Lyric_Type.valueOf, enumValues: Lyric_Type.values)
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'language')
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'offsetMs', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  SaveLyricRequest._() : super();
  factory SaveLyricRequest({
    $core.String? songId,
    $core.String? content,
    Lyric_Type? type,
    $core.String? language,
    $core.int? offsetMs,
  }) {
    final _result = create();
    if (songId != null) {
      _result.songId = songId;
    }
    if (content != null) {
      _result.content = content;
    }
    if (type != null) {
      _result.type = type;
    }
    if (language != null) {
      _result.language = language;
    }
    if (offsetMs != null) {
      _result.offsetMs = offsetMs;
    }
    return _result;
  }
  factory SaveLyricRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SaveLyricRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SaveLyricRequest clone() => SaveLyricRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SaveLyricRequest copyWith(void Function(SaveLyricRequest) updates) => super.copyWith((message) => updates(message as SaveLyricRequest)) as SaveLyricRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SaveLyricRequest create() => SaveLyricRequest._();
  SaveLyricRequest createEmptyInstance() => create();
  static $pb.PbList<SaveLyricRequest> createRepeated() => $pb.PbList<SaveLyricRequest>();
  @$core.pragma('dart2js:noInline')
  static SaveLyricRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SaveLyricRequest>(create);
  static SaveLyricRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get songId => $_getSZ(0);
  @$pb.TagNumber(1)
  set songId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSongId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSongId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get content => $_getSZ(1);
  @$pb.TagNumber(2)
  set content($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);

  @$pb.TagNumber(3)
  Lyric_Type get type => $_getN(2);
  @$pb.TagNumber(3)
  set type(Lyric_Type v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasType() => $_has(2);
  @$pb.TagNumber(3)
  void clearType() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get language => $_getSZ(3);
  @$pb.TagNumber(4)
  set language($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLanguage() => $_has(3);
  @$pb.TagNumber(4)
  void clearLanguage() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get offsetMs => $_getIZ(4);
  @$pb.TagNumber(5)
  set offsetMs($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasOffsetMs() => $_has(4);
  @$pb.TagNumber(5)
  void clearOffsetMs() => clearField(5);
}

class SaveLyricResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SaveLyricResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'echo_vault.lyric.v1'), createEmptyInstance: create)
    ..aOM<Lyric>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lyric', subBuilder: Lyric.create)
    ..hasRequiredFields = false
  ;

  SaveLyricResponse._() : super();
  factory SaveLyricResponse({
    Lyric? lyric,
  }) {
    final _result = create();
    if (lyric != null) {
      _result.lyric = lyric;
    }
    return _result;
  }
  factory SaveLyricResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SaveLyricResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SaveLyricResponse clone() => SaveLyricResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SaveLyricResponse copyWith(void Function(SaveLyricResponse) updates) => super.copyWith((message) => updates(message as SaveLyricResponse)) as SaveLyricResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SaveLyricResponse create() => SaveLyricResponse._();
  SaveLyricResponse createEmptyInstance() => create();
  static $pb.PbList<SaveLyricResponse> createRepeated() => $pb.PbList<SaveLyricResponse>();
  @$core.pragma('dart2js:noInline')
  static SaveLyricResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SaveLyricResponse>(create);
  static SaveLyricResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Lyric get lyric => $_getN(0);
  @$pb.TagNumber(1)
  set lyric(Lyric v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasLyric() => $_has(0);
  @$pb.TagNumber(1)
  void clearLyric() => clearField(1);
  @$pb.TagNumber(1)
  Lyric ensureLyric() => $_ensure(0);
}

class DeleteLyricRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeleteLyricRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'echo_vault.lyric.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'songId')
    ..e<Lyric_Type>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: Lyric_Type.TYPE_UNSPECIFIED, valueOf: Lyric_Type.valueOf, enumValues: Lyric_Type.values)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'language')
    ..hasRequiredFields = false
  ;

  DeleteLyricRequest._() : super();
  factory DeleteLyricRequest({
    $core.String? songId,
    Lyric_Type? type,
    $core.String? language,
  }) {
    final _result = create();
    if (songId != null) {
      _result.songId = songId;
    }
    if (type != null) {
      _result.type = type;
    }
    if (language != null) {
      _result.language = language;
    }
    return _result;
  }
  factory DeleteLyricRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteLyricRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteLyricRequest clone() => DeleteLyricRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteLyricRequest copyWith(void Function(DeleteLyricRequest) updates) => super.copyWith((message) => updates(message as DeleteLyricRequest)) as DeleteLyricRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteLyricRequest create() => DeleteLyricRequest._();
  DeleteLyricRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteLyricRequest> createRepeated() => $pb.PbList<DeleteLyricRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteLyricRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteLyricRequest>(create);
  static DeleteLyricRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get songId => $_getSZ(0);
  @$pb.TagNumber(1)
  set songId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSongId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSongId() => clearField(1);

  @$pb.TagNumber(2)
  Lyric_Type get type => $_getN(1);
  @$pb.TagNumber(2)
  set type(Lyric_Type v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get language => $_getSZ(2);
  @$pb.TagNumber(3)
  set language($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLanguage() => $_has(2);
  @$pb.TagNumber(3)
  void clearLanguage() => clearField(3);
}

class DeleteLyricResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeleteLyricResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'echo_vault.lyric.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  DeleteLyricResponse._() : super();
  factory DeleteLyricResponse() => create();
  factory DeleteLyricResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteLyricResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteLyricResponse clone() => DeleteLyricResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteLyricResponse copyWith(void Function(DeleteLyricResponse) updates) => super.copyWith((message) => updates(message as DeleteLyricResponse)) as DeleteLyricResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteLyricResponse create() => DeleteLyricResponse._();
  DeleteLyricResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteLyricResponse> createRepeated() => $pb.PbList<DeleteLyricResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteLyricResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteLyricResponse>(create);
  static DeleteLyricResponse? _defaultInstance;
}

class SearchLyricRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SearchLyricRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'echo_vault.lyric.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'keyword')
    ..hasRequiredFields = false
  ;

  SearchLyricRequest._() : super();
  factory SearchLyricRequest({
    $core.String? keyword,
  }) {
    final _result = create();
    if (keyword != null) {
      _result.keyword = keyword;
    }
    return _result;
  }
  factory SearchLyricRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SearchLyricRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SearchLyricRequest clone() => SearchLyricRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SearchLyricRequest copyWith(void Function(SearchLyricRequest) updates) => super.copyWith((message) => updates(message as SearchLyricRequest)) as SearchLyricRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SearchLyricRequest create() => SearchLyricRequest._();
  SearchLyricRequest createEmptyInstance() => create();
  static $pb.PbList<SearchLyricRequest> createRepeated() => $pb.PbList<SearchLyricRequest>();
  @$core.pragma('dart2js:noInline')
  static SearchLyricRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SearchLyricRequest>(create);
  static SearchLyricRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get keyword => $_getSZ(0);
  @$pb.TagNumber(1)
  set keyword($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKeyword() => $_has(0);
  @$pb.TagNumber(1)
  void clearKeyword() => clearField(1);
}

class SearchLyricResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SearchLyricResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'echo_vault.lyric.v1'), createEmptyInstance: create)
    ..pc<Lyric>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lyrics', $pb.PbFieldType.PM, subBuilder: Lyric.create)
    ..hasRequiredFields = false
  ;

  SearchLyricResponse._() : super();
  factory SearchLyricResponse({
    $core.Iterable<Lyric>? lyrics,
  }) {
    final _result = create();
    if (lyrics != null) {
      _result.lyrics.addAll(lyrics);
    }
    return _result;
  }
  factory SearchLyricResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SearchLyricResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SearchLyricResponse clone() => SearchLyricResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SearchLyricResponse copyWith(void Function(SearchLyricResponse) updates) => super.copyWith((message) => updates(message as SearchLyricResponse)) as SearchLyricResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SearchLyricResponse create() => SearchLyricResponse._();
  SearchLyricResponse createEmptyInstance() => create();
  static $pb.PbList<SearchLyricResponse> createRepeated() => $pb.PbList<SearchLyricResponse>();
  @$core.pragma('dart2js:noInline')
  static SearchLyricResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SearchLyricResponse>(create);
  static SearchLyricResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Lyric> get lyrics => $_getList(0);
}

