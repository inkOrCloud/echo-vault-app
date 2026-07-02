///
//  Generated code. Do not modify.
//  source: echo_vault/sync/v1/sync_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../../../google/protobuf/timestamp.pb.dart' as $5;

import 'sync_service.pbenum.dart';

export 'sync_service.pbenum.dart';

class SyncChange extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SyncChange', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'echo_vault.sync.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'entityType')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'entityId')
    ..e<SyncChange_Action>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'action', $pb.PbFieldType.OE, defaultOrMaker: SyncChange_Action.ACTION_UNSPECIFIED, valueOf: SyncChange_Action.valueOf, enumValues: SyncChange_Action.values)
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'version')
    ..a<$core.List<$core.int>>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data', $pb.PbFieldType.OY)
    ..aOM<$5.Timestamp>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'timestamp', subBuilder: $5.Timestamp.create)
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deviceId')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId')
    ..hasRequiredFields = false
  ;

  SyncChange._() : super();
  factory SyncChange({
    $core.String? entityType,
    $core.String? entityId,
    SyncChange_Action? action,
    $fixnum.Int64? version,
    $core.List<$core.int>? data,
    $5.Timestamp? timestamp,
    $core.String? deviceId,
    $core.String? userId,
  }) {
    final _result = create();
    if (entityType != null) {
      _result.entityType = entityType;
    }
    if (entityId != null) {
      _result.entityId = entityId;
    }
    if (action != null) {
      _result.action = action;
    }
    if (version != null) {
      _result.version = version;
    }
    if (data != null) {
      _result.data = data;
    }
    if (timestamp != null) {
      _result.timestamp = timestamp;
    }
    if (deviceId != null) {
      _result.deviceId = deviceId;
    }
    if (userId != null) {
      _result.userId = userId;
    }
    return _result;
  }
  factory SyncChange.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SyncChange.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SyncChange clone() => SyncChange()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SyncChange copyWith(void Function(SyncChange) updates) => super.copyWith((message) => updates(message as SyncChange)) as SyncChange; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SyncChange create() => SyncChange._();
  SyncChange createEmptyInstance() => create();
  static $pb.PbList<SyncChange> createRepeated() => $pb.PbList<SyncChange>();
  @$core.pragma('dart2js:noInline')
  static SyncChange getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SyncChange>(create);
  static SyncChange? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get entityType => $_getSZ(0);
  @$pb.TagNumber(1)
  set entityType($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEntityType() => $_has(0);
  @$pb.TagNumber(1)
  void clearEntityType() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get entityId => $_getSZ(1);
  @$pb.TagNumber(2)
  set entityId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEntityId() => $_has(1);
  @$pb.TagNumber(2)
  void clearEntityId() => clearField(2);

  @$pb.TagNumber(3)
  SyncChange_Action get action => $_getN(2);
  @$pb.TagNumber(3)
  set action(SyncChange_Action v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasAction() => $_has(2);
  @$pb.TagNumber(3)
  void clearAction() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get version => $_getI64(3);
  @$pb.TagNumber(4)
  set version($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasVersion() => $_has(3);
  @$pb.TagNumber(4)
  void clearVersion() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.int> get data => $_getN(4);
  @$pb.TagNumber(5)
  set data($core.List<$core.int> v) { $_setBytes(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasData() => $_has(4);
  @$pb.TagNumber(5)
  void clearData() => clearField(5);

  @$pb.TagNumber(6)
  $5.Timestamp get timestamp => $_getN(5);
  @$pb.TagNumber(6)
  set timestamp($5.Timestamp v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasTimestamp() => $_has(5);
  @$pb.TagNumber(6)
  void clearTimestamp() => clearField(6);
  @$pb.TagNumber(6)
  $5.Timestamp ensureTimestamp() => $_ensure(5);

  @$pb.TagNumber(7)
  $core.String get deviceId => $_getSZ(6);
  @$pb.TagNumber(7)
  set deviceId($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasDeviceId() => $_has(6);
  @$pb.TagNumber(7)
  void clearDeviceId() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get userId => $_getSZ(7);
  @$pb.TagNumber(8)
  set userId($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasUserId() => $_has(7);
  @$pb.TagNumber(8)
  void clearUserId() => clearField(8);
}

class PushChangesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PushChangesRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'echo_vault.sync.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deviceId')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastPullVersion')
    ..pc<SyncChange>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'changes', $pb.PbFieldType.PM, subBuilder: SyncChange.create)
    ..hasRequiredFields = false
  ;

  PushChangesRequest._() : super();
  factory PushChangesRequest({
    $core.String? deviceId,
    $fixnum.Int64? lastPullVersion,
    $core.Iterable<SyncChange>? changes,
  }) {
    final _result = create();
    if (deviceId != null) {
      _result.deviceId = deviceId;
    }
    if (lastPullVersion != null) {
      _result.lastPullVersion = lastPullVersion;
    }
    if (changes != null) {
      _result.changes.addAll(changes);
    }
    return _result;
  }
  factory PushChangesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PushChangesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PushChangesRequest clone() => PushChangesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PushChangesRequest copyWith(void Function(PushChangesRequest) updates) => super.copyWith((message) => updates(message as PushChangesRequest)) as PushChangesRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PushChangesRequest create() => PushChangesRequest._();
  PushChangesRequest createEmptyInstance() => create();
  static $pb.PbList<PushChangesRequest> createRepeated() => $pb.PbList<PushChangesRequest>();
  @$core.pragma('dart2js:noInline')
  static PushChangesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PushChangesRequest>(create);
  static PushChangesRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get deviceId => $_getSZ(0);
  @$pb.TagNumber(1)
  set deviceId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDeviceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDeviceId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get lastPullVersion => $_getI64(1);
  @$pb.TagNumber(2)
  set lastPullVersion($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLastPullVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearLastPullVersion() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<SyncChange> get changes => $_getList(2);
}

class PushChangesResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PushChangesResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'echo_vault.sync.v1'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'serverVersion')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'acceptedCount', $pb.PbFieldType.O3)
    ..pc<ConflictInfo>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'conflicts', $pb.PbFieldType.PM, subBuilder: ConflictInfo.create)
    ..hasRequiredFields = false
  ;

  PushChangesResponse._() : super();
  factory PushChangesResponse({
    $fixnum.Int64? serverVersion,
    $core.int? acceptedCount,
    $core.Iterable<ConflictInfo>? conflicts,
  }) {
    final _result = create();
    if (serverVersion != null) {
      _result.serverVersion = serverVersion;
    }
    if (acceptedCount != null) {
      _result.acceptedCount = acceptedCount;
    }
    if (conflicts != null) {
      _result.conflicts.addAll(conflicts);
    }
    return _result;
  }
  factory PushChangesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PushChangesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PushChangesResponse clone() => PushChangesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PushChangesResponse copyWith(void Function(PushChangesResponse) updates) => super.copyWith((message) => updates(message as PushChangesResponse)) as PushChangesResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PushChangesResponse create() => PushChangesResponse._();
  PushChangesResponse createEmptyInstance() => create();
  static $pb.PbList<PushChangesResponse> createRepeated() => $pb.PbList<PushChangesResponse>();
  @$core.pragma('dart2js:noInline')
  static PushChangesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PushChangesResponse>(create);
  static PushChangesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get serverVersion => $_getI64(0);
  @$pb.TagNumber(1)
  set serverVersion($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasServerVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearServerVersion() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get acceptedCount => $_getIZ(1);
  @$pb.TagNumber(2)
  set acceptedCount($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAcceptedCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearAcceptedCount() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<ConflictInfo> get conflicts => $_getList(2);
}

class ConflictInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ConflictInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'echo_vault.sync.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'entityType')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'entityId')
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'localVersion')
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'serverVersion')
    ..e<ConflictInfo_Resolution>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'resolution', $pb.PbFieldType.OE, defaultOrMaker: ConflictInfo_Resolution.RESOLUTION_UNSPECIFIED, valueOf: ConflictInfo_Resolution.valueOf, enumValues: ConflictInfo_Resolution.values)
    ..hasRequiredFields = false
  ;

  ConflictInfo._() : super();
  factory ConflictInfo({
    $core.String? entityType,
    $core.String? entityId,
    $fixnum.Int64? localVersion,
    $fixnum.Int64? serverVersion,
    ConflictInfo_Resolution? resolution,
  }) {
    final _result = create();
    if (entityType != null) {
      _result.entityType = entityType;
    }
    if (entityId != null) {
      _result.entityId = entityId;
    }
    if (localVersion != null) {
      _result.localVersion = localVersion;
    }
    if (serverVersion != null) {
      _result.serverVersion = serverVersion;
    }
    if (resolution != null) {
      _result.resolution = resolution;
    }
    return _result;
  }
  factory ConflictInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ConflictInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ConflictInfo clone() => ConflictInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ConflictInfo copyWith(void Function(ConflictInfo) updates) => super.copyWith((message) => updates(message as ConflictInfo)) as ConflictInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ConflictInfo create() => ConflictInfo._();
  ConflictInfo createEmptyInstance() => create();
  static $pb.PbList<ConflictInfo> createRepeated() => $pb.PbList<ConflictInfo>();
  @$core.pragma('dart2js:noInline')
  static ConflictInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ConflictInfo>(create);
  static ConflictInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get entityType => $_getSZ(0);
  @$pb.TagNumber(1)
  set entityType($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEntityType() => $_has(0);
  @$pb.TagNumber(1)
  void clearEntityType() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get entityId => $_getSZ(1);
  @$pb.TagNumber(2)
  set entityId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEntityId() => $_has(1);
  @$pb.TagNumber(2)
  void clearEntityId() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get localVersion => $_getI64(2);
  @$pb.TagNumber(3)
  set localVersion($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLocalVersion() => $_has(2);
  @$pb.TagNumber(3)
  void clearLocalVersion() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get serverVersion => $_getI64(3);
  @$pb.TagNumber(4)
  set serverVersion($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasServerVersion() => $_has(3);
  @$pb.TagNumber(4)
  void clearServerVersion() => clearField(4);

  @$pb.TagNumber(5)
  ConflictInfo_Resolution get resolution => $_getN(4);
  @$pb.TagNumber(5)
  set resolution(ConflictInfo_Resolution v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasResolution() => $_has(4);
  @$pb.TagNumber(5)
  void clearResolution() => clearField(5);
}

class PullChangesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PullChangesRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'echo_vault.sync.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deviceId')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sinceVersion')
    ..hasRequiredFields = false
  ;

  PullChangesRequest._() : super();
  factory PullChangesRequest({
    $core.String? deviceId,
    $fixnum.Int64? sinceVersion,
  }) {
    final _result = create();
    if (deviceId != null) {
      _result.deviceId = deviceId;
    }
    if (sinceVersion != null) {
      _result.sinceVersion = sinceVersion;
    }
    return _result;
  }
  factory PullChangesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PullChangesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PullChangesRequest clone() => PullChangesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PullChangesRequest copyWith(void Function(PullChangesRequest) updates) => super.copyWith((message) => updates(message as PullChangesRequest)) as PullChangesRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PullChangesRequest create() => PullChangesRequest._();
  PullChangesRequest createEmptyInstance() => create();
  static $pb.PbList<PullChangesRequest> createRepeated() => $pb.PbList<PullChangesRequest>();
  @$core.pragma('dart2js:noInline')
  static PullChangesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PullChangesRequest>(create);
  static PullChangesRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get deviceId => $_getSZ(0);
  @$pb.TagNumber(1)
  set deviceId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDeviceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDeviceId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get sinceVersion => $_getI64(1);
  @$pb.TagNumber(2)
  set sinceVersion($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSinceVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearSinceVersion() => clearField(2);
}

class PullChangesResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PullChangesResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'echo_vault.sync.v1'), createEmptyInstance: create)
    ..aOM<SyncChange>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'change', subBuilder: SyncChange.create)
    ..hasRequiredFields = false
  ;

  PullChangesResponse._() : super();
  factory PullChangesResponse({
    SyncChange? change,
  }) {
    final _result = create();
    if (change != null) {
      _result.change = change;
    }
    return _result;
  }
  factory PullChangesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PullChangesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PullChangesResponse clone() => PullChangesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PullChangesResponse copyWith(void Function(PullChangesResponse) updates) => super.copyWith((message) => updates(message as PullChangesResponse)) as PullChangesResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PullChangesResponse create() => PullChangesResponse._();
  PullChangesResponse createEmptyInstance() => create();
  static $pb.PbList<PullChangesResponse> createRepeated() => $pb.PbList<PullChangesResponse>();
  @$core.pragma('dart2js:noInline')
  static PullChangesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PullChangesResponse>(create);
  static PullChangesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  SyncChange get change => $_getN(0);
  @$pb.TagNumber(1)
  set change(SyncChange v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasChange() => $_has(0);
  @$pb.TagNumber(1)
  void clearChange() => clearField(1);
  @$pb.TagNumber(1)
  SyncChange ensureChange() => $_ensure(0);
}

class SubscribeChangesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SubscribeChangesRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'echo_vault.sync.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deviceId')
    ..hasRequiredFields = false
  ;

  SubscribeChangesRequest._() : super();
  factory SubscribeChangesRequest({
    $core.String? deviceId,
  }) {
    final _result = create();
    if (deviceId != null) {
      _result.deviceId = deviceId;
    }
    return _result;
  }
  factory SubscribeChangesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SubscribeChangesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SubscribeChangesRequest clone() => SubscribeChangesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SubscribeChangesRequest copyWith(void Function(SubscribeChangesRequest) updates) => super.copyWith((message) => updates(message as SubscribeChangesRequest)) as SubscribeChangesRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SubscribeChangesRequest create() => SubscribeChangesRequest._();
  SubscribeChangesRequest createEmptyInstance() => create();
  static $pb.PbList<SubscribeChangesRequest> createRepeated() => $pb.PbList<SubscribeChangesRequest>();
  @$core.pragma('dart2js:noInline')
  static SubscribeChangesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SubscribeChangesRequest>(create);
  static SubscribeChangesRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get deviceId => $_getSZ(0);
  @$pb.TagNumber(1)
  set deviceId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDeviceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDeviceId() => clearField(1);
}

class ChangeNotification extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ChangeNotification', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'echo_vault.sync.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'entityType')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'action')
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'newVersion')
    ..hasRequiredFields = false
  ;

  ChangeNotification._() : super();
  factory ChangeNotification({
    $core.String? entityType,
    $core.String? action,
    $fixnum.Int64? newVersion,
  }) {
    final _result = create();
    if (entityType != null) {
      _result.entityType = entityType;
    }
    if (action != null) {
      _result.action = action;
    }
    if (newVersion != null) {
      _result.newVersion = newVersion;
    }
    return _result;
  }
  factory ChangeNotification.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChangeNotification.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChangeNotification clone() => ChangeNotification()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChangeNotification copyWith(void Function(ChangeNotification) updates) => super.copyWith((message) => updates(message as ChangeNotification)) as ChangeNotification; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChangeNotification create() => ChangeNotification._();
  ChangeNotification createEmptyInstance() => create();
  static $pb.PbList<ChangeNotification> createRepeated() => $pb.PbList<ChangeNotification>();
  @$core.pragma('dart2js:noInline')
  static ChangeNotification getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChangeNotification>(create);
  static ChangeNotification? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get entityType => $_getSZ(0);
  @$pb.TagNumber(1)
  set entityType($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEntityType() => $_has(0);
  @$pb.TagNumber(1)
  void clearEntityType() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get action => $_getSZ(1);
  @$pb.TagNumber(2)
  set action($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAction() => $_has(1);
  @$pb.TagNumber(2)
  void clearAction() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get newVersion => $_getI64(2);
  @$pb.TagNumber(3)
  set newVersion($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasNewVersion() => $_has(2);
  @$pb.TagNumber(3)
  void clearNewVersion() => clearField(3);
}

class SubscribeChangesResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SubscribeChangesResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'echo_vault.sync.v1'), createEmptyInstance: create)
    ..aOM<ChangeNotification>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'notification', subBuilder: ChangeNotification.create)
    ..hasRequiredFields = false
  ;

  SubscribeChangesResponse._() : super();
  factory SubscribeChangesResponse({
    ChangeNotification? notification,
  }) {
    final _result = create();
    if (notification != null) {
      _result.notification = notification;
    }
    return _result;
  }
  factory SubscribeChangesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SubscribeChangesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SubscribeChangesResponse clone() => SubscribeChangesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SubscribeChangesResponse copyWith(void Function(SubscribeChangesResponse) updates) => super.copyWith((message) => updates(message as SubscribeChangesResponse)) as SubscribeChangesResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SubscribeChangesResponse create() => SubscribeChangesResponse._();
  SubscribeChangesResponse createEmptyInstance() => create();
  static $pb.PbList<SubscribeChangesResponse> createRepeated() => $pb.PbList<SubscribeChangesResponse>();
  @$core.pragma('dart2js:noInline')
  static SubscribeChangesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SubscribeChangesResponse>(create);
  static SubscribeChangesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ChangeNotification get notification => $_getN(0);
  @$pb.TagNumber(1)
  set notification(ChangeNotification v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasNotification() => $_has(0);
  @$pb.TagNumber(1)
  void clearNotification() => clearField(1);
  @$pb.TagNumber(1)
  ChangeNotification ensureNotification() => $_ensure(0);
}

class AckChangesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AckChangesRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'echo_vault.sync.v1'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deviceId')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ackedVersion')
    ..hasRequiredFields = false
  ;

  AckChangesRequest._() : super();
  factory AckChangesRequest({
    $core.String? deviceId,
    $fixnum.Int64? ackedVersion,
  }) {
    final _result = create();
    if (deviceId != null) {
      _result.deviceId = deviceId;
    }
    if (ackedVersion != null) {
      _result.ackedVersion = ackedVersion;
    }
    return _result;
  }
  factory AckChangesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AckChangesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AckChangesRequest clone() => AckChangesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AckChangesRequest copyWith(void Function(AckChangesRequest) updates) => super.copyWith((message) => updates(message as AckChangesRequest)) as AckChangesRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AckChangesRequest create() => AckChangesRequest._();
  AckChangesRequest createEmptyInstance() => create();
  static $pb.PbList<AckChangesRequest> createRepeated() => $pb.PbList<AckChangesRequest>();
  @$core.pragma('dart2js:noInline')
  static AckChangesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AckChangesRequest>(create);
  static AckChangesRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get deviceId => $_getSZ(0);
  @$pb.TagNumber(1)
  set deviceId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDeviceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDeviceId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get ackedVersion => $_getI64(1);
  @$pb.TagNumber(2)
  set ackedVersion($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAckedVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearAckedVersion() => clearField(2);
}

class AckChangesResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AckChangesResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'echo_vault.sync.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  AckChangesResponse._() : super();
  factory AckChangesResponse() => create();
  factory AckChangesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AckChangesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AckChangesResponse clone() => AckChangesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AckChangesResponse copyWith(void Function(AckChangesResponse) updates) => super.copyWith((message) => updates(message as AckChangesResponse)) as AckChangesResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AckChangesResponse create() => AckChangesResponse._();
  AckChangesResponse createEmptyInstance() => create();
  static $pb.PbList<AckChangesResponse> createRepeated() => $pb.PbList<AckChangesResponse>();
  @$core.pragma('dart2js:noInline')
  static AckChangesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AckChangesResponse>(create);
  static AckChangesResponse? _defaultInstance;
}

