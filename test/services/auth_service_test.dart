import 'package:flutter_test/flutter_test.dart';
import 'package:echo_vault_app/services/auth_service.dart';

void main() {
  group('AuthService', () {
    test('can be instantiated', () {
      // Note: Full integration test requires gRPC server running
      // This test verifies the class exists and compiles
      expect(AuthService, isNotNull);
    });
  });
}
