import 'package:flutter_test/flutter_test.dart';
import 'package:echo_vault_app/core/grpc/client.dart';

void main() {
  group('GrpcClientManager', () {
    test('initial state is not connected', () {
      final manager = GrpcClientManager();
      expect(manager.isConnected, isFalse);
    });

    test('setToken and clearToken do not throw', () {
      final manager = GrpcClientManager();
      manager.setToken('test-token');
      manager.clearToken();
      expect(manager.isConnected, isFalse);
    });

    test('channel getter throws when not connected', () {
      final manager = GrpcClientManager();
      expect(() => manager.channel, throwsStateError);
    });
  });
}
