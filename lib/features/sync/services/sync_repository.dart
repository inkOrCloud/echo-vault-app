import 'package:grpc/grpc.dart';
import 'package:fixnum/fixnum.dart';
import 'package:echo_vault_app/core/grpc/client.dart';
import 'package:echo_vault_app/models/generated/echo_vault/sync/v1/sync_service.pbgrpc.dart';

/// gRPC SyncService 抽象接口（生产用 SyncServiceClient，测试用 mock）
abstract class SyncService {
  Future<PushChangesResponse> pushChanges(PushChangesRequest request);
  Future<AckChangesResponse> ackChanges(AckChangesRequest request);
}

/// 生产实现 — 使用 SyncServiceClient
class ChannelSyncService implements SyncService {
  final SyncServiceClient _client;
  ChannelSyncService(ClientChannel channel) : _client = SyncServiceClient(channel);

  @override
  Future<PushChangesResponse> pushChanges(PushChangesRequest r) => _client.pushChanges(r);
  @override
  Future<AckChangesResponse> ackChanges(AckChangesRequest r) => _client.ackChanges(r);
}

class SyncRepositoryException implements Exception {
  final String message;
  final int? grpcCode;
  const SyncRepositoryException(this.message, {this.grpcCode});
  @override String toString() => 'SyncRepositoryException: $message${grpcCode != null ? " (code: $grpcCode)" : ""}';
}

class SyncRepository {
  final SyncService _svc;

  SyncRepository({required GrpcClientManager manager}) : _svc = ChannelSyncService(manager.channel);
  SyncRepository.withService(this._svc);

  Future<PushChangesResponse> pushChanges({
    required String deviceId,
    Int64? lastPullVersion,
    List<SyncChange> changes = const [],
  }) async {
    try {
      return await _svc.pushChanges(PushChangesRequest(
        deviceId: deviceId,
        lastPullVersion: lastPullVersion ?? Int64.ZERO,
        changes: changes,
      ));
    } on GrpcError catch (e) {
      throw SyncRepositoryException(e.message ?? '', grpcCode: e.code);
    }
  }

  Future<void> ackChanges({
    required String deviceId,
    required Int64 ackedVersion,
  }) async {
    try {
      await _svc.ackChanges(AckChangesRequest(
        deviceId: deviceId,
        ackedVersion: ackedVersion,
      ));
    } on GrpcError catch (e) {
      throw SyncRepositoryException(e.message ?? '', grpcCode: e.code);
    }
  }
}
