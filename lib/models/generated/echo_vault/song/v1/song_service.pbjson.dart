// This is a generated file - do not edit.
//
// Generated from echo_vault/song/v1/song_service.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports
// ignore_for_file: unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

import 'package:protobuf/well_known_types/google/protobuf/timestamp.pbjson.dart'
    as $0;

import '../../common/v1/types.pbjson.dart' as $1;

@$core.Deprecated('Use songDescriptor instead')
const Song$json = {
  '1': 'Song',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    {'1': 'artist', '3': 3, '4': 1, '5': 9, '10': 'artist'},
    {'1': 'album', '3': 4, '4': 1, '5': 9, '10': 'album'},
    {'1': 'genre', '3': 5, '4': 1, '5': 9, '10': 'genre'},
    {'1': 'track_number', '3': 6, '4': 1, '5': 5, '10': 'trackNumber'},
    {'1': 'disc_number', '3': 7, '4': 1, '5': 5, '10': 'discNumber'},
    {'1': 'duration_ms', '3': 8, '4': 1, '5': 5, '10': 'durationMs'},
    {'1': 'year', '3': 9, '4': 1, '5': 5, '10': 'year'},
    {'1': 'file_name', '3': 10, '4': 1, '5': 9, '10': 'fileName'},
    {'1': 'file_size', '3': 11, '4': 1, '5': 3, '10': 'fileSize'},
    {'1': 'file_hash', '3': 12, '4': 1, '5': 9, '10': 'fileHash'},
    {'1': 'mime_type', '3': 13, '4': 1, '5': 9, '10': 'mimeType'},
    {'1': 'bitrate', '3': 14, '4': 1, '5': 5, '10': 'bitrate'},
    {'1': 'sample_rate', '3': 15, '4': 1, '5': 5, '10': 'sampleRate'},
    {
      '1': 'source',
      '3': 16,
      '4': 1,
      '5': 14,
      '6': '.echo_vault.common.v1.FileSource',
      '10': 'source'
    },
    {
      '1': 'file_status',
      '3': 17,
      '4': 1,
      '5': 14,
      '6': '.echo_vault.common.v1.FileStatus',
      '10': 'fileStatus'
    },
    {'1': 'owner_id', '3': 18, '4': 1, '5': 9, '10': 'ownerId'},
    {'1': 'version', '3': 19, '4': 1, '5': 3, '10': 'version'},
    {'1': 'is_deleted', '3': 20, '4': 1, '5': 8, '10': 'isDeleted'},
    {
      '1': 'created_at',
      '3': 21,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'createdAt'
    },
    {
      '1': 'updated_at',
      '3': 22,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'updatedAt'
    },
    {'1': 'cover_url', '3': 23, '4': 1, '5': 9, '10': 'coverUrl'},
    {'1': 'audio_url', '3': 24, '4': 1, '5': 9, '10': 'audioUrl'},
  ],
};

/// Descriptor for `Song`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List songDescriptor = $convert.base64Decode(
    'CgRTb25nEg4KAmlkGAEgASgJUgJpZBIUCgV0aXRsZRgCIAEoCVIFdGl0bGUSFgoGYXJ0aXN0GA'
    'MgASgJUgZhcnRpc3QSFAoFYWxidW0YBCABKAlSBWFsYnVtEhQKBWdlbnJlGAUgASgJUgVnZW5y'
    'ZRIhCgx0cmFja19udW1iZXIYBiABKAVSC3RyYWNrTnVtYmVyEh8KC2Rpc2NfbnVtYmVyGAcgAS'
    'gFUgpkaXNjTnVtYmVyEh8KC2R1cmF0aW9uX21zGAggASgFUgpkdXJhdGlvbk1zEhIKBHllYXIY'
    'CSABKAVSBHllYXISGwoJZmlsZV9uYW1lGAogASgJUghmaWxlTmFtZRIbCglmaWxlX3NpemUYCy'
    'ABKANSCGZpbGVTaXplEhsKCWZpbGVfaGFzaBgMIAEoCVIIZmlsZUhhc2gSGwoJbWltZV90eXBl'
    'GA0gASgJUghtaW1lVHlwZRIYCgdiaXRyYXRlGA4gASgFUgdiaXRyYXRlEh8KC3NhbXBsZV9yYX'
    'RlGA8gASgFUgpzYW1wbGVSYXRlEjgKBnNvdXJjZRgQIAEoDjIgLmVjaG9fdmF1bHQuY29tbW9u'
    'LnYxLkZpbGVTb3VyY2VSBnNvdXJjZRJBCgtmaWxlX3N0YXR1cxgRIAEoDjIgLmVjaG9fdmF1bH'
    'QuY29tbW9uLnYxLkZpbGVTdGF0dXNSCmZpbGVTdGF0dXMSGQoIb3duZXJfaWQYEiABKAlSB293'
    'bmVySWQSGAoHdmVyc2lvbhgTIAEoA1IHdmVyc2lvbhIdCgppc19kZWxldGVkGBQgASgIUglpc0'
    'RlbGV0ZWQSOQoKY3JlYXRlZF9hdBgVIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBS'
    'CWNyZWF0ZWRBdBI5Cgp1cGRhdGVkX2F0GBYgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdG'
    'FtcFIJdXBkYXRlZEF0EhsKCWNvdmVyX3VybBgXIAEoCVIIY292ZXJVcmwSGwoJYXVkaW9fdXJs'
    'GBggASgJUghhdWRpb1VybA==');

@$core.Deprecated('Use checkSongsByHashRequestDescriptor instead')
const CheckSongsByHashRequest$json = {
  '1': 'CheckSongsByHashRequest',
  '2': [
    {'1': 'device_id', '3': 1, '4': 1, '5': 9, '10': 'deviceId'},
    {'1': 'file_hashes', '3': 2, '4': 3, '5': 9, '10': 'fileHashes'},
  ],
};

/// Descriptor for `CheckSongsByHashRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List checkSongsByHashRequestDescriptor =
    $convert.base64Decode(
        'ChdDaGVja1NvbmdzQnlIYXNoUmVxdWVzdBIbCglkZXZpY2VfaWQYASABKAlSCGRldmljZUlkEh'
        '8KC2ZpbGVfaGFzaGVzGAIgAygJUgpmaWxlSGFzaGVz');

@$core.Deprecated('Use checkSongsByHashResponseDescriptor instead')
const CheckSongsByHashResponse$json = {
  '1': 'CheckSongsByHashResponse',
  '2': [
    {
      '1': 'results',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.echo_vault.song.v1.CheckSongsByHashResponse.Result',
      '10': 'results'
    },
  ],
  '3': [CheckSongsByHashResponse_Result$json],
};

@$core.Deprecated('Use checkSongsByHashResponseDescriptor instead')
const CheckSongsByHashResponse_Result$json = {
  '1': 'Result',
  '2': [
    {'1': 'file_hash', '3': 1, '4': 1, '5': 9, '10': 'fileHash'},
    {'1': 'exists', '3': 2, '4': 1, '5': 8, '10': 'exists'},
    {
      '1': 'song',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.echo_vault.song.v1.Song',
      '10': 'song'
    },
  ],
};

/// Descriptor for `CheckSongsByHashResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List checkSongsByHashResponseDescriptor = $convert.base64Decode(
    'ChhDaGVja1NvbmdzQnlIYXNoUmVzcG9uc2USTQoHcmVzdWx0cxgBIAMoCzIzLmVjaG9fdmF1bH'
    'Quc29uZy52MS5DaGVja1NvbmdzQnlIYXNoUmVzcG9uc2UuUmVzdWx0UgdyZXN1bHRzGmsKBlJl'
    'c3VsdBIbCglmaWxlX2hhc2gYASABKAlSCGZpbGVIYXNoEhYKBmV4aXN0cxgCIAEoCFIGZXhpc3'
    'RzEiwKBHNvbmcYAyABKAsyGC5lY2hvX3ZhdWx0LnNvbmcudjEuU29uZ1IEc29uZw==');

@$core.Deprecated('Use publishSongRequestDescriptor instead')
const PublishSongRequest$json = {
  '1': 'PublishSongRequest',
  '2': [
    {'1': 'file_hash', '3': 1, '4': 1, '5': 9, '10': 'fileHash'},
    {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    {'1': 'artist', '3': 3, '4': 1, '5': 9, '10': 'artist'},
    {'1': 'album', '3': 4, '4': 1, '5': 9, '10': 'album'},
    {'1': 'genre', '3': 5, '4': 1, '5': 9, '10': 'genre'},
    {'1': 'track_number', '3': 6, '4': 1, '5': 5, '10': 'trackNumber'},
    {'1': 'disc_number', '3': 7, '4': 1, '5': 5, '10': 'discNumber'},
    {'1': 'year', '3': 8, '4': 1, '5': 5, '10': 'year'},
    {'1': 'file_name', '3': 9, '4': 1, '5': 9, '10': 'fileName'},
    {'1': 'file_size', '3': 10, '4': 1, '5': 3, '10': 'fileSize'},
    {'1': 'mime_type', '3': 11, '4': 1, '5': 9, '10': 'mimeType'},
  ],
};

/// Descriptor for `PublishSongRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List publishSongRequestDescriptor = $convert.base64Decode(
    'ChJQdWJsaXNoU29uZ1JlcXVlc3QSGwoJZmlsZV9oYXNoGAEgASgJUghmaWxlSGFzaBIUCgV0aX'
    'RsZRgCIAEoCVIFdGl0bGUSFgoGYXJ0aXN0GAMgASgJUgZhcnRpc3QSFAoFYWxidW0YBCABKAlS'
    'BWFsYnVtEhQKBWdlbnJlGAUgASgJUgVnZW5yZRIhCgx0cmFja19udW1iZXIYBiABKAVSC3RyYW'
    'NrTnVtYmVyEh8KC2Rpc2NfbnVtYmVyGAcgASgFUgpkaXNjTnVtYmVyEhIKBHllYXIYCCABKAVS'
    'BHllYXISGwoJZmlsZV9uYW1lGAkgASgJUghmaWxlTmFtZRIbCglmaWxlX3NpemUYCiABKANSCG'
    'ZpbGVTaXplEhsKCW1pbWVfdHlwZRgLIAEoCVIIbWltZVR5cGU=');

@$core.Deprecated('Use publishSongResponseDescriptor instead')
const PublishSongResponse$json = {
  '1': 'PublishSongResponse',
  '2': [
    {
      '1': 'song',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.echo_vault.song.v1.Song',
      '10': 'song'
    },
  ],
};

/// Descriptor for `PublishSongResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List publishSongResponseDescriptor = $convert.base64Decode(
    'ChNQdWJsaXNoU29uZ1Jlc3BvbnNlEiwKBHNvbmcYASABKAsyGC5lY2hvX3ZhdWx0LnNvbmcudj'
    'EuU29uZ1IEc29uZw==');

@$core.Deprecated('Use updateSongRequestDescriptor instead')
const UpdateSongRequest$json = {
  '1': 'UpdateSongRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    {'1': 'artist', '3': 3, '4': 1, '5': 9, '10': 'artist'},
    {'1': 'album', '3': 4, '4': 1, '5': 9, '10': 'album'},
    {'1': 'genre', '3': 5, '4': 1, '5': 9, '10': 'genre'},
    {'1': 'track_number', '3': 6, '4': 1, '5': 5, '10': 'trackNumber'},
    {'1': 'disc_number', '3': 7, '4': 1, '5': 5, '10': 'discNumber'},
    {'1': 'year', '3': 8, '4': 1, '5': 5, '10': 'year'},
  ],
};

/// Descriptor for `UpdateSongRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateSongRequestDescriptor = $convert.base64Decode(
    'ChFVcGRhdGVTb25nUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQSFAoFdGl0bGUYAiABKAlSBXRpdG'
    'xlEhYKBmFydGlzdBgDIAEoCVIGYXJ0aXN0EhQKBWFsYnVtGAQgASgJUgVhbGJ1bRIUCgVnZW5y'
    'ZRgFIAEoCVIFZ2VucmUSIQoMdHJhY2tfbnVtYmVyGAYgASgFUgt0cmFja051bWJlchIfCgtkaX'
    'NjX251bWJlchgHIAEoBVIKZGlzY051bWJlchISCgR5ZWFyGAggASgFUgR5ZWFy');

@$core.Deprecated('Use updateSongResponseDescriptor instead')
const UpdateSongResponse$json = {
  '1': 'UpdateSongResponse',
  '2': [
    {
      '1': 'song',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.echo_vault.song.v1.Song',
      '10': 'song'
    },
  ],
};

/// Descriptor for `UpdateSongResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateSongResponseDescriptor = $convert.base64Decode(
    'ChJVcGRhdGVTb25nUmVzcG9uc2USLAoEc29uZxgBIAEoCzIYLmVjaG9fdmF1bHQuc29uZy52MS'
    '5Tb25nUgRzb25n');

@$core.Deprecated('Use deleteSongRequestDescriptor instead')
const DeleteSongRequest$json = {
  '1': 'DeleteSongRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `DeleteSongRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteSongRequestDescriptor =
    $convert.base64Decode('ChFEZWxldGVTb25nUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQ=');

@$core.Deprecated('Use deleteSongResponseDescriptor instead')
const DeleteSongResponse$json = {
  '1': 'DeleteSongResponse',
};

/// Descriptor for `DeleteSongResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteSongResponseDescriptor =
    $convert.base64Decode('ChJEZWxldGVTb25nUmVzcG9uc2U=');

@$core.Deprecated('Use getSongRequestDescriptor instead')
const GetSongRequest$json = {
  '1': 'GetSongRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetSongRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSongRequestDescriptor =
    $convert.base64Decode('Cg5HZXRTb25nUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQ=');

@$core.Deprecated('Use getSongResponseDescriptor instead')
const GetSongResponse$json = {
  '1': 'GetSongResponse',
  '2': [
    {
      '1': 'song',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.echo_vault.song.v1.Song',
      '10': 'song'
    },
  ],
};

/// Descriptor for `GetSongResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSongResponseDescriptor = $convert.base64Decode(
    'Cg9HZXRTb25nUmVzcG9uc2USLAoEc29uZxgBIAEoCzIYLmVjaG9fdmF1bHQuc29uZy52MS5Tb2'
    '5nUgRzb25n');

@$core.Deprecated('Use listSongsRequestDescriptor instead')
const ListSongsRequest$json = {
  '1': 'ListSongsRequest',
  '2': [
    {
      '1': 'pagination',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.echo_vault.common.v1.PaginationRequest',
      '10': 'pagination'
    },
    {'1': 'owner_id', '3': 2, '4': 1, '5': 9, '10': 'ownerId'},
    {'1': 'sort_by', '3': 3, '4': 1, '5': 9, '10': 'sortBy'},
    {'1': 'sort_order', '3': 4, '4': 1, '5': 9, '10': 'sortOrder'},
  ],
};

/// Descriptor for `ListSongsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listSongsRequestDescriptor = $convert.base64Decode(
    'ChBMaXN0U29uZ3NSZXF1ZXN0EkcKCnBhZ2luYXRpb24YASABKAsyJy5lY2hvX3ZhdWx0LmNvbW'
    '1vbi52MS5QYWdpbmF0aW9uUmVxdWVzdFIKcGFnaW5hdGlvbhIZCghvd25lcl9pZBgCIAEoCVIH'
    'b3duZXJJZBIXCgdzb3J0X2J5GAMgASgJUgZzb3J0QnkSHQoKc29ydF9vcmRlchgEIAEoCVIJc2'
    '9ydE9yZGVy');

@$core.Deprecated('Use listSongsResponseDescriptor instead')
const ListSongsResponse$json = {
  '1': 'ListSongsResponse',
  '2': [
    {
      '1': 'songs',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.echo_vault.song.v1.Song',
      '10': 'songs'
    },
    {
      '1': 'pagination',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.echo_vault.common.v1.PaginationResponse',
      '10': 'pagination'
    },
  ],
};

/// Descriptor for `ListSongsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listSongsResponseDescriptor = $convert.base64Decode(
    'ChFMaXN0U29uZ3NSZXNwb25zZRIuCgVzb25ncxgBIAMoCzIYLmVjaG9fdmF1bHQuc29uZy52MS'
    '5Tb25nUgVzb25ncxJICgpwYWdpbmF0aW9uGAIgASgLMiguZWNob192YXVsdC5jb21tb24udjEu'
    'UGFnaW5hdGlvblJlc3BvbnNlUgpwYWdpbmF0aW9u');

@$core.Deprecated('Use searchSongsRequestDescriptor instead')
const SearchSongsRequest$json = {
  '1': 'SearchSongsRequest',
  '2': [
    {'1': 'query', '3': 1, '4': 1, '5': 9, '10': 'query'},
    {
      '1': 'pagination',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.echo_vault.common.v1.PaginationRequest',
      '10': 'pagination'
    },
  ],
};

/// Descriptor for `SearchSongsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List searchSongsRequestDescriptor = $convert.base64Decode(
    'ChJTZWFyY2hTb25nc1JlcXVlc3QSFAoFcXVlcnkYASABKAlSBXF1ZXJ5EkcKCnBhZ2luYXRpb2'
    '4YAiABKAsyJy5lY2hvX3ZhdWx0LmNvbW1vbi52MS5QYWdpbmF0aW9uUmVxdWVzdFIKcGFnaW5h'
    'dGlvbg==');

@$core.Deprecated('Use searchSongsResponseDescriptor instead')
const SearchSongsResponse$json = {
  '1': 'SearchSongsResponse',
  '2': [
    {
      '1': 'songs',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.echo_vault.song.v1.Song',
      '10': 'songs'
    },
    {
      '1': 'pagination',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.echo_vault.common.v1.PaginationResponse',
      '10': 'pagination'
    },
  ],
};

/// Descriptor for `SearchSongsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List searchSongsResponseDescriptor = $convert.base64Decode(
    'ChNTZWFyY2hTb25nc1Jlc3BvbnNlEi4KBXNvbmdzGAEgAygLMhguZWNob192YXVsdC5zb25nLn'
    'YxLlNvbmdSBXNvbmdzEkgKCnBhZ2luYXRpb24YAiABKAsyKC5lY2hvX3ZhdWx0LmNvbW1vbi52'
    'MS5QYWdpbmF0aW9uUmVzcG9uc2VSCnBhZ2luYXRpb24=');

@$core.Deprecated('Use listDeviceLocalSongsRequestDescriptor instead')
const ListDeviceLocalSongsRequest$json = {
  '1': 'ListDeviceLocalSongsRequest',
  '2': [
    {'1': 'device_id', '3': 1, '4': 1, '5': 9, '10': 'deviceId'},
  ],
};

/// Descriptor for `ListDeviceLocalSongsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listDeviceLocalSongsRequestDescriptor =
    $convert.base64Decode(
        'ChtMaXN0RGV2aWNlTG9jYWxTb25nc1JlcXVlc3QSGwoJZGV2aWNlX2lkGAEgASgJUghkZXZpY2'
        'VJZA==');

@$core.Deprecated('Use listDeviceLocalSongsResponseDescriptor instead')
const ListDeviceLocalSongsResponse$json = {
  '1': 'ListDeviceLocalSongsResponse',
  '2': [
    {
      '1': 'songs',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.echo_vault.song.v1.Song',
      '10': 'songs'
    },
  ],
};

/// Descriptor for `ListDeviceLocalSongsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listDeviceLocalSongsResponseDescriptor =
    $convert.base64Decode(
        'ChxMaXN0RGV2aWNlTG9jYWxTb25nc1Jlc3BvbnNlEi4KBXNvbmdzGAEgAygLMhguZWNob192YX'
        'VsdC5zb25nLnYxLlNvbmdSBXNvbmdz');

const $core.Map<$core.String, $core.dynamic> SongServiceBase$json = {
  '1': 'SongService',
  '2': [
    {
      '1': 'CheckSongsByHash',
      '2': '.echo_vault.song.v1.CheckSongsByHashRequest',
      '3': '.echo_vault.song.v1.CheckSongsByHashResponse'
    },
    {
      '1': 'PublishSong',
      '2': '.echo_vault.song.v1.PublishSongRequest',
      '3': '.echo_vault.song.v1.PublishSongResponse'
    },
    {
      '1': 'UpdateSong',
      '2': '.echo_vault.song.v1.UpdateSongRequest',
      '3': '.echo_vault.song.v1.UpdateSongResponse'
    },
    {
      '1': 'DeleteSong',
      '2': '.echo_vault.song.v1.DeleteSongRequest',
      '3': '.echo_vault.song.v1.DeleteSongResponse'
    },
    {
      '1': 'GetSong',
      '2': '.echo_vault.song.v1.GetSongRequest',
      '3': '.echo_vault.song.v1.GetSongResponse'
    },
    {
      '1': 'ListSongs',
      '2': '.echo_vault.song.v1.ListSongsRequest',
      '3': '.echo_vault.song.v1.ListSongsResponse'
    },
    {
      '1': 'SearchSongs',
      '2': '.echo_vault.song.v1.SearchSongsRequest',
      '3': '.echo_vault.song.v1.SearchSongsResponse'
    },
    {
      '1': 'ListDeviceLocalSongs',
      '2': '.echo_vault.song.v1.ListDeviceLocalSongsRequest',
      '3': '.echo_vault.song.v1.ListDeviceLocalSongsResponse'
    },
  ],
};

@$core.Deprecated('Use songServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>>
    SongServiceBase$messageJson = {
  '.echo_vault.song.v1.CheckSongsByHashRequest': CheckSongsByHashRequest$json,
  '.echo_vault.song.v1.CheckSongsByHashResponse': CheckSongsByHashResponse$json,
  '.echo_vault.song.v1.CheckSongsByHashResponse.Result':
      CheckSongsByHashResponse_Result$json,
  '.echo_vault.song.v1.Song': Song$json,
  '.google.protobuf.Timestamp': $0.Timestamp$json,
  '.echo_vault.song.v1.PublishSongRequest': PublishSongRequest$json,
  '.echo_vault.song.v1.PublishSongResponse': PublishSongResponse$json,
  '.echo_vault.song.v1.UpdateSongRequest': UpdateSongRequest$json,
  '.echo_vault.song.v1.UpdateSongResponse': UpdateSongResponse$json,
  '.echo_vault.song.v1.DeleteSongRequest': DeleteSongRequest$json,
  '.echo_vault.song.v1.DeleteSongResponse': DeleteSongResponse$json,
  '.echo_vault.song.v1.GetSongRequest': GetSongRequest$json,
  '.echo_vault.song.v1.GetSongResponse': GetSongResponse$json,
  '.echo_vault.song.v1.ListSongsRequest': ListSongsRequest$json,
  '.echo_vault.common.v1.PaginationRequest': $1.PaginationRequest$json,
  '.echo_vault.song.v1.ListSongsResponse': ListSongsResponse$json,
  '.echo_vault.common.v1.PaginationResponse': $1.PaginationResponse$json,
  '.echo_vault.song.v1.SearchSongsRequest': SearchSongsRequest$json,
  '.echo_vault.song.v1.SearchSongsResponse': SearchSongsResponse$json,
  '.echo_vault.song.v1.ListDeviceLocalSongsRequest':
      ListDeviceLocalSongsRequest$json,
  '.echo_vault.song.v1.ListDeviceLocalSongsResponse':
      ListDeviceLocalSongsResponse$json,
};

/// Descriptor for `SongService`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List songServiceDescriptor = $convert.base64Decode(
    'CgtTb25nU2VydmljZRJtChBDaGVja1NvbmdzQnlIYXNoEisuZWNob192YXVsdC5zb25nLnYxLk'
    'NoZWNrU29uZ3NCeUhhc2hSZXF1ZXN0GiwuZWNob192YXVsdC5zb25nLnYxLkNoZWNrU29uZ3NC'
    'eUhhc2hSZXNwb25zZRJeCgtQdWJsaXNoU29uZxImLmVjaG9fdmF1bHQuc29uZy52MS5QdWJsaX'
    'NoU29uZ1JlcXVlc3QaJy5lY2hvX3ZhdWx0LnNvbmcudjEuUHVibGlzaFNvbmdSZXNwb25zZRJb'
    'CgpVcGRhdGVTb25nEiUuZWNob192YXVsdC5zb25nLnYxLlVwZGF0ZVNvbmdSZXF1ZXN0GiYuZW'
    'Nob192YXVsdC5zb25nLnYxLlVwZGF0ZVNvbmdSZXNwb25zZRJbCgpEZWxldGVTb25nEiUuZWNo'
    'b192YXVsdC5zb25nLnYxLkRlbGV0ZVNvbmdSZXF1ZXN0GiYuZWNob192YXVsdC5zb25nLnYxLk'
    'RlbGV0ZVNvbmdSZXNwb25zZRJSCgdHZXRTb25nEiIuZWNob192YXVsdC5zb25nLnYxLkdldFNv'
    'bmdSZXF1ZXN0GiMuZWNob192YXVsdC5zb25nLnYxLkdldFNvbmdSZXNwb25zZRJYCglMaXN0U2'
    '9uZ3MSJC5lY2hvX3ZhdWx0LnNvbmcudjEuTGlzdFNvbmdzUmVxdWVzdBolLmVjaG9fdmF1bHQu'
    'c29uZy52MS5MaXN0U29uZ3NSZXNwb25zZRJeCgtTZWFyY2hTb25ncxImLmVjaG9fdmF1bHQuc2'
    '9uZy52MS5TZWFyY2hTb25nc1JlcXVlc3QaJy5lY2hvX3ZhdWx0LnNvbmcudjEuU2VhcmNoU29u'
    'Z3NSZXNwb25zZRJ5ChRMaXN0RGV2aWNlTG9jYWxTb25ncxIvLmVjaG9fdmF1bHQuc29uZy52MS'
    '5MaXN0RGV2aWNlTG9jYWxTb25nc1JlcXVlc3QaMC5lY2hvX3ZhdWx0LnNvbmcudjEuTGlzdERl'
    'dmljZUxvY2FsU29uZ3NSZXNwb25zZQ==');
