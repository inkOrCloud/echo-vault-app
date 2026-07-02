///
//  Generated code. Do not modify.
//  source: echo_vault/user/v1/user_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use userDescriptor instead')
const User$json = const {
  '1': 'User',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'username', '3': 2, '4': 1, '5': 9, '10': 'username'},
    const {'1': 'display_name', '3': 3, '4': 1, '5': 9, '10': 'displayName'},
    const {'1': 'role', '3': 4, '4': 1, '5': 9, '10': 'role'},
    const {'1': 'created_at', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
    const {'1': 'updated_at', '3': 6, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updatedAt'},
  ],
};

/// Descriptor for `User`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userDescriptor = $convert.base64Decode('CgRVc2VyEg4KAmlkGAEgASgJUgJpZBIaCgh1c2VybmFtZRgCIAEoCVIIdXNlcm5hbWUSIQoMZGlzcGxheV9uYW1lGAMgASgJUgtkaXNwbGF5TmFtZRISCgRyb2xlGAQgASgJUgRyb2xlEjkKCmNyZWF0ZWRfYXQYBSABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgljcmVhdGVkQXQSOQoKdXBkYXRlZF9hdBgGIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCXVwZGF0ZWRBdA==');
@$core.Deprecated('Use deviceDescriptor instead')
const Device$json = const {
  '1': 'Device',
  '2': const [
    const {'1': 'device_id', '3': 1, '4': 1, '5': 9, '10': 'deviceId'},
    const {'1': 'device_name', '3': 2, '4': 1, '5': 9, '10': 'deviceName'},
    const {'1': 'platform', '3': 3, '4': 1, '5': 9, '10': 'platform'},
    const {'1': 'os_version', '3': 4, '4': 1, '5': 9, '10': 'osVersion'},
    const {'1': 'client_version', '3': 5, '4': 1, '5': 9, '10': 'clientVersion'},
    const {'1': 'last_sync_at', '3': 6, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'lastSyncAt'},
    const {'1': 'registered_at', '3': 7, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'registeredAt'},
  ],
};

/// Descriptor for `Device`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deviceDescriptor = $convert.base64Decode('CgZEZXZpY2USGwoJZGV2aWNlX2lkGAEgASgJUghkZXZpY2VJZBIfCgtkZXZpY2VfbmFtZRgCIAEoCVIKZGV2aWNlTmFtZRIaCghwbGF0Zm9ybRgDIAEoCVIIcGxhdGZvcm0SHQoKb3NfdmVyc2lvbhgEIAEoCVIJb3NWZXJzaW9uEiUKDmNsaWVudF92ZXJzaW9uGAUgASgJUg1jbGllbnRWZXJzaW9uEjwKDGxhc3Rfc3luY19hdBgGIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCmxhc3RTeW5jQXQSPwoNcmVnaXN0ZXJlZF9hdBgHIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSDHJlZ2lzdGVyZWRBdA==');
@$core.Deprecated('Use registerRequestDescriptor instead')
const RegisterRequest$json = const {
  '1': 'RegisterRequest',
  '2': const [
    const {'1': 'username', '3': 1, '4': 1, '5': 9, '10': 'username'},
    const {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
    const {'1': 'display_name', '3': 3, '4': 1, '5': 9, '10': 'displayName'},
  ],
};

/// Descriptor for `RegisterRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registerRequestDescriptor = $convert.base64Decode('Cg9SZWdpc3RlclJlcXVlc3QSGgoIdXNlcm5hbWUYASABKAlSCHVzZXJuYW1lEhoKCHBhc3N3b3JkGAIgASgJUghwYXNzd29yZBIhCgxkaXNwbGF5X25hbWUYAyABKAlSC2Rpc3BsYXlOYW1l');
@$core.Deprecated('Use registerResponseDescriptor instead')
const RegisterResponse$json = const {
  '1': 'RegisterResponse',
  '2': const [
    const {'1': 'user', '3': 1, '4': 1, '5': 11, '6': '.echo_vault.user.v1.User', '10': 'user'},
    const {'1': 'access_token', '3': 2, '4': 1, '5': 9, '10': 'accessToken'},
    const {'1': 'refresh_token', '3': 3, '4': 1, '5': 9, '10': 'refreshToken'},
  ],
};

/// Descriptor for `RegisterResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registerResponseDescriptor = $convert.base64Decode('ChBSZWdpc3RlclJlc3BvbnNlEiwKBHVzZXIYASABKAsyGC5lY2hvX3ZhdWx0LnVzZXIudjEuVXNlclIEdXNlchIhCgxhY2Nlc3NfdG9rZW4YAiABKAlSC2FjY2Vzc1Rva2VuEiMKDXJlZnJlc2hfdG9rZW4YAyABKAlSDHJlZnJlc2hUb2tlbg==');
@$core.Deprecated('Use loginRequestDescriptor instead')
const LoginRequest$json = const {
  '1': 'LoginRequest',
  '2': const [
    const {'1': 'username', '3': 1, '4': 1, '5': 9, '10': 'username'},
    const {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
    const {'1': 'device_id', '3': 3, '4': 1, '5': 9, '10': 'deviceId'},
  ],
};

/// Descriptor for `LoginRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginRequestDescriptor = $convert.base64Decode('CgxMb2dpblJlcXVlc3QSGgoIdXNlcm5hbWUYASABKAlSCHVzZXJuYW1lEhoKCHBhc3N3b3JkGAIgASgJUghwYXNzd29yZBIbCglkZXZpY2VfaWQYAyABKAlSCGRldmljZUlk');
@$core.Deprecated('Use loginResponseDescriptor instead')
const LoginResponse$json = const {
  '1': 'LoginResponse',
  '2': const [
    const {'1': 'user', '3': 1, '4': 1, '5': 11, '6': '.echo_vault.user.v1.User', '10': 'user'},
    const {'1': 'access_token', '3': 2, '4': 1, '5': 9, '10': 'accessToken'},
    const {'1': 'refresh_token', '3': 3, '4': 1, '5': 9, '10': 'refreshToken'},
  ],
};

/// Descriptor for `LoginResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginResponseDescriptor = $convert.base64Decode('Cg1Mb2dpblJlc3BvbnNlEiwKBHVzZXIYASABKAsyGC5lY2hvX3ZhdWx0LnVzZXIudjEuVXNlclIEdXNlchIhCgxhY2Nlc3NfdG9rZW4YAiABKAlSC2FjY2Vzc1Rva2VuEiMKDXJlZnJlc2hfdG9rZW4YAyABKAlSDHJlZnJlc2hUb2tlbg==');
@$core.Deprecated('Use refreshTokenRequestDescriptor instead')
const RefreshTokenRequest$json = const {
  '1': 'RefreshTokenRequest',
  '2': const [
    const {'1': 'refresh_token', '3': 1, '4': 1, '5': 9, '10': 'refreshToken'},
  ],
};

/// Descriptor for `RefreshTokenRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List refreshTokenRequestDescriptor = $convert.base64Decode('ChNSZWZyZXNoVG9rZW5SZXF1ZXN0EiMKDXJlZnJlc2hfdG9rZW4YASABKAlSDHJlZnJlc2hUb2tlbg==');
@$core.Deprecated('Use refreshTokenResponseDescriptor instead')
const RefreshTokenResponse$json = const {
  '1': 'RefreshTokenResponse',
  '2': const [
    const {'1': 'access_token', '3': 1, '4': 1, '5': 9, '10': 'accessToken'},
    const {'1': 'refresh_token', '3': 2, '4': 1, '5': 9, '10': 'refreshToken'},
  ],
};

/// Descriptor for `RefreshTokenResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List refreshTokenResponseDescriptor = $convert.base64Decode('ChRSZWZyZXNoVG9rZW5SZXNwb25zZRIhCgxhY2Nlc3NfdG9rZW4YASABKAlSC2FjY2Vzc1Rva2VuEiMKDXJlZnJlc2hfdG9rZW4YAiABKAlSDHJlZnJlc2hUb2tlbg==');
@$core.Deprecated('Use getCurrentUserRequestDescriptor instead')
const GetCurrentUserRequest$json = const {
  '1': 'GetCurrentUserRequest',
};

/// Descriptor for `GetCurrentUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getCurrentUserRequestDescriptor = $convert.base64Decode('ChVHZXRDdXJyZW50VXNlclJlcXVlc3Q=');
@$core.Deprecated('Use getCurrentUserResponseDescriptor instead')
const GetCurrentUserResponse$json = const {
  '1': 'GetCurrentUserResponse',
  '2': const [
    const {'1': 'user', '3': 1, '4': 1, '5': 11, '6': '.echo_vault.user.v1.User', '10': 'user'},
  ],
};

/// Descriptor for `GetCurrentUserResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getCurrentUserResponseDescriptor = $convert.base64Decode('ChZHZXRDdXJyZW50VXNlclJlc3BvbnNlEiwKBHVzZXIYASABKAsyGC5lY2hvX3ZhdWx0LnVzZXIudjEuVXNlclIEdXNlcg==');
@$core.Deprecated('Use updateUserRequestDescriptor instead')
const UpdateUserRequest$json = const {
  '1': 'UpdateUserRequest',
  '2': const [
    const {'1': 'display_name', '3': 1, '4': 1, '5': 9, '10': 'displayName'},
  ],
};

/// Descriptor for `UpdateUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateUserRequestDescriptor = $convert.base64Decode('ChFVcGRhdGVVc2VyUmVxdWVzdBIhCgxkaXNwbGF5X25hbWUYASABKAlSC2Rpc3BsYXlOYW1l');
@$core.Deprecated('Use updateUserResponseDescriptor instead')
const UpdateUserResponse$json = const {
  '1': 'UpdateUserResponse',
  '2': const [
    const {'1': 'user', '3': 1, '4': 1, '5': 11, '6': '.echo_vault.user.v1.User', '10': 'user'},
  ],
};

/// Descriptor for `UpdateUserResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateUserResponseDescriptor = $convert.base64Decode('ChJVcGRhdGVVc2VyUmVzcG9uc2USLAoEdXNlchgBIAEoCzIYLmVjaG9fdmF1bHQudXNlci52MS5Vc2VyUgR1c2Vy');
@$core.Deprecated('Use getServerInfoRequestDescriptor instead')
const GetServerInfoRequest$json = const {
  '1': 'GetServerInfoRequest',
};

/// Descriptor for `GetServerInfoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getServerInfoRequestDescriptor = $convert.base64Decode('ChRHZXRTZXJ2ZXJJbmZvUmVxdWVzdA==');
@$core.Deprecated('Use getServerInfoResponseDescriptor instead')
const GetServerInfoResponse$json = const {
  '1': 'GetServerInfoResponse',
  '2': const [
    const {'1': 'version', '3': 1, '4': 1, '5': 9, '10': 'version'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'max_file_size_mb', '3': 3, '4': 1, '5': 5, '10': 'maxFileSizeMb'},
    const {'1': 'supported_audio_formats', '3': 4, '4': 3, '5': 9, '10': 'supportedAudioFormats'},
  ],
};

/// Descriptor for `GetServerInfoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getServerInfoResponseDescriptor = $convert.base64Decode('ChVHZXRTZXJ2ZXJJbmZvUmVzcG9uc2USGAoHdmVyc2lvbhgBIAEoCVIHdmVyc2lvbhISCgRuYW1lGAIgASgJUgRuYW1lEicKEG1heF9maWxlX3NpemVfbWIYAyABKAVSDW1heEZpbGVTaXplTWISNgoXc3VwcG9ydGVkX2F1ZGlvX2Zvcm1hdHMYBCADKAlSFXN1cHBvcnRlZEF1ZGlvRm9ybWF0cw==');
@$core.Deprecated('Use registerDeviceRequestDescriptor instead')
const RegisterDeviceRequest$json = const {
  '1': 'RegisterDeviceRequest',
  '2': const [
    const {'1': 'device_id', '3': 1, '4': 1, '5': 9, '10': 'deviceId'},
    const {'1': 'device_name', '3': 2, '4': 1, '5': 9, '10': 'deviceName'},
    const {'1': 'platform', '3': 3, '4': 1, '5': 9, '10': 'platform'},
    const {'1': 'os_version', '3': 4, '4': 1, '5': 9, '10': 'osVersion'},
    const {'1': 'client_version', '3': 5, '4': 1, '5': 9, '10': 'clientVersion'},
  ],
};

/// Descriptor for `RegisterDeviceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registerDeviceRequestDescriptor = $convert.base64Decode('ChVSZWdpc3RlckRldmljZVJlcXVlc3QSGwoJZGV2aWNlX2lkGAEgASgJUghkZXZpY2VJZBIfCgtkZXZpY2VfbmFtZRgCIAEoCVIKZGV2aWNlTmFtZRIaCghwbGF0Zm9ybRgDIAEoCVIIcGxhdGZvcm0SHQoKb3NfdmVyc2lvbhgEIAEoCVIJb3NWZXJzaW9uEiUKDmNsaWVudF92ZXJzaW9uGAUgASgJUg1jbGllbnRWZXJzaW9u');
@$core.Deprecated('Use registerDeviceResponseDescriptor instead')
const RegisterDeviceResponse$json = const {
  '1': 'RegisterDeviceResponse',
  '2': const [
    const {'1': 'device', '3': 1, '4': 1, '5': 11, '6': '.echo_vault.user.v1.Device', '10': 'device'},
  ],
};

/// Descriptor for `RegisterDeviceResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registerDeviceResponseDescriptor = $convert.base64Decode('ChZSZWdpc3RlckRldmljZVJlc3BvbnNlEjIKBmRldmljZRgBIAEoCzIaLmVjaG9fdmF1bHQudXNlci52MS5EZXZpY2VSBmRldmljZQ==');
@$core.Deprecated('Use listDevicesRequestDescriptor instead')
const ListDevicesRequest$json = const {
  '1': 'ListDevicesRequest',
};

/// Descriptor for `ListDevicesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listDevicesRequestDescriptor = $convert.base64Decode('ChJMaXN0RGV2aWNlc1JlcXVlc3Q=');
@$core.Deprecated('Use listDevicesResponseDescriptor instead')
const ListDevicesResponse$json = const {
  '1': 'ListDevicesResponse',
  '2': const [
    const {'1': 'devices', '3': 1, '4': 3, '5': 11, '6': '.echo_vault.user.v1.Device', '10': 'devices'},
  ],
};

/// Descriptor for `ListDevicesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listDevicesResponseDescriptor = $convert.base64Decode('ChNMaXN0RGV2aWNlc1Jlc3BvbnNlEjQKB2RldmljZXMYASADKAsyGi5lY2hvX3ZhdWx0LnVzZXIudjEuRGV2aWNlUgdkZXZpY2Vz');
@$core.Deprecated('Use removeDeviceRequestDescriptor instead')
const RemoveDeviceRequest$json = const {
  '1': 'RemoveDeviceRequest',
  '2': const [
    const {'1': 'device_id', '3': 1, '4': 1, '5': 9, '10': 'deviceId'},
  ],
};

/// Descriptor for `RemoveDeviceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeDeviceRequestDescriptor = $convert.base64Decode('ChNSZW1vdmVEZXZpY2VSZXF1ZXN0EhsKCWRldmljZV9pZBgBIAEoCVIIZGV2aWNlSWQ=');
@$core.Deprecated('Use removeDeviceResponseDescriptor instead')
const RemoveDeviceResponse$json = const {
  '1': 'RemoveDeviceResponse',
};

/// Descriptor for `RemoveDeviceResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeDeviceResponseDescriptor = $convert.base64Decode('ChRSZW1vdmVEZXZpY2VSZXNwb25zZQ==');
@$core.Deprecated('Use updateDeviceRequestDescriptor instead')
const UpdateDeviceRequest$json = const {
  '1': 'UpdateDeviceRequest',
  '2': const [
    const {'1': 'device_id', '3': 1, '4': 1, '5': 9, '10': 'deviceId'},
    const {'1': 'device_name', '3': 2, '4': 1, '5': 9, '10': 'deviceName'},
  ],
};

/// Descriptor for `UpdateDeviceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateDeviceRequestDescriptor = $convert.base64Decode('ChNVcGRhdGVEZXZpY2VSZXF1ZXN0EhsKCWRldmljZV9pZBgBIAEoCVIIZGV2aWNlSWQSHwoLZGV2aWNlX25hbWUYAiABKAlSCmRldmljZU5hbWU=');
@$core.Deprecated('Use updateDeviceResponseDescriptor instead')
const UpdateDeviceResponse$json = const {
  '1': 'UpdateDeviceResponse',
  '2': const [
    const {'1': 'device', '3': 1, '4': 1, '5': 11, '6': '.echo_vault.user.v1.Device', '10': 'device'},
  ],
};

/// Descriptor for `UpdateDeviceResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateDeviceResponseDescriptor = $convert.base64Decode('ChRVcGRhdGVEZXZpY2VSZXNwb25zZRIyCgZkZXZpY2UYASABKAsyGi5lY2hvX3ZhdWx0LnVzZXIudjEuRGV2aWNlUgZkZXZpY2U=');
