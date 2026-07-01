import 'package:flutter_test/flutter_test.dart';
import 'package:echo_vault_app/core/grpc/client.dart';

void main() {
  group('GrpcClientManager', () {
    test('initial state has no token', () {
      final manager = GrpcClientManager();
      expect(manager.metadata, isEmpty);
    });

    test('setToken adds authorization header', () {
      final manager = GrpcClientManager();
      manager.setToken('test-token');
      expect(manager.metadata, containsPair('authorization', 'Bearer test-token'));
    });

    test('clearToken removes authorization', () {
      final manager = GrpcClientManager();
      manager.setToken('test-token');
      manager.clearToken();
      expect(manager.metadata, isEmpty);
    });
  });
}
