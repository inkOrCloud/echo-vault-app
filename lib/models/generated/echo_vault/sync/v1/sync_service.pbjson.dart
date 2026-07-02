///
//  Generated code. Do not modify.
//  source: echo_vault/sync/v1/sync_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use syncChangeDescriptor instead')
const SyncChange$json = const {
  '1': 'SyncChange',
  '2': const [
    const {'1': 'entity_type', '3': 1, '4': 1, '5': 9, '10': 'entityType'},
    const {'1': 'entity_id', '3': 2, '4': 1, '5': 9, '10': 'entityId'},
    const {'1': 'action', '3': 3, '4': 1, '5': 14, '6': '.echo_vault.sync.v1.SyncChange.Action', '10': 'action'},
    const {'1': 'version', '3': 4, '4': 1, '5': 3, '10': 'version'},
    const {'1': 'data', '3': 5, '4': 1, '5': 12, '10': 'data'},
    const {'1': 'timestamp', '3': 6, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'timestamp'},
    const {'1': 'device_id', '3': 7, '4': 1, '5': 9, '10': 'deviceId'},
    const {'1': 'user_id', '3': 8, '4': 1, '5': 9, '10': 'userId'},
  ],
  '4': const [SyncChange_Action$json],
};

@$core.Deprecated('Use syncChangeDescriptor instead')
const SyncChange_Action$json = const {
  '1': 'Action',
  '2': const [
    const {'1': 'ACTION_UNSPECIFIED', '2': 0},
    const {'1': 'ACTION_CREATE', '2': 1},
    const {'1': 'ACTION_UPDATE', '2': 2},
    const {'1': 'ACTION_DELETE', '2': 3},
  ],
};

/// Descriptor for `SyncChange`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List syncChangeDescriptor = $convert.base64Decode('CgpTeW5jQ2hhbmdlEh8KC2VudGl0eV90eXBlGAEgASgJUgplbnRpdHlUeXBlEhsKCWVudGl0eV9pZBgCIAEoCVIIZW50aXR5SWQSPQoGYWN0aW9uGAMgASgOMiUuZWNob192YXVsdC5zeW5jLnYxLlN5bmNDaGFuZ2UuQWN0aW9uUgZhY3Rpb24SGAoHdmVyc2lvbhgEIAEoA1IHdmVyc2lvbhISCgRkYXRhGAUgASgMUgRkYXRhEjgKCXRpbWVzdGFtcBgGIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCXRpbWVzdGFtcBIbCglkZXZpY2VfaWQYByABKAlSCGRldmljZUlkEhcKB3VzZXJfaWQYCCABKAlSBnVzZXJJZCJZCgZBY3Rpb24SFgoSQUNUSU9OX1VOU1BFQ0lGSUVEEAASEQoNQUNUSU9OX0NSRUFURRABEhEKDUFDVElPTl9VUERBVEUQAhIRCg1BQ1RJT05fREVMRVRFEAM=');
@$core.Deprecated('Use pushChangesRequestDescriptor instead')
const PushChangesRequest$json = const {
  '1': 'PushChangesRequest',
  '2': const [
    const {'1': 'device_id', '3': 1, '4': 1, '5': 9, '10': 'deviceId'},
    const {'1': 'last_pull_version', '3': 2, '4': 1, '5': 3, '10': 'lastPullVersion'},
    const {'1': 'changes', '3': 3, '4': 3, '5': 11, '6': '.echo_vault.sync.v1.SyncChange', '10': 'changes'},
  ],
};

/// Descriptor for `PushChangesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pushChangesRequestDescriptor = $convert.base64Decode('ChJQdXNoQ2hhbmdlc1JlcXVlc3QSGwoJZGV2aWNlX2lkGAEgASgJUghkZXZpY2VJZBIqChFsYXN0X3B1bGxfdmVyc2lvbhgCIAEoA1IPbGFzdFB1bGxWZXJzaW9uEjgKB2NoYW5nZXMYAyADKAsyHi5lY2hvX3ZhdWx0LnN5bmMudjEuU3luY0NoYW5nZVIHY2hhbmdlcw==');
@$core.Deprecated('Use pushChangesResponseDescriptor instead')
const PushChangesResponse$json = const {
  '1': 'PushChangesResponse',
  '2': const [
    const {'1': 'server_version', '3': 1, '4': 1, '5': 3, '10': 'serverVersion'},
    const {'1': 'accepted_count', '3': 2, '4': 1, '5': 5, '10': 'acceptedCount'},
    const {'1': 'conflicts', '3': 3, '4': 3, '5': 11, '6': '.echo_vault.sync.v1.ConflictInfo', '10': 'conflicts'},
  ],
};

/// Descriptor for `PushChangesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pushChangesResponseDescriptor = $convert.base64Decode('ChNQdXNoQ2hhbmdlc1Jlc3BvbnNlEiUKDnNlcnZlcl92ZXJzaW9uGAEgASgDUg1zZXJ2ZXJWZXJzaW9uEiUKDmFjY2VwdGVkX2NvdW50GAIgASgFUg1hY2NlcHRlZENvdW50Ej4KCWNvbmZsaWN0cxgDIAMoCzIgLmVjaG9fdmF1bHQuc3luYy52MS5Db25mbGljdEluZm9SCWNvbmZsaWN0cw==');
@$core.Deprecated('Use conflictInfoDescriptor instead')
const ConflictInfo$json = const {
  '1': 'ConflictInfo',
  '2': const [
    const {'1': 'entity_type', '3': 1, '4': 1, '5': 9, '10': 'entityType'},
    const {'1': 'entity_id', '3': 2, '4': 1, '5': 9, '10': 'entityId'},
    const {'1': 'local_version', '3': 3, '4': 1, '5': 3, '10': 'localVersion'},
    const {'1': 'server_version', '3': 4, '4': 1, '5': 3, '10': 'serverVersion'},
    const {'1': 'resolution', '3': 5, '4': 1, '5': 14, '6': '.echo_vault.sync.v1.ConflictInfo.Resolution', '10': 'resolution'},
  ],
  '4': const [ConflictInfo_Resolution$json],
};

@$core.Deprecated('Use conflictInfoDescriptor instead')
const ConflictInfo_Resolution$json = const {
  '1': 'Resolution',
  '2': const [
    const {'1': 'RESOLUTION_UNSPECIFIED', '2': 0},
    const {'1': 'RESOLUTION_SERVER_WINS', '2': 1},
    const {'1': 'RESOLUTION_DUPLICATE_KEPT', '2': 2},
  ],
};

/// Descriptor for `ConflictInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List conflictInfoDescriptor = $convert.base64Decode('CgxDb25mbGljdEluZm8SHwoLZW50aXR5X3R5cGUYASABKAlSCmVudGl0eVR5cGUSGwoJZW50aXR5X2lkGAIgASgJUghlbnRpdHlJZBIjCg1sb2NhbF92ZXJzaW9uGAMgASgDUgxsb2NhbFZlcnNpb24SJQoOc2VydmVyX3ZlcnNpb24YBCABKANSDXNlcnZlclZlcnNpb24SSwoKcmVzb2x1dGlvbhgFIAEoDjIrLmVjaG9fdmF1bHQuc3luYy52MS5Db25mbGljdEluZm8uUmVzb2x1dGlvblIKcmVzb2x1dGlvbiJjCgpSZXNvbHV0aW9uEhoKFlJFU09MVVRJT05fVU5TUEVDSUZJRUQQABIaChZSRVNPTFVUSU9OX1NFUlZFUl9XSU5TEAESHQoZUkVTT0xVVElPTl9EVVBMSUNBVEVfS0VQVBAC');
@$core.Deprecated('Use pullChangesRequestDescriptor instead')
const PullChangesRequest$json = const {
  '1': 'PullChangesRequest',
  '2': const [
    const {'1': 'device_id', '3': 1, '4': 1, '5': 9, '10': 'deviceId'},
    const {'1': 'since_version', '3': 2, '4': 1, '5': 3, '10': 'sinceVersion'},
  ],
};

/// Descriptor for `PullChangesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pullChangesRequestDescriptor = $convert.base64Decode('ChJQdWxsQ2hhbmdlc1JlcXVlc3QSGwoJZGV2aWNlX2lkGAEgASgJUghkZXZpY2VJZBIjCg1zaW5jZV92ZXJzaW9uGAIgASgDUgxzaW5jZVZlcnNpb24=');
@$core.Deprecated('Use pullChangesResponseDescriptor instead')
const PullChangesResponse$json = const {
  '1': 'PullChangesResponse',
  '2': const [
    const {'1': 'change', '3': 1, '4': 1, '5': 11, '6': '.echo_vault.sync.v1.SyncChange', '10': 'change'},
  ],
};

/// Descriptor for `PullChangesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pullChangesResponseDescriptor = $convert.base64Decode('ChNQdWxsQ2hhbmdlc1Jlc3BvbnNlEjYKBmNoYW5nZRgBIAEoCzIeLmVjaG9fdmF1bHQuc3luYy52MS5TeW5jQ2hhbmdlUgZjaGFuZ2U=');
@$core.Deprecated('Use subscribeChangesRequestDescriptor instead')
const SubscribeChangesRequest$json = const {
  '1': 'SubscribeChangesRequest',
  '2': const [
    const {'1': 'device_id', '3': 1, '4': 1, '5': 9, '10': 'deviceId'},
  ],
};

/// Descriptor for `SubscribeChangesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List subscribeChangesRequestDescriptor = $convert.base64Decode('ChdTdWJzY3JpYmVDaGFuZ2VzUmVxdWVzdBIbCglkZXZpY2VfaWQYASABKAlSCGRldmljZUlk');
@$core.Deprecated('Use changeNotificationDescriptor instead')
const ChangeNotification$json = const {
  '1': 'ChangeNotification',
  '2': const [
    const {'1': 'entity_type', '3': 1, '4': 1, '5': 9, '10': 'entityType'},
    const {'1': 'action', '3': 2, '4': 1, '5': 9, '10': 'action'},
    const {'1': 'new_version', '3': 3, '4': 1, '5': 3, '10': 'newVersion'},
  ],
};

/// Descriptor for `ChangeNotification`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List changeNotificationDescriptor = $convert.base64Decode('ChJDaGFuZ2VOb3RpZmljYXRpb24SHwoLZW50aXR5X3R5cGUYASABKAlSCmVudGl0eVR5cGUSFgoGYWN0aW9uGAIgASgJUgZhY3Rpb24SHwoLbmV3X3ZlcnNpb24YAyABKANSCm5ld1ZlcnNpb24=');
@$core.Deprecated('Use subscribeChangesResponseDescriptor instead')
const SubscribeChangesResponse$json = const {
  '1': 'SubscribeChangesResponse',
  '2': const [
    const {'1': 'notification', '3': 1, '4': 1, '5': 11, '6': '.echo_vault.sync.v1.ChangeNotification', '10': 'notification'},
  ],
};

/// Descriptor for `SubscribeChangesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List subscribeChangesResponseDescriptor = $convert.base64Decode('ChhTdWJzY3JpYmVDaGFuZ2VzUmVzcG9uc2USSgoMbm90aWZpY2F0aW9uGAEgASgLMiYuZWNob192YXVsdC5zeW5jLnYxLkNoYW5nZU5vdGlmaWNhdGlvblIMbm90aWZpY2F0aW9u');
@$core.Deprecated('Use ackChangesRequestDescriptor instead')
const AckChangesRequest$json = const {
  '1': 'AckChangesRequest',
  '2': const [
    const {'1': 'device_id', '3': 1, '4': 1, '5': 9, '10': 'deviceId'},
    const {'1': 'acked_version', '3': 2, '4': 1, '5': 3, '10': 'ackedVersion'},
  ],
};

/// Descriptor for `AckChangesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ackChangesRequestDescriptor = $convert.base64Decode('ChFBY2tDaGFuZ2VzUmVxdWVzdBIbCglkZXZpY2VfaWQYASABKAlSCGRldmljZUlkEiMKDWFja2VkX3ZlcnNpb24YAiABKANSDGFja2VkVmVyc2lvbg==');
@$core.Deprecated('Use ackChangesResponseDescriptor instead')
const AckChangesResponse$json = const {
  '1': 'AckChangesResponse',
};

/// Descriptor for `AckChangesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ackChangesResponseDescriptor = $convert.base64Decode('ChJBY2tDaGFuZ2VzUmVzcG9uc2U=');
