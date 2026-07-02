// This is a generated file - do not edit.
//
// Generated from echo_vault/common/v1/types.proto.

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

@$core.Deprecated('Use fileSourceDescriptor instead')
const FileSource$json = {
  '1': 'FileSource',
  '2': [
    {'1': 'FILE_SOURCE_UNSPECIFIED', '2': 0},
    {'1': 'FILE_SOURCE_LOCAL', '2': 1},
    {'1': 'FILE_SOURCE_UPLOADED', '2': 2},
    {'1': 'FILE_SOURCE_SYNCED', '2': 3},
  ],
};

/// Descriptor for `FileSource`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List fileSourceDescriptor = $convert.base64Decode(
    'CgpGaWxlU291cmNlEhsKF0ZJTEVfU09VUkNFX1VOU1BFQ0lGSUVEEAASFQoRRklMRV9TT1VSQ0'
    'VfTE9DQUwQARIYChRGSUxFX1NPVVJDRV9VUExPQURFRBACEhYKEkZJTEVfU09VUkNFX1NZTkNF'
    'RBAD');

@$core.Deprecated('Use fileStatusDescriptor instead')
const FileStatus$json = {
  '1': 'FileStatus',
  '2': [
    {'1': 'FILE_STATUS_UNSPECIFIED', '2': 0},
    {'1': 'FILE_STATUS_LOCAL_ONLY', '2': 1},
    {'1': 'FILE_STATUS_UPLOADED', '2': 2},
    {'1': 'FILE_STATUS_DOWNLOADED', '2': 3},
    {'1': 'FILE_STATUS_CLOUD_ONLY', '2': 4},
  ],
};

/// Descriptor for `FileStatus`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List fileStatusDescriptor = $convert.base64Decode(
    'CgpGaWxlU3RhdHVzEhsKF0ZJTEVfU1RBVFVTX1VOU1BFQ0lGSUVEEAASGgoWRklMRV9TVEFUVV'
    'NfTE9DQUxfT05MWRABEhgKFEZJTEVfU1RBVFVTX1VQTE9BREVEEAISGgoWRklMRV9TVEFUVVNf'
    'RE9XTkxPQURFRBADEhoKFkZJTEVfU1RBVFVTX0NMT1VEX09OTFkQBA==');

@$core.Deprecated('Use uUIDDescriptor instead')
const UUID$json = {
  '1': 'UUID',
  '2': [
    {'1': 'value', '3': 1, '4': 1, '5': 9, '10': 'value'},
  ],
};

/// Descriptor for `UUID`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List uUIDDescriptor =
    $convert.base64Decode('CgRVVUlEEhQKBXZhbHVlGAEgASgJUgV2YWx1ZQ==');

@$core.Deprecated('Use paginationRequestDescriptor instead')
const PaginationRequest$json = {
  '1': 'PaginationRequest',
  '2': [
    {'1': 'page_size', '3': 1, '4': 1, '5': 5, '10': 'pageSize'},
    {'1': 'page_token', '3': 2, '4': 1, '5': 9, '10': 'pageToken'},
  ],
};

/// Descriptor for `PaginationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List paginationRequestDescriptor = $convert.base64Decode(
    'ChFQYWdpbmF0aW9uUmVxdWVzdBIbCglwYWdlX3NpemUYASABKAVSCHBhZ2VTaXplEh0KCnBhZ2'
    'VfdG9rZW4YAiABKAlSCXBhZ2VUb2tlbg==');

@$core.Deprecated('Use paginationResponseDescriptor instead')
const PaginationResponse$json = {
  '1': 'PaginationResponse',
  '2': [
    {'1': 'total_count', '3': 1, '4': 1, '5': 5, '10': 'totalCount'},
    {'1': 'next_page_token', '3': 2, '4': 1, '5': 9, '10': 'nextPageToken'},
  ],
};

/// Descriptor for `PaginationResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List paginationResponseDescriptor = $convert.base64Decode(
    'ChJQYWdpbmF0aW9uUmVzcG9uc2USHwoLdG90YWxfY291bnQYASABKAVSCnRvdGFsQ291bnQSJg'
    'oPbmV4dF9wYWdlX3Rva2VuGAIgASgJUg1uZXh0UGFnZVRva2Vu');

@$core.Deprecated('Use emptyDescriptor instead')
const Empty$json = {
  '1': 'Empty',
};

/// Descriptor for `Empty`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emptyDescriptor =
    $convert.base64Decode('CgVFbXB0eQ==');

@$core.Deprecated('Use fileHashDescriptor instead')
const FileHash$json = {
  '1': 'FileHash',
  '2': [
    {'1': 'hex', '3': 1, '4': 1, '5': 9, '10': 'hex'},
  ],
};

/// Descriptor for `FileHash`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fileHashDescriptor =
    $convert.base64Decode('CghGaWxlSGFzaBIQCgNoZXgYASABKAlSA2hleA==');
