///
//  Generated code. Do not modify.
//  source: echo_vault/playlist/v1/playlist_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use playlistDescriptor instead')
const Playlist$json = const {
  '1': 'Playlist',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'cover_url', '3': 4, '4': 1, '5': 9, '10': 'coverUrl'},
    const {'1': 'type', '3': 5, '4': 1, '5': 14, '6': '.echo_vault.playlist.v1.Playlist.Type', '10': 'type'},
    const {'1': 'owner_id', '3': 6, '4': 1, '5': 9, '10': 'ownerId'},
    const {'1': 'is_public', '3': 7, '4': 1, '5': 8, '10': 'isPublic'},
    const {'1': 'song_count', '3': 8, '4': 1, '5': 5, '10': 'songCount'},
    const {'1': 'version', '3': 9, '4': 1, '5': 3, '10': 'version'},
    const {'1': 'created_at', '3': 10, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
    const {'1': 'updated_at', '3': 11, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updatedAt'},
  ],
  '4': const [Playlist_Type$json],
};

@$core.Deprecated('Use playlistDescriptor instead')
const Playlist_Type$json = const {
  '1': 'Type',
  '2': const [
    const {'1': 'TYPE_UNSPECIFIED', '2': 0},
    const {'1': 'TYPE_USER', '2': 1},
    const {'1': 'TYPE_FAVORITE', '2': 2},
    const {'1': 'TYPE_AUTO', '2': 3},
  ],
};

/// Descriptor for `Playlist`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List playlistDescriptor = $convert.base64Decode('CghQbGF5bGlzdBIOCgJpZBgBIAEoCVICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZRIgCgtkZXNjcmlwdGlvbhgDIAEoCVILZGVzY3JpcHRpb24SGwoJY292ZXJfdXJsGAQgASgJUghjb3ZlclVybBI5CgR0eXBlGAUgASgOMiUuZWNob192YXVsdC5wbGF5bGlzdC52MS5QbGF5bGlzdC5UeXBlUgR0eXBlEhkKCG93bmVyX2lkGAYgASgJUgdvd25lcklkEhsKCWlzX3B1YmxpYxgHIAEoCFIIaXNQdWJsaWMSHQoKc29uZ19jb3VudBgIIAEoBVIJc29uZ0NvdW50EhgKB3ZlcnNpb24YCSABKANSB3ZlcnNpb24SOQoKY3JlYXRlZF9hdBgKIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCWNyZWF0ZWRBdBI5Cgp1cGRhdGVkX2F0GAsgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIJdXBkYXRlZEF0Ik0KBFR5cGUSFAoQVFlQRV9VTlNQRUNJRklFRBAAEg0KCVRZUEVfVVNFUhABEhEKDVRZUEVfRkFWT1JJVEUQAhINCglUWVBFX0FVVE8QAw==');
@$core.Deprecated('Use playlistSongDescriptor instead')
const PlaylistSong$json = const {
  '1': 'PlaylistSong',
  '2': const [
    const {'1': 'playlist_id', '3': 1, '4': 1, '5': 9, '10': 'playlistId'},
    const {'1': 'song_id', '3': 2, '4': 1, '5': 9, '10': 'songId'},
    const {'1': 'song', '3': 3, '4': 1, '5': 11, '6': '.echo_vault.song.v1.Song', '10': 'song'},
    const {'1': 'position', '3': 4, '4': 1, '5': 5, '10': 'position'},
    const {'1': 'added_by', '3': 5, '4': 1, '5': 9, '10': 'addedBy'},
    const {'1': 'added_at', '3': 6, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'addedAt'},
  ],
};

/// Descriptor for `PlaylistSong`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List playlistSongDescriptor = $convert.base64Decode('CgxQbGF5bGlzdFNvbmcSHwoLcGxheWxpc3RfaWQYASABKAlSCnBsYXlsaXN0SWQSFwoHc29uZ19pZBgCIAEoCVIGc29uZ0lkEiwKBHNvbmcYAyABKAsyGC5lY2hvX3ZhdWx0LnNvbmcudjEuU29uZ1IEc29uZxIaCghwb3NpdGlvbhgEIAEoBVIIcG9zaXRpb24SGQoIYWRkZWRfYnkYBSABKAlSB2FkZGVkQnkSNQoIYWRkZWRfYXQYBiABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgdhZGRlZEF0');
@$core.Deprecated('Use createPlaylistRequestDescriptor instead')
const CreatePlaylistRequest$json = const {
  '1': 'CreatePlaylistRequest',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'is_public', '3': 3, '4': 1, '5': 8, '10': 'isPublic'},
  ],
};

/// Descriptor for `CreatePlaylistRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createPlaylistRequestDescriptor = $convert.base64Decode('ChVDcmVhdGVQbGF5bGlzdFJlcXVlc3QSEgoEbmFtZRgBIAEoCVIEbmFtZRIgCgtkZXNjcmlwdGlvbhgCIAEoCVILZGVzY3JpcHRpb24SGwoJaXNfcHVibGljGAMgASgIUghpc1B1YmxpYw==');
@$core.Deprecated('Use createPlaylistResponseDescriptor instead')
const CreatePlaylistResponse$json = const {
  '1': 'CreatePlaylistResponse',
  '2': const [
    const {'1': 'playlist', '3': 1, '4': 1, '5': 11, '6': '.echo_vault.playlist.v1.Playlist', '10': 'playlist'},
  ],
};

/// Descriptor for `CreatePlaylistResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createPlaylistResponseDescriptor = $convert.base64Decode('ChZDcmVhdGVQbGF5bGlzdFJlc3BvbnNlEjwKCHBsYXlsaXN0GAEgASgLMiAuZWNob192YXVsdC5wbGF5bGlzdC52MS5QbGF5bGlzdFIIcGxheWxpc3Q=');
@$core.Deprecated('Use getPlaylistRequestDescriptor instead')
const GetPlaylistRequest$json = const {
  '1': 'GetPlaylistRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetPlaylistRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPlaylistRequestDescriptor = $convert.base64Decode('ChJHZXRQbGF5bGlzdFJlcXVlc3QSDgoCaWQYASABKAlSAmlk');
@$core.Deprecated('Use getPlaylistResponseDescriptor instead')
const GetPlaylistResponse$json = const {
  '1': 'GetPlaylistResponse',
  '2': const [
    const {'1': 'playlist', '3': 1, '4': 1, '5': 11, '6': '.echo_vault.playlist.v1.Playlist', '10': 'playlist'},
  ],
};

/// Descriptor for `GetPlaylistResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPlaylistResponseDescriptor = $convert.base64Decode('ChNHZXRQbGF5bGlzdFJlc3BvbnNlEjwKCHBsYXlsaXN0GAEgASgLMiAuZWNob192YXVsdC5wbGF5bGlzdC52MS5QbGF5bGlzdFIIcGxheWxpc3Q=');
@$core.Deprecated('Use updatePlaylistRequestDescriptor instead')
const UpdatePlaylistRequest$json = const {
  '1': 'UpdatePlaylistRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'is_public', '3': 4, '4': 1, '5': 8, '10': 'isPublic'},
  ],
};

/// Descriptor for `UpdatePlaylistRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updatePlaylistRequestDescriptor = $convert.base64Decode('ChVVcGRhdGVQbGF5bGlzdFJlcXVlc3QSDgoCaWQYASABKAlSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSIAoLZGVzY3JpcHRpb24YAyABKAlSC2Rlc2NyaXB0aW9uEhsKCWlzX3B1YmxpYxgEIAEoCFIIaXNQdWJsaWM=');
@$core.Deprecated('Use updatePlaylistResponseDescriptor instead')
const UpdatePlaylistResponse$json = const {
  '1': 'UpdatePlaylistResponse',
  '2': const [
    const {'1': 'playlist', '3': 1, '4': 1, '5': 11, '6': '.echo_vault.playlist.v1.Playlist', '10': 'playlist'},
  ],
};

/// Descriptor for `UpdatePlaylistResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updatePlaylistResponseDescriptor = $convert.base64Decode('ChZVcGRhdGVQbGF5bGlzdFJlc3BvbnNlEjwKCHBsYXlsaXN0GAEgASgLMiAuZWNob192YXVsdC5wbGF5bGlzdC52MS5QbGF5bGlzdFIIcGxheWxpc3Q=');
@$core.Deprecated('Use deletePlaylistRequestDescriptor instead')
const DeletePlaylistRequest$json = const {
  '1': 'DeletePlaylistRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `DeletePlaylistRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deletePlaylistRequestDescriptor = $convert.base64Decode('ChVEZWxldGVQbGF5bGlzdFJlcXVlc3QSDgoCaWQYASABKAlSAmlk');
@$core.Deprecated('Use deletePlaylistResponseDescriptor instead')
const DeletePlaylistResponse$json = const {
  '1': 'DeletePlaylistResponse',
};

/// Descriptor for `DeletePlaylistResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deletePlaylistResponseDescriptor = $convert.base64Decode('ChZEZWxldGVQbGF5bGlzdFJlc3BvbnNl');
@$core.Deprecated('Use listPlaylistsRequestDescriptor instead')
const ListPlaylistsRequest$json = const {
  '1': 'ListPlaylistsRequest',
  '2': const [
    const {'1': 'pagination', '3': 1, '4': 1, '5': 11, '6': '.echo_vault.common.v1.PaginationRequest', '10': 'pagination'},
  ],
};

/// Descriptor for `ListPlaylistsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listPlaylistsRequestDescriptor = $convert.base64Decode('ChRMaXN0UGxheWxpc3RzUmVxdWVzdBJHCgpwYWdpbmF0aW9uGAEgASgLMicuZWNob192YXVsdC5jb21tb24udjEuUGFnaW5hdGlvblJlcXVlc3RSCnBhZ2luYXRpb24=');
@$core.Deprecated('Use listPlaylistsResponseDescriptor instead')
const ListPlaylistsResponse$json = const {
  '1': 'ListPlaylistsResponse',
  '2': const [
    const {'1': 'playlists', '3': 1, '4': 3, '5': 11, '6': '.echo_vault.playlist.v1.Playlist', '10': 'playlists'},
    const {'1': 'pagination', '3': 2, '4': 1, '5': 11, '6': '.echo_vault.common.v1.PaginationResponse', '10': 'pagination'},
  ],
};

/// Descriptor for `ListPlaylistsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listPlaylistsResponseDescriptor = $convert.base64Decode('ChVMaXN0UGxheWxpc3RzUmVzcG9uc2USPgoJcGxheWxpc3RzGAEgAygLMiAuZWNob192YXVsdC5wbGF5bGlzdC52MS5QbGF5bGlzdFIJcGxheWxpc3RzEkgKCnBhZ2luYXRpb24YAiABKAsyKC5lY2hvX3ZhdWx0LmNvbW1vbi52MS5QYWdpbmF0aW9uUmVzcG9uc2VSCnBhZ2luYXRpb24=');
@$core.Deprecated('Use addSongRequestDescriptor instead')
const AddSongRequest$json = const {
  '1': 'AddSongRequest',
  '2': const [
    const {'1': 'playlist_id', '3': 1, '4': 1, '5': 9, '10': 'playlistId'},
    const {'1': 'song_id', '3': 2, '4': 1, '5': 9, '10': 'songId'},
    const {'1': 'position', '3': 3, '4': 1, '5': 5, '10': 'position'},
  ],
};

/// Descriptor for `AddSongRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addSongRequestDescriptor = $convert.base64Decode('Cg5BZGRTb25nUmVxdWVzdBIfCgtwbGF5bGlzdF9pZBgBIAEoCVIKcGxheWxpc3RJZBIXCgdzb25nX2lkGAIgASgJUgZzb25nSWQSGgoIcG9zaXRpb24YAyABKAVSCHBvc2l0aW9u');
@$core.Deprecated('Use addSongResponseDescriptor instead')
const AddSongResponse$json = const {
  '1': 'AddSongResponse',
  '2': const [
    const {'1': 'playlist_song', '3': 1, '4': 1, '5': 11, '6': '.echo_vault.playlist.v1.PlaylistSong', '10': 'playlistSong'},
  ],
};

/// Descriptor for `AddSongResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addSongResponseDescriptor = $convert.base64Decode('Cg9BZGRTb25nUmVzcG9uc2USSQoNcGxheWxpc3Rfc29uZxgBIAEoCzIkLmVjaG9fdmF1bHQucGxheWxpc3QudjEuUGxheWxpc3RTb25nUgxwbGF5bGlzdFNvbmc=');
@$core.Deprecated('Use removeSongRequestDescriptor instead')
const RemoveSongRequest$json = const {
  '1': 'RemoveSongRequest',
  '2': const [
    const {'1': 'playlist_id', '3': 1, '4': 1, '5': 9, '10': 'playlistId'},
    const {'1': 'song_id', '3': 2, '4': 1, '5': 9, '10': 'songId'},
  ],
};

/// Descriptor for `RemoveSongRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeSongRequestDescriptor = $convert.base64Decode('ChFSZW1vdmVTb25nUmVxdWVzdBIfCgtwbGF5bGlzdF9pZBgBIAEoCVIKcGxheWxpc3RJZBIXCgdzb25nX2lkGAIgASgJUgZzb25nSWQ=');
@$core.Deprecated('Use removeSongResponseDescriptor instead')
const RemoveSongResponse$json = const {
  '1': 'RemoveSongResponse',
};

/// Descriptor for `RemoveSongResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeSongResponseDescriptor = $convert.base64Decode('ChJSZW1vdmVTb25nUmVzcG9uc2U=');
@$core.Deprecated('Use reorderSongsRequestDescriptor instead')
const ReorderSongsRequest$json = const {
  '1': 'ReorderSongsRequest',
  '2': const [
    const {'1': 'playlist_id', '3': 1, '4': 1, '5': 9, '10': 'playlistId'},
    const {'1': 'song_ids', '3': 2, '4': 3, '5': 9, '10': 'songIds'},
  ],
};

/// Descriptor for `ReorderSongsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List reorderSongsRequestDescriptor = $convert.base64Decode('ChNSZW9yZGVyU29uZ3NSZXF1ZXN0Eh8KC3BsYXlsaXN0X2lkGAEgASgJUgpwbGF5bGlzdElkEhkKCHNvbmdfaWRzGAIgAygJUgdzb25nSWRz');
@$core.Deprecated('Use reorderSongsResponseDescriptor instead')
const ReorderSongsResponse$json = const {
  '1': 'ReorderSongsResponse',
};

/// Descriptor for `ReorderSongsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List reorderSongsResponseDescriptor = $convert.base64Decode('ChRSZW9yZGVyU29uZ3NSZXNwb25zZQ==');
@$core.Deprecated('Use listPlaylistSongsRequestDescriptor instead')
const ListPlaylistSongsRequest$json = const {
  '1': 'ListPlaylistSongsRequest',
  '2': const [
    const {'1': 'playlist_id', '3': 1, '4': 1, '5': 9, '10': 'playlistId'},
    const {'1': 'pagination', '3': 2, '4': 1, '5': 11, '6': '.echo_vault.common.v1.PaginationRequest', '10': 'pagination'},
  ],
};

/// Descriptor for `ListPlaylistSongsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listPlaylistSongsRequestDescriptor = $convert.base64Decode('ChhMaXN0UGxheWxpc3RTb25nc1JlcXVlc3QSHwoLcGxheWxpc3RfaWQYASABKAlSCnBsYXlsaXN0SWQSRwoKcGFnaW5hdGlvbhgCIAEoCzInLmVjaG9fdmF1bHQuY29tbW9uLnYxLlBhZ2luYXRpb25SZXF1ZXN0UgpwYWdpbmF0aW9u');
@$core.Deprecated('Use listPlaylistSongsResponseDescriptor instead')
const ListPlaylistSongsResponse$json = const {
  '1': 'ListPlaylistSongsResponse',
  '2': const [
    const {'1': 'songs', '3': 1, '4': 3, '5': 11, '6': '.echo_vault.playlist.v1.PlaylistSong', '10': 'songs'},
    const {'1': 'pagination', '3': 2, '4': 1, '5': 11, '6': '.echo_vault.common.v1.PaginationResponse', '10': 'pagination'},
  ],
};

/// Descriptor for `ListPlaylistSongsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listPlaylistSongsResponseDescriptor = $convert.base64Decode('ChlMaXN0UGxheWxpc3RTb25nc1Jlc3BvbnNlEjoKBXNvbmdzGAEgAygLMiQuZWNob192YXVsdC5wbGF5bGlzdC52MS5QbGF5bGlzdFNvbmdSBXNvbmdzEkgKCnBhZ2luYXRpb24YAiABKAsyKC5lY2hvX3ZhdWx0LmNvbW1vbi52MS5QYWdpbmF0aW9uUmVzcG9uc2VSCnBhZ2luYXRpb24=');
