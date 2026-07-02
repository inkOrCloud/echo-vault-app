///
//  Generated code. Do not modify.
//  source: echo_vault/lyric/v1/lyric_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class Lyric_Type extends $pb.ProtobufEnum {
  static const Lyric_Type TYPE_UNSPECIFIED = Lyric_Type._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TYPE_UNSPECIFIED');
  static const Lyric_Type TYPE_ORIGINAL = Lyric_Type._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TYPE_ORIGINAL');
  static const Lyric_Type TYPE_TRANSLATION = Lyric_Type._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TYPE_TRANSLATION');
  static const Lyric_Type TYPE_PHONETIC = Lyric_Type._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TYPE_PHONETIC');

  static const $core.List<Lyric_Type> values = <Lyric_Type> [
    TYPE_UNSPECIFIED,
    TYPE_ORIGINAL,
    TYPE_TRANSLATION,
    TYPE_PHONETIC,
  ];

  static final $core.Map<$core.int, Lyric_Type> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Lyric_Type? valueOf($core.int value) => _byValue[value];

  const Lyric_Type._($core.int v, $core.String n) : super(v, n);
}

class Lyric_Source extends $pb.ProtobufEnum {
  static const Lyric_Source SOURCE_UNSPECIFIED = Lyric_Source._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SOURCE_UNSPECIFIED');
  static const Lyric_Source SOURCE_EMBEDDED = Lyric_Source._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SOURCE_EMBEDDED');
  static const Lyric_Source SOURCE_MANUAL = Lyric_Source._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SOURCE_MANUAL');
  static const Lyric_Source SOURCE_FETCHED = Lyric_Source._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SOURCE_FETCHED');

  static const $core.List<Lyric_Source> values = <Lyric_Source> [
    SOURCE_UNSPECIFIED,
    SOURCE_EMBEDDED,
    SOURCE_MANUAL,
    SOURCE_FETCHED,
  ];

  static final $core.Map<$core.int, Lyric_Source> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Lyric_Source? valueOf($core.int value) => _byValue[value];

  const Lyric_Source._($core.int v, $core.String n) : super(v, n);
}

