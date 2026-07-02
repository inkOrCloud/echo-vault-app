///
//  Generated code. Do not modify.
//  source: echo_vault/sync/v1/sync_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class SyncChange_Action extends $pb.ProtobufEnum {
  static const SyncChange_Action ACTION_UNSPECIFIED = SyncChange_Action._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ACTION_UNSPECIFIED');
  static const SyncChange_Action ACTION_CREATE = SyncChange_Action._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ACTION_CREATE');
  static const SyncChange_Action ACTION_UPDATE = SyncChange_Action._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ACTION_UPDATE');
  static const SyncChange_Action ACTION_DELETE = SyncChange_Action._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ACTION_DELETE');

  static const $core.List<SyncChange_Action> values = <SyncChange_Action> [
    ACTION_UNSPECIFIED,
    ACTION_CREATE,
    ACTION_UPDATE,
    ACTION_DELETE,
  ];

  static final $core.Map<$core.int, SyncChange_Action> _byValue = $pb.ProtobufEnum.initByValue(values);
  static SyncChange_Action? valueOf($core.int value) => _byValue[value];

  const SyncChange_Action._($core.int v, $core.String n) : super(v, n);
}

class ConflictInfo_Resolution extends $pb.ProtobufEnum {
  static const ConflictInfo_Resolution RESOLUTION_UNSPECIFIED = ConflictInfo_Resolution._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'RESOLUTION_UNSPECIFIED');
  static const ConflictInfo_Resolution RESOLUTION_SERVER_WINS = ConflictInfo_Resolution._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'RESOLUTION_SERVER_WINS');
  static const ConflictInfo_Resolution RESOLUTION_DUPLICATE_KEPT = ConflictInfo_Resolution._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'RESOLUTION_DUPLICATE_KEPT');

  static const $core.List<ConflictInfo_Resolution> values = <ConflictInfo_Resolution> [
    RESOLUTION_UNSPECIFIED,
    RESOLUTION_SERVER_WINS,
    RESOLUTION_DUPLICATE_KEPT,
  ];

  static final $core.Map<$core.int, ConflictInfo_Resolution> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ConflictInfo_Resolution? valueOf($core.int value) => _byValue[value];

  const ConflictInfo_Resolution._($core.int v, $core.String n) : super(v, n);
}

