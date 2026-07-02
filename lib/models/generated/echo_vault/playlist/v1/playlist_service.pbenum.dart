///
//  Generated code. Do not modify.
//  source: echo_vault/playlist/v1/playlist_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class Playlist_Type extends $pb.ProtobufEnum {
  static const Playlist_Type TYPE_UNSPECIFIED = Playlist_Type._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TYPE_UNSPECIFIED');
  static const Playlist_Type TYPE_USER = Playlist_Type._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TYPE_USER');
  static const Playlist_Type TYPE_FAVORITE = Playlist_Type._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TYPE_FAVORITE');
  static const Playlist_Type TYPE_AUTO = Playlist_Type._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TYPE_AUTO');

  static const $core.List<Playlist_Type> values = <Playlist_Type> [
    TYPE_UNSPECIFIED,
    TYPE_USER,
    TYPE_FAVORITE,
    TYPE_AUTO,
  ];

  static final $core.Map<$core.int, Playlist_Type> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Playlist_Type? valueOf($core.int value) => _byValue[value];

  const Playlist_Type._($core.int v, $core.String n) : super(v, n);
}

