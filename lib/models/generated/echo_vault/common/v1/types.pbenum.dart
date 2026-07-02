// This is a generated file - do not edit.
//
// Generated from echo_vault/common/v1/types.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// 文件来源类型
class FileSource extends $pb.ProtobufEnum {
  static const FileSource FILE_SOURCE_UNSPECIFIED =
      FileSource._(0, _omitEnumNames ? '' : 'FILE_SOURCE_UNSPECIFIED');
  static const FileSource FILE_SOURCE_LOCAL =
      FileSource._(1, _omitEnumNames ? '' : 'FILE_SOURCE_LOCAL');
  static const FileSource FILE_SOURCE_UPLOADED =
      FileSource._(2, _omitEnumNames ? '' : 'FILE_SOURCE_UPLOADED');
  static const FileSource FILE_SOURCE_SYNCED =
      FileSource._(3, _omitEnumNames ? '' : 'FILE_SOURCE_SYNCED');

  static const $core.List<FileSource> values = <FileSource>[
    FILE_SOURCE_UNSPECIFIED,
    FILE_SOURCE_LOCAL,
    FILE_SOURCE_UPLOADED,
    FILE_SOURCE_SYNCED,
  ];

  static final $core.List<FileSource?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static FileSource? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const FileSource._(super.value, super.name);
}

/// 文件可用性状态
class FileStatus extends $pb.ProtobufEnum {
  static const FileStatus FILE_STATUS_UNSPECIFIED =
      FileStatus._(0, _omitEnumNames ? '' : 'FILE_STATUS_UNSPECIFIED');
  static const FileStatus FILE_STATUS_LOCAL_ONLY =
      FileStatus._(1, _omitEnumNames ? '' : 'FILE_STATUS_LOCAL_ONLY');
  static const FileStatus FILE_STATUS_UPLOADED =
      FileStatus._(2, _omitEnumNames ? '' : 'FILE_STATUS_UPLOADED');
  static const FileStatus FILE_STATUS_DOWNLOADED =
      FileStatus._(3, _omitEnumNames ? '' : 'FILE_STATUS_DOWNLOADED');
  static const FileStatus FILE_STATUS_CLOUD_ONLY =
      FileStatus._(4, _omitEnumNames ? '' : 'FILE_STATUS_CLOUD_ONLY');

  static const $core.List<FileStatus> values = <FileStatus>[
    FILE_STATUS_UNSPECIFIED,
    FILE_STATUS_LOCAL_ONLY,
    FILE_STATUS_UPLOADED,
    FILE_STATUS_DOWNLOADED,
    FILE_STATUS_CLOUD_ONLY,
  ];

  static final $core.List<FileStatus?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 4);
  static FileStatus? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const FileStatus._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
