import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:echo_vault_app/providers/auth_provider.dart';
import 'package:echo_vault_app/providers/server_provider.dart';
import 'package:echo_vault_app/router.dart';

void main() {
  test('Router initializes successfully with all routes', () {
    final container = ProviderContainer(
      overrides: [
        authProvider.overrideWith((ref) => AuthNotifier()..setAuthenticated(
          userId: 'u1', username: 'test', token: 'tok',
        )),
        serverConfigProvider.overrideWith((ref) => (
          host: 'localhost', grpcPort: 9090, restPort: 9091,
        )),
      ],
    );

    final router = container.read(routerProvider);
    expect(router, isNotNull);

    // Verify route count (10 routes)
    final routes = router.configuration.routes;
    expect(routes.length, 11);

    // Extract paths from GoRoute objects
    final paths = routes.map((r) => (r as GoRoute).path).toList();
    expect(paths, contains('/setup'));
    expect(paths, contains('/login'));
    expect(paths, contains('/register'));
    expect(paths, contains('/library'));
    expect(paths, contains('/scan'));
    expect(paths, contains('/publish/edit'));
    expect(paths, contains('/player'));
    expect(paths, contains('/playlists'));
    expect(paths, contains('/playlist/:id'));
    expect(paths, contains('/devices'));
    expect(paths, contains('/sync'));

    container.dispose();
  });
}
