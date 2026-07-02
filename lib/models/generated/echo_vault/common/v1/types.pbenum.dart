///
//  Generated code. Do not modify.
//  source: echo_vault/common/v1/types.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class FileSource extends $pb.ProtobufEnum {
  static const FileSource FILE_SOURCE_UNSPECIFIED = FileSource._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FILE_SOURCE_UNSPECIFIED');
  static const FileSource FILE_SOURCE_LOCAL = FileSource._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FILE_SOURCE_LOCAL');
  static const FileSource FILE_SOURCE_UPLOADED = FileSource._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FILE_SOURCE_UPLOADED');
  static const FileSource FILE_SOURCE_SYNCED = FileSource._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FILE_SOURCE_SYNCED');

  static const $core.List<FileSource> values = <FileSource> [
    FILE_SOURCE_UNSPECIFIED,
    FILE_SOURCE_LOCAL,
    FILE_SOURCE_UPLOADED,
    FILE_SOURCE_SYNCED,
  ];

  static final $core.Map<$core.int, FileSource> _byValue = $pb.ProtobufEnum.initByValue(values);
  static FileSource? valueOf($core.int value) => _byValue[value];

  const FileSource._($core.int v, $core.String n) : super(v, n);
}

class FileStatus extends $pb.ProtobufEnum {
  static const FileStatus FILE_STATUS_UNSPECIFIED = FileStatus._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FILE_STATUS_UNSPECIFIED');
  static const FileStatus FILE_STATUS_LOCAL_ONLY = FileStatus._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FILE_STATUS_LOCAL_ONLY');
  static const FileStatus FILE_STATUS_UPLOADED = FileStatus._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FILE_STATUS_UPLOADED');
  static const FileStatus FILE_STATUS_DOWNLOADED = FileStatus._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FILE_STATUS_DOWNLOADED');
  static const FileStatus FILE_STATUS_CLOUD_ONLY = FileStatus._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FILE_STATUS_CLOUD_ONLY');

  static const $core.List<FileStatus> values = <FileStatus> [
    FILE_STATUS_UNSPECIFIED,
    FILE_STATUS_LOCAL_ONLY,
    FILE_STATUS_UPLOADED,
    FILE_STATUS_DOWNLOADED,
    FILE_STATUS_CLOUD_ONLY,
  ];

  static final $core.Map<$core.int, FileStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static FileStatus? valueOf($core.int value) => _byValue[value];

  const FileStatus._($core.int v, $core.String n) : super(v, n);
}

