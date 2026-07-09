import 'package:flutter_test/flutter_test.dart';
import 'package:grpc/grpc.dart';
import 'package:fixnum/fixnum.dart';
import 'package:echo_vault_app/features/sync/services/sync_repository.dart';
import 'package:echo_vault_app/models/generated/echo_vault/sync/v1/sync_service.pb.dart';

class MockSyncService implements SyncService {
  final Map<String, Object Function()> _handlers = {};
  bool throwOnCall = false;

  void when(String m, Object Function() h) { _handlers[m] = h; }

  @override
  Future<PushChangesResponse> pushChanges(PushChangesRequest r) {
    if (throwOnCall) throw GrpcError.unavailable('down');
    return Future.value(_handlers['pushChanges']!() as PushChangesResponse);
  }

  @override
  Future<AckChangesResponse> ackChanges(AckChangesRequest r) {
    if (throwOnCall) throw GrpcError.unavailable('down');
    return Future.value(_handlers['ackChanges']!() as AckChangesResponse);
  }
}

void main() {
  late MockSyncService mock;
  late SyncRepository repo;

  setUp(() {
    mock = MockSyncService();
    repo = SyncRepository.withService(mock);
  });

  group('pushChanges', () {
    test('returns server version and accepted count', () async {
      mock.when('pushChanges', () => PushChangesResponse(
        serverVersion: Int64(42),
        acceptedCount: 3,
      ));
      final resp = await repo.pushChanges(
        deviceId: 'd1',
        lastPullVersion: Int64(10),
        changes: [
          SyncChange(
            entityType: 'song',
            entityId: 's1',
            action: SyncChange_Action.ACTION_CREATE,
          ),
        ],
      );
      expect(resp.serverVersion.toInt(), 42);
      expect(resp.acceptedCount, 3);
    });

    test('throws on gRPC error', () async {
      mock.throwOnCall = true;
      expect(
        () => repo.pushChanges(deviceId: 'd1'),
        throwsA(isA<SyncRepositoryException>()),
      );
    });

    test('returns conflict info when conflicts present', () async {
      mock.when('pushChanges', () => PushChangesResponse(
        serverVersion: Int64(50),
        acceptedCount: 1,
        conflicts: [
          ConflictInfo(
            entityType: 'song',
            entityId: 's1',
            localVersion: Int64(5),
            serverVersion: Int64(8),
            resolution: ConflictInfo_Resolution.RESOLUTION_SERVER_WINS,
          ),
        ],
      ));
      final resp = await repo.pushChanges(
        deviceId: 'd1',
        changes: [SyncChange(entityType: 'song', entityId: 's1')],
      );
      expect(resp.conflicts.length, 1);
      expect(resp.conflicts.first.entityId, 's1');
      expect(resp.conflicts.first.resolution, ConflictInfo_Resolution.RESOLUTION_SERVER_WINS);
    });
  });

  group('ackChanges', () {
    test('acknowledges successfully', () async {
      mock.when('ackChanges', () => AckChangesResponse());
      await repo.ackChanges(deviceId: 'd1', ackedVersion: Int64(42));
    });

    test('throws on gRPC error', () async {
      mock.throwOnCall = true;
      expect(
        () => repo.ackChanges(deviceId: 'd1', ackedVersion: Int64(1)),
        throwsA(isA<SyncRepositoryException>()),
      );
    });
  });
}
