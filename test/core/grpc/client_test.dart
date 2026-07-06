import 'package:flutter_test/flutter_test.dart';
import 'package:echo_vault_app/core/grpc/client.dart';

void main() {
  group('GrpcClientManager', () {
    test('initial state is not connected', () {
      final manager = GrpcClientManager();
      expect(manager.isConnected, isFalse);
    });

    test('setToken and clearToken work correctly', () {
      final manager = GrpcClientManager();
      
      // 初始状态token为null
      expect(manager.token, isNull);
      
      // 设置token
      manager.setToken('test-token-123');
      expect(manager.token, equals('test-token-123'));
      
      // 清除token
      manager.clearToken();
      expect(manager.token, isNull);
    });

    test('channel getter throws when not connected', () {
      final manager = GrpcClientManager();
      expect(() => manager.channel, throwsStateError);
    });

    test('token can be set before connecting', () {
      final manager = GrpcClientManager();
      manager.setToken('pre-connect-token');
      expect(manager.token, equals('pre-connect-token'));
    });

    test('token can be changed after setting', () {
      final manager = GrpcClientManager();
      manager.setToken('first-token');
      expect(manager.token, equals('first-token'));
      
      manager.setToken('second-token');
      expect(manager.token, equals('second-token'));
    });

    test('createCallOptions returns empty options when no token', () {
      final manager = GrpcClientManager();
      final options = manager.createCallOptions();
      expect(options.metadata, isEmpty);
    });

    test('createCallOptions returns options with token when set', () {
      final manager = GrpcClientManager();
      manager.setToken('test-token');
      final options = manager.createCallOptions();
      expect(options.metadata, contains('authorization'));
      expect(options.metadata['authorization'], equals('Bearer test-token'));
    });

    test('createCallOptions returns empty options when token is empty', () {
      final manager = GrpcClientManager();
      manager.setToken('');
      final options = manager.createCallOptions();
      expect(options.metadata, isEmpty);
    });
  });
}
