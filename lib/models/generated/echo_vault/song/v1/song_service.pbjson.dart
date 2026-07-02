///
//  Generated code. Do not modify.
//  source: echo_vault/song/v1/song_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use songDescriptor instead')
const Song$json = const {
  '1': 'Song',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'artist', '3': 3, '4': 1, '5': 9, '10': 'artist'},
    const {'1': 'album', '3': 4, '4': 1, '5': 9, '10': 'album'},
    const {'1': 'genre', '3': 5, '4': 1, '5': 9, '10': 'genre'},
    const {'1': 'track_number', '3': 6, '4': 1, '5': 5, '10': 'trackNumber'},
    const {'1': 'disc_number', '3': 7, '4': 1, '5': 5, '10': 'discNumber'},
    const {'1': 'duration_ms', '3': 8, '4': 1, '5': 5, '10': 'durationMs'},
    const {'1': 'year', '3': 9, '4': 1, '5': 5, '10': 'year'},
    const {'1': 'file_name', '3': 10, '4': 1, '5': 9, '10': 'fileName'},
    const {'1': 'file_size', '3': 11, '4': 1, '5': 3, '10': 'fileSize'},
    const {'1': 'file_hash', '3': 12, '4': 1, '5': 9, '10': 'fileHash'},
    const {'1': 'mime_type', '3': 13, '4': 1, '5': 9, '10': 'mimeType'},
    const {'1': 'bitrate', '3': 14, '4': 1, '5': 5, '10': 'bitrate'},
    const {'1': 'sample_rate', '3': 15, '4': 1, '5': 5, '10': 'sampleRate'},
    const {'1': 'source', '3': 16, '4': 1, '5': 14, '6': '.echo_vault.common.v1.FileSource', '10': 'source'},
    const {'1': 'file_status', '3': 17, '4': 1, '5': 14, '6': '.echo_vault.common.v1.FileStatus', '10': 'fileStatus'},
    const {'1': 'owner_id', '3': 18, '4': 1, '5': 9, '10': 'ownerId'},
    const {'1': 'version', '3': 19, '4': 1, '5': 3, '10': 'version'},
    const {'1': 'is_deleted', '3': 20, '4': 1, '5': 8, '10': 'isDeleted'},
    const {'1': 'created_at', '3': 21, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
    const {'1': 'updated_at', '3': 22, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updatedAt'},
    const {'1': 'cover_url', '3': 23, '4': 1, '5': 9, '10': 'coverUrl'},
    const {'1': 'audio_url', '3': 24, '4': 1, '5': 9, '10': 'audioUrl'},
  ],
};

/// Descriptor for `Song`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List songDescriptor = $convert.base64Decode('CgRTb25nEg4KAmlkGAEgASgJUgJpZBIUCgV0aXRsZRgCIAEoCVIFdGl0bGUSFgoGYXJ0aXN0GAMgASgJUgZhcnRpc3QSFAoFYWxidW0YBCABKAlSBWFsYnVtEhQKBWdlbnJlGAUgASgJUgVnZW5yZRIhCgx0cmFja19udW1iZXIYBiABKAVSC3RyYWNrTnVtYmVyEh8KC2Rpc2NfbnVtYmVyGAcgASgFUgpkaXNjTnVtYmVyEh8KC2R1cmF0aW9uX21zGAggASgFUgpkdXJhdGlvbk1zEhIKBHllYXIYCSABKAVSBHllYXISGwoJZmlsZV9uYW1lGAogASgJUghmaWxlTmFtZRIbCglmaWxlX3NpemUYCyABKANSCGZpbGVTaXplEhsKCWZpbGVfaGFzaBgMIAEoCVIIZmlsZUhhc2gSGwoJbWltZV90eXBlGA0gASgJUghtaW1lVHlwZRIYCgdiaXRyYXRlGA4gASgFUgdiaXRyYXRlEh8KC3NhbXBsZV9yYXRlGA8gASgFUgpzYW1wbGVSYXRlEjgKBnNvdXJjZRgQIAEoDjIgLmVjaG9fdmF1bHQuY29tbW9uLnYxLkZpbGVTb3VyY2VSBnNvdXJjZRJBCgtmaWxlX3N0YXR1cxgRIAEoDjIgLmVjaG9fdmF1bHQuY29tbW9uLnYxLkZpbGVTdGF0dXNSCmZpbGVTdGF0dXMSGQoIb3duZXJfaWQYEiABKAlSB293bmVySWQSGAoHdmVyc2lvbhgTIAEoA1IHdmVyc2lvbhIdCgppc19kZWxldGVkGBQgASgIUglpc0RlbGV0ZWQSOQoKY3JlYXRlZF9hdBgVIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCWNyZWF0ZWRBdBI5Cgp1cGRhdGVkX2F0GBYgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIJdXBkYXRlZEF0EhsKCWNvdmVyX3VybBgXIAEoCVIIY292ZXJVcmwSGwoJYXVkaW9fdXJsGBggASgJUghhdWRpb1VybA==');
@$core.Deprecated('Use checkSongsByHashRequestDescriptor instead')
const CheckSongsByHashRequest$json = const {
  '1': 'CheckSongsByHashRequest',
  '2': const [
    const {'1': 'device_id', '3': 1, '4': 1, '5': 9, '10': 'deviceId'},
    const {'1': 'file_hashes', '3': 2, '4': 3, '5': 9, '10': 'fileHashes'},
  ],
};

/// Descriptor for `CheckSongsByHashRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List checkSongsByHashRequestDescriptor = $convert.base64Decode('ChdDaGVja1NvbmdzQnlIYXNoUmVxdWVzdBIbCglkZXZpY2VfaWQYASABKAlSCGRldmljZUlkEh8KC2ZpbGVfaGFzaGVzGAIgAygJUgpmaWxlSGFzaGVz');
@$core.Deprecated('Use checkSongsByHashResponseDescriptor instead')
const CheckSongsByHashResponse$json = const {
  '1': 'CheckSongsByHashResponse',
  '2': const [
    const {'1': 'results', '3': 1, '4': 3, '5': 11, '6': '.echo_vault.song.v1.CheckSongsByHashResponse.Result', '10': 'results'},
  ],
  '3': const [CheckSongsByHashResponse_Result$json],
};

@$core.Deprecated('Use checkSongsByHashResponseDescriptor instead')
const CheckSongsByHashResponse_Result$json = const {
  '1': 'Result',
  '2': const [
    const {'1': 'file_hash', '3': 1, '4': 1, '5': 9, '10': 'fileHash'},
    const {'1': 'exists', '3': 2, '4': 1, '5': 8, '10': 'exists'},
    const {'1': 'song', '3': 3, '4': 1, '5': 11, '6': '.echo_vault.song.v1.Song', '10': 'song'},
  ],
};

/// Descriptor for `CheckSongsByHashResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List checkSongsByHashResponseDescriptor = $convert.base64Decode('ChhDaGVja1NvbmdzQnlIYXNoUmVzcG9uc2USTQoHcmVzdWx0cxgBIAMoCzIzLmVjaG9fdmF1bHQuc29uZy52MS5DaGVja1NvbmdzQnlIYXNoUmVzcG9uc2UuUmVzdWx0UgdyZXN1bHRzGmsKBlJlc3VsdBIbCglmaWxlX2hhc2gYASABKAlSCGZpbGVIYXNoEhYKBmV4aXN0cxgCIAEoCFIGZXhpc3RzEiwKBHNvbmcYAyABKAsyGC5lY2hvX3ZhdWx0LnNvbmcudjEuU29uZ1IEc29uZw==');
@$core.Deprecated('Use publishSongRequestDescriptor instead')
const PublishSongRequest$json = const {
  '1': 'PublishSongRequest',
  '2': const [
    const {'1': 'file_hash', '3': 1, '4': 1, '5': 9, '10': 'fileHash'},
    const {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'artist', '3': 3, '4': 1, '5': 9, '10': 'artist'},
    const {'1': 'album', '3': 4, '4': 1, '5': 9, '10': 'album'},
    const {'1': 'genre', '3': 5, '4': 1, '5': 9, '10': 'genre'},
    const {'1': 'track_number', '3': 6, '4': 1, '5': 5, '10': 'trackNumber'},
    const {'1': 'disc_number', '3': 7, '4': 1, '5': 5, '10': 'discNumber'},
    const {'1': 'year', '3': 8, '4': 1, '5': 5, '10': 'year'},
    const {'1': 'file_name', '3': 9, '4': 1, '5': 9, '10': 'fileName'},
    const {'1': 'file_size', '3': 10, '4': 1, '5': 3, '10': 'fileSize'},
    const {'1': 'mime_type', '3': 11, '4': 1, '5': 9, '10': 'mimeType'},
  ],
};

/// Descriptor for `PublishSongRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List publishSongRequestDescriptor = $convert.base64Decode('ChJQdWJsaXNoU29uZ1JlcXVlc3QSGwoJZmlsZV9oYXNoGAEgASgJUghmaWxlSGFzaBIUCgV0aXRsZRgCIAEoCVIFdGl0bGUSFgoGYXJ0aXN0GAMgASgJUgZhcnRpc3QSFAoFYWxidW0YBCABKAlSBWFsYnVtEhQKBWdlbnJlGAUgASgJUgVnZW5yZRIhCgx0cmFja19udW1iZXIYBiABKAVSC3RyYWNrTnVtYmVyEh8KC2Rpc2NfbnVtYmVyGAcgASgFUgpkaXNjTnVtYmVyEhIKBHllYXIYCCABKAVSBHllYXISGwoJZmlsZV9uYW1lGAkgASgJUghmaWxlTmFtZRIbCglmaWxlX3NpemUYCiABKANSCGZpbGVTaXplEhsKCW1pbWVfdHlwZRgLIAEoCVIIbWltZVR5cGU=');
@$core.Deprecated('Use publishSongResponseDescriptor instead')
const PublishSongResponse$json = const {
  '1': 'PublishSongResponse',
  '2': const [
    const {'1': 'song', '3': 1, '4': 1, '5': 11, '6': '.echo_vault.song.v1.Song', '10': 'song'},
  ],
};

/// Descriptor for `PublishSongResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List publishSongResponseDescriptor = $convert.base64Decode('ChNQdWJsaXNoU29uZ1Jlc3BvbnNlEiwKBHNvbmcYASABKAsyGC5lY2hvX3ZhdWx0LnNvbmcudjEuU29uZ1IEc29uZw==');
@$core.Deprecated('Use updateSongRequestDescriptor instead')
const UpdateSongRequest$json = const {
  '1': 'UpdateSongRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'artist', '3': 3, '4': 1, '5': 9, '10': 'artist'},
    const {'1': 'album', '3': 4, '4': 1, '5': 9, '10': 'album'},
    const {'1': 'genre', '3': 5, '4': 1, '5': 9, '10': 'genre'},
    const {'1': 'track_number', '3': 6, '4': 1, '5': 5, '10': 'trackNumber'},
    const {'1': 'disc_number', '3': 7, '4': 1, '5': 5, '10': 'discNumber'},
    const {'1': 'year', '3': 8, '4': 1, '5': 5, '10': 'year'},
  ],
};

/// Descriptor for `UpdateSongRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateSongRequestDescriptor = $convert.base64Decode('ChFVcGRhdGVTb25nUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQSFAoFdGl0bGUYAiABKAlSBXRpdGxlEhYKBmFydGlzdBgDIAEoCVIGYXJ0aXN0EhQKBWFsYnVtGAQgASgJUgVhbGJ1bRIUCgVnZW5yZRgFIAEoCVIFZ2VucmUSIQoMdHJhY2tfbnVtYmVyGAYgASgFUgt0cmFja051bWJlchIfCgtkaXNjX251bWJlchgHIAEoBVIKZGlzY051bWJlchISCgR5ZWFyGAggASgFUgR5ZWFy');
@$core.Deprecated('Use updateSongResponseDescriptor instead')
const UpdateSongResponse$json = const {
  '1': 'UpdateSongResponse',
  '2': const [
    const {'1': 'song', '3': 1, '4': 1, '5': 11, '6': '.echo_vault.song.v1.Song', '10': 'song'},
  ],
};

/// Descriptor for `UpdateSongResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateSongResponseDescriptor = $convert.base64Decode('ChJVcGRhdGVTb25nUmVzcG9uc2USLAoEc29uZxgBIAEoCzIYLmVjaG9fdmF1bHQuc29uZy52MS5Tb25nUgRzb25n');
@$core.Deprecated('Use deleteSongRequestDescriptor instead')
const DeleteSongRequest$json = const {
  '1': 'DeleteSongRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `DeleteSongRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteSongRequestDescriptor = $convert.base64Decode('ChFEZWxldGVTb25nUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQ=');
@$core.Deprecated('Use deleteSongResponseDescriptor instead')
const DeleteSongResponse$json = const {
  '1': 'DeleteSongResponse',
};

/// Descriptor for `DeleteSongResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteSongResponseDescriptor = $convert.base64Decode('ChJEZWxldGVTb25nUmVzcG9uc2U=');
@$core.Deprecated('Use getSongRequestDescriptor instead')
const GetSongRequest$json = const {
  '1': 'GetSongRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetSongRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSongRequestDescriptor = $convert.base64Decode('Cg5HZXRTb25nUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQ=');
@$core.Deprecated('Use getSongResponseDescriptor instead')
const GetSongResponse$json = const {
  '1': 'GetSongResponse',
  '2': const [
    const {'1': 'song', '3': 1, '4': 1, '5': 11, '6': '.echo_vault.song.v1.Song', '10': 'song'},
  ],
};

/// Descriptor for `GetSongResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSongResponseDescriptor = $convert.base64Decode('Cg9HZXRTb25nUmVzcG9uc2USLAoEc29uZxgBIAEoCzIYLmVjaG9fdmF1bHQuc29uZy52MS5Tb25nUgRzb25n');
@$core.Deprecated('Use listSongsRequestDescriptor instead')
const ListSongsRequest$json = const {
  '1': 'ListSongsRequest',
  '2': const [
    const {'1': 'pagination', '3': 1, '4': 1, '5': 11, '6': '.echo_vault.common.v1.PaginationRequest', '10': 'pagination'},
    const {'1': 'owner_id', '3': 2, '4': 1, '5': 9, '10': 'ownerId'},
    const {'1': 'sort_by', '3': 3, '4': 1, '5': 9, '10': 'sortBy'},
    const {'1': 'sort_order', '3': 4, '4': 1, '5': 9, '10': 'sortOrder'},
  ],
};

/// Descriptor for `ListSongsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listSongsRequestDescriptor = $convert.base64Decode('ChBMaXN0U29uZ3NSZXF1ZXN0EkcKCnBhZ2luYXRpb24YASABKAsyJy5lY2hvX3ZhdWx0LmNvbW1vbi52MS5QYWdpbmF0aW9uUmVxdWVzdFIKcGFnaW5hdGlvbhIZCghvd25lcl9pZBgCIAEoCVIHb3duZXJJZBIXCgdzb3J0X2J5GAMgASgJUgZzb3J0QnkSHQoKc29ydF9vcmRlchgEIAEoCVIJc29ydE9yZGVy');
@$core.Deprecated('Use listSongsResponseDescriptor instead')
const ListSongsResponse$json = const {
  '1': 'ListSongsResponse',
  '2': const [
    const {'1': 'songs', '3': 1, '4': 3, '5': 11, '6': '.echo_vault.song.v1.Song', '10': 'songs'},
    const {'1': 'pagination', '3': 2, '4': 1, '5': 11, '6': '.echo_vault.common.v1.PaginationResponse', '10': 'pagination'},
  ],
};

/// Descriptor for `ListSongsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listSongsResponseDescriptor = $convert.base64Decode('ChFMaXN0U29uZ3NSZXNwb25zZRIuCgVzb25ncxgBIAMoCzIYLmVjaG9fdmF1bHQuc29uZy52MS5Tb25nUgVzb25ncxJICgpwYWdpbmF0aW9uGAIgASgLMiguZWNob192YXVsdC5jb21tb24udjEuUGFnaW5hdGlvblJlc3BvbnNlUgpwYWdpbmF0aW9u');
@$core.Deprecated('Use searchSongsRequestDescriptor instead')
const SearchSongsRequest$json = const {
  '1': 'SearchSongsRequest',
  '2': const [
    const {'1': 'query', '3': 1, '4': 1, '5': 9, '10': 'query'},
    const {'1': 'pagination', '3': 2, '4': 1, '5': 11, '6': '.echo_vault.common.v1.PaginationRequest', '10': 'pagination'},
  ],
};

/// Descriptor for `SearchSongsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List searchSongsRequestDescriptor = $convert.base64Decode('ChJTZWFyY2hTb25nc1JlcXVlc3QSFAoFcXVlcnkYASABKAlSBXF1ZXJ5EkcKCnBhZ2luYXRpb24YAiABKAsyJy5lY2hvX3ZhdWx0LmNvbW1vbi52MS5QYWdpbmF0aW9uUmVxdWVzdFIKcGFnaW5hdGlvbg==');
@$core.Deprecated('Use searchSongsResponseDescriptor instead')
const SearchSongsResponse$json = const {
  '1': 'SearchSongsResponse',
  '2': const [
    const {'1': 'songs', '3': 1, '4': 3, '5': 11, '6': '.echo_vault.song.v1.Song', '10': 'songs'},
    const {'1': 'pagination', '3': 2, '4': 1, '5': 11, '6': '.echo_vault.common.v1.PaginationResponse', '10': 'pagination'},
  ],
};

/// Descriptor for `SearchSongsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List searchSongsResponseDescriptor = $convert.base64Decode('ChNTZWFyY2hTb25nc1Jlc3BvbnNlEi4KBXNvbmdzGAEgAygLMhguZWNob192YXVsdC5zb25nLnYxLlNvbmdSBXNvbmdzEkgKCnBhZ2luYXRpb24YAiABKAsyKC5lY2hvX3ZhdWx0LmNvbW1vbi52MS5QYWdpbmF0aW9uUmVzcG9uc2VSCnBhZ2luYXRpb24=');
@$core.Deprecated('Use listDeviceLocalSongsRequestDescriptor instead')
const ListDeviceLocalSongsRequest$json = const {
  '1': 'ListDeviceLocalSongsRequest',
  '2': const [
    const {'1': 'device_id', '3': 1, '4': 1, '5': 9, '10': 'deviceId'},
  ],
};

/// Descriptor for `ListDeviceLocalSongsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listDeviceLocalSongsRequestDescriptor = $convert.base64Decode('ChtMaXN0RGV2aWNlTG9jYWxTb25nc1JlcXVlc3QSGwoJZGV2aWNlX2lkGAEgASgJUghkZXZpY2VJZA==');
@$core.Deprecated('Use listDeviceLocalSongsResponseDescriptor instead')
const ListDeviceLocalSongsResponse$json = const {
  '1': 'ListDeviceLocalSongsResponse',
  '2': const [
    const {'1': 'songs', '3': 1, '4': 3, '5': 11, '6': '.echo_vault.song.v1.Song', '10': 'songs'},
  ],
};

/// Descriptor for `ListDeviceLocalSongsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listDeviceLocalSongsResponseDescriptor = $convert.base64Decode('ChxMaXN0RGV2aWNlTG9jYWxTb25nc1Jlc3BvbnNlEi4KBXNvbmdzGAEgAygLMhguZWNob192YXVsdC5zb25nLnYxLlNvbmdSBXNvbmdz');
