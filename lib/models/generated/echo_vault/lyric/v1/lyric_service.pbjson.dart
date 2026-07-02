///
//  Generated code. Do not modify.
//  source: echo_vault/lyric/v1/lyric_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use lyricDescriptor instead')
const Lyric$json = const {
  '1': 'Lyric',
  '2': const [
    const {'1': 'song_id', '3': 1, '4': 1, '5': 9, '10': 'songId'},
    const {'1': 'content', '3': 2, '4': 1, '5': 9, '10': 'content'},
    const {'1': 'type', '3': 3, '4': 1, '5': 14, '6': '.echo_vault.lyric.v1.Lyric.Type', '10': 'type'},
    const {'1': 'language', '3': 4, '4': 1, '5': 9, '10': 'language'},
    const {'1': 'offset_ms', '3': 5, '4': 1, '5': 5, '10': 'offsetMs'},
    const {'1': 'source', '3': 6, '4': 1, '5': 14, '6': '.echo_vault.lyric.v1.Lyric.Source', '10': 'source'},
    const {'1': 'version', '3': 7, '4': 1, '5': 3, '10': 'version'},
    const {'1': 'updated_at', '3': 8, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updatedAt'},
  ],
  '4': const [Lyric_Type$json, Lyric_Source$json],
};

@$core.Deprecated('Use lyricDescriptor instead')
const Lyric_Type$json = const {
  '1': 'Type',
  '2': const [
    const {'1': 'TYPE_UNSPECIFIED', '2': 0},
    const {'1': 'TYPE_ORIGINAL', '2': 1},
    const {'1': 'TYPE_TRANSLATION', '2': 2},
    const {'1': 'TYPE_PHONETIC', '2': 3},
  ],
};

@$core.Deprecated('Use lyricDescriptor instead')
const Lyric_Source$json = const {
  '1': 'Source',
  '2': const [
    const {'1': 'SOURCE_UNSPECIFIED', '2': 0},
    const {'1': 'SOURCE_EMBEDDED', '2': 1},
    const {'1': 'SOURCE_MANUAL', '2': 2},
    const {'1': 'SOURCE_FETCHED', '2': 3},
  ],
};

/// Descriptor for `Lyric`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List lyricDescriptor = $convert.base64Decode('CgVMeXJpYxIXCgdzb25nX2lkGAEgASgJUgZzb25nSWQSGAoHY29udGVudBgCIAEoCVIHY29udGVudBIzCgR0eXBlGAMgASgOMh8uZWNob192YXVsdC5seXJpYy52MS5MeXJpYy5UeXBlUgR0eXBlEhoKCGxhbmd1YWdlGAQgASgJUghsYW5ndWFnZRIbCglvZmZzZXRfbXMYBSABKAVSCG9mZnNldE1zEjkKBnNvdXJjZRgGIAEoDjIhLmVjaG9fdmF1bHQubHlyaWMudjEuTHlyaWMuU291cmNlUgZzb3VyY2USGAoHdmVyc2lvbhgHIAEoA1IHdmVyc2lvbhI5Cgp1cGRhdGVkX2F0GAggASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIJdXBkYXRlZEF0IlgKBFR5cGUSFAoQVFlQRV9VTlNQRUNJRklFRBAAEhEKDVRZUEVfT1JJR0lOQUwQARIUChBUWVBFX1RSQU5TTEFUSU9OEAISEQoNVFlQRV9QSE9ORVRJQxADIlwKBlNvdXJjZRIWChJTT1VSQ0VfVU5TUEVDSUZJRUQQABITCg9TT1VSQ0VfRU1CRURERUQQARIRCg1TT1VSQ0VfTUFOVUFMEAISEgoOU09VUkNFX0ZFVENIRUQQAw==');
@$core.Deprecated('Use getLyricRequestDescriptor instead')
const GetLyricRequest$json = const {
  '1': 'GetLyricRequest',
  '2': const [
    const {'1': 'song_id', '3': 1, '4': 1, '5': 9, '10': 'songId'},
    const {'1': 'language', '3': 2, '4': 1, '5': 9, '10': 'language'},
    const {'1': 'type', '3': 3, '4': 1, '5': 14, '6': '.echo_vault.lyric.v1.Lyric.Type', '10': 'type'},
  ],
};

/// Descriptor for `GetLyricRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getLyricRequestDescriptor = $convert.base64Decode('Cg9HZXRMeXJpY1JlcXVlc3QSFwoHc29uZ19pZBgBIAEoCVIGc29uZ0lkEhoKCGxhbmd1YWdlGAIgASgJUghsYW5ndWFnZRIzCgR0eXBlGAMgASgOMh8uZWNob192YXVsdC5seXJpYy52MS5MeXJpYy5UeXBlUgR0eXBl');
@$core.Deprecated('Use getLyricResponseDescriptor instead')
const GetLyricResponse$json = const {
  '1': 'GetLyricResponse',
  '2': const [
    const {'1': 'lyrics', '3': 1, '4': 3, '5': 11, '6': '.echo_vault.lyric.v1.Lyric', '10': 'lyrics'},
  ],
};

/// Descriptor for `GetLyricResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getLyricResponseDescriptor = $convert.base64Decode('ChBHZXRMeXJpY1Jlc3BvbnNlEjIKBmx5cmljcxgBIAMoCzIaLmVjaG9fdmF1bHQubHlyaWMudjEuTHlyaWNSBmx5cmljcw==');
@$core.Deprecated('Use saveLyricRequestDescriptor instead')
const SaveLyricRequest$json = const {
  '1': 'SaveLyricRequest',
  '2': const [
    const {'1': 'song_id', '3': 1, '4': 1, '5': 9, '10': 'songId'},
    const {'1': 'content', '3': 2, '4': 1, '5': 9, '10': 'content'},
    const {'1': 'type', '3': 3, '4': 1, '5': 14, '6': '.echo_vault.lyric.v1.Lyric.Type', '10': 'type'},
    const {'1': 'language', '3': 4, '4': 1, '5': 9, '10': 'language'},
    const {'1': 'offset_ms', '3': 5, '4': 1, '5': 5, '10': 'offsetMs'},
  ],
};

/// Descriptor for `SaveLyricRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List saveLyricRequestDescriptor = $convert.base64Decode('ChBTYXZlTHlyaWNSZXF1ZXN0EhcKB3NvbmdfaWQYASABKAlSBnNvbmdJZBIYCgdjb250ZW50GAIgASgJUgdjb250ZW50EjMKBHR5cGUYAyABKA4yHy5lY2hvX3ZhdWx0Lmx5cmljLnYxLkx5cmljLlR5cGVSBHR5cGUSGgoIbGFuZ3VhZ2UYBCABKAlSCGxhbmd1YWdlEhsKCW9mZnNldF9tcxgFIAEoBVIIb2Zmc2V0TXM=');
@$core.Deprecated('Use saveLyricResponseDescriptor instead')
const SaveLyricResponse$json = const {
  '1': 'SaveLyricResponse',
  '2': const [
    const {'1': 'lyric', '3': 1, '4': 1, '5': 11, '6': '.echo_vault.lyric.v1.Lyric', '10': 'lyric'},
  ],
};

/// Descriptor for `SaveLyricResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List saveLyricResponseDescriptor = $convert.base64Decode('ChFTYXZlTHlyaWNSZXNwb25zZRIwCgVseXJpYxgBIAEoCzIaLmVjaG9fdmF1bHQubHlyaWMudjEuTHlyaWNSBWx5cmlj');
@$core.Deprecated('Use deleteLyricRequestDescriptor instead')
const DeleteLyricRequest$json = const {
  '1': 'DeleteLyricRequest',
  '2': const [
    const {'1': 'song_id', '3': 1, '4': 1, '5': 9, '10': 'songId'},
    const {'1': 'type', '3': 2, '4': 1, '5': 14, '6': '.echo_vault.lyric.v1.Lyric.Type', '10': 'type'},
    const {'1': 'language', '3': 3, '4': 1, '5': 9, '10': 'language'},
  ],
};

/// Descriptor for `DeleteLyricRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteLyricRequestDescriptor = $convert.base64Decode('ChJEZWxldGVMeXJpY1JlcXVlc3QSFwoHc29uZ19pZBgBIAEoCVIGc29uZ0lkEjMKBHR5cGUYAiABKA4yHy5lY2hvX3ZhdWx0Lmx5cmljLnYxLkx5cmljLlR5cGVSBHR5cGUSGgoIbGFuZ3VhZ2UYAyABKAlSCGxhbmd1YWdl');
@$core.Deprecated('Use deleteLyricResponseDescriptor instead')
const DeleteLyricResponse$json = const {
  '1': 'DeleteLyricResponse',
};

/// Descriptor for `DeleteLyricResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteLyricResponseDescriptor = $convert.base64Decode('ChNEZWxldGVMeXJpY1Jlc3BvbnNl');
@$core.Deprecated('Use searchLyricRequestDescriptor instead')
const SearchLyricRequest$json = const {
  '1': 'SearchLyricRequest',
  '2': const [
    const {'1': 'keyword', '3': 1, '4': 1, '5': 9, '10': 'keyword'},
  ],
};

/// Descriptor for `SearchLyricRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List searchLyricRequestDescriptor = $convert.base64Decode('ChJTZWFyY2hMeXJpY1JlcXVlc3QSGAoHa2V5d29yZBgBIAEoCVIHa2V5d29yZA==');
@$core.Deprecated('Use searchLyricResponseDescriptor instead')
const SearchLyricResponse$json = const {
  '1': 'SearchLyricResponse',
  '2': const [
    const {'1': 'lyrics', '3': 1, '4': 3, '5': 11, '6': '.echo_vault.lyric.v1.Lyric', '10': 'lyrics'},
  ],
};

/// Descriptor for `SearchLyricResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List searchLyricResponseDescriptor = $convert.base64Decode('ChNTZWFyY2hMeXJpY1Jlc3BvbnNlEjIKBmx5cmljcxgBIAMoCzIaLmVjaG9fdmF1bHQubHlyaWMudjEuTHlyaWNSBmx5cmljcw==');
