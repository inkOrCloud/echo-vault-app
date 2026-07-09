import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:echo_vault_app/features/auth/login_page.dart';
import 'package:echo_vault_app/features/auth/register_page.dart';
import 'package:echo_vault_app/features/setup/server_setup_page.dart';
import 'package:echo_vault_app/features/library/pages/library_page.dart';
import 'package:echo_vault_app/features/publish/pages/scan_result_page.dart';
import 'package:echo_vault_app/features/publish/pages/edit_metadata_page.dart';
import 'package:echo_vault_app/features/player/pages/player_page.dart';
import 'package:echo_vault_app/features/library/models/scanned_file.dart';
import 'package:echo_vault_app/features/playlist/pages/playlist_list_page.dart';
import 'package:echo_vault_app/features/playlist/pages/playlist_detail_page.dart';
import 'package:echo_vault_app/features/device/pages/device_list_page.dart';
import 'package:echo_vault_app/features/sync/pages/sync_status_page.dart';
import 'package:echo_vault_app/providers/auth_provider.dart';
import 'package:echo_vault_app/providers/server_provider.dart';

final routerProvider = Provider<GoRouter>((ref) {
  final authState = ref.watch(authProvider);
  final serverConfig = ref.watch(serverConfigProvider);

  return GoRouter(
    initialLocation: '/library',
    redirect: (context, state) {
      final loggedIn = authState.status == AuthStatus.authenticated;
      final configured = serverConfig != null;

      if (!configured && state.matchedLocation != '/setup') return '/setup';
      if (configured && !loggedIn &&
          state.matchedLocation != '/login' &&
          state.matchedLocation != '/register') {
        return '/login';
      }
      return null;
    },
    routes: [
      GoRoute(path: '/setup', builder: (_, __) => const ServerSetupPage()),
      GoRoute(path: '/login', builder: (_, __) => const LoginPage()),
      GoRoute(path: '/register', builder: (_, __) => const RegisterPage()),
      GoRoute(path: '/library', builder: (_, __) => const LibraryPage()),
      GoRoute(path: '/scan', builder: (_, __) => const ScanResultPage()),
      GoRoute(
        path: '/publish/edit',
        builder: (context, state) {
          final file = state.extra as ScannedFile;
          return EditMetadataPage(file: file);
        },
      ),
      GoRoute(path: '/player', builder: (_, __) => const PlayerPage()),
      GoRoute(path: '/playlists', builder: (_, __) => const PlaylistListPage()),
      GoRoute(
        path: '/playlist/:id',
        builder: (context, state) {
          final playlistId = state.pathParameters['id']!;
          return PlaylistDetailPage(playlistId: playlistId);
        },
      ),
      GoRoute(path: '/devices', builder: (_, __) => const DeviceListPage()),
      GoRoute(path: '/sync', builder: (_, __) => const SyncStatusPage()),
    ],
  );
});
