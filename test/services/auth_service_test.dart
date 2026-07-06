import 'package:flutter_test/flutter_test.dart';
import 'package:echo_vault_app/services/auth_service.dart';
import 'package:echo_vault_app/core/grpc/client.dart';

void main() {
  group('AuthService', () {
    test('can be instantiated with GrpcClientManager', () {
      final manager = GrpcClientManager();
      final service = AuthService(manager);
      expect(service, isNotNull);
    });

    test('userClient getter throws when not connected', () {
      final manager = GrpcClientManager();
      final service = AuthService(manager);
      expect(() => service.userClient, throwsStateError);
    });

    test('logout clears token and userClient', () {
      final manager = GrpcClientManager();
      final service = AuthService(manager);
      
      // 设置token
      manager.setToken('test-token');
      expect(manager.token, equals('test-token'));
      
      // 登出
      service.logout();
      expect(manager.token, isNull);
    });
  });
}
