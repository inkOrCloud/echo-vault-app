import 'package:flutter_test/flutter_test.dart';
import 'package:echo_vault_app/providers/auth_provider.dart';

void main() {
  group('AuthNotifier', () {
    test('initial state is unknown', () {
      final notifier = AuthNotifier();
      expect(notifier.state.status, AuthStatus.unknown);
    });

    test('setAuthenticated updates state', () {
      final notifier = AuthNotifier();
      notifier.setAuthenticated(
        userId: 'u1', username: 'testuser', token: 'token123',
      );
      expect(notifier.state.status, AuthStatus.authenticated);
      expect(notifier.state.userId, 'u1');
      expect(notifier.state.username, 'testuser');
      expect(notifier.state.token, 'token123');
    });

    test('logout resets state', () {
      final notifier = AuthNotifier();
      notifier.setAuthenticated(
        userId: 'u1', username: 'testuser', token: 'token123',
      );
      notifier.logout();
      expect(notifier.state.status, AuthStatus.unauthenticated);
      expect(notifier.state.userId, null);
    });
  });
}
