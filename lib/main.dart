import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:echo_vault_app/router.dart';
import 'package:echo_vault_app/providers/auth_provider.dart';

/// 应用主 Drawer
class AppDrawer extends ConsumerWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentPath = GoRouterState.of(context).matchedLocation;

    Widget buildDrawerItem({
      required IconData icon,
      required String title,
      required String route,
    }) {
      final isSelected = currentPath == route;
      return ListTile(
        leading: Icon(icon),
        title: Text(title),
        selected: isSelected,
        selectedTileColor:
            Theme.of(context).colorScheme.primaryContainer.withValues(alpha: 0.3),
        onTap: () {
          Navigator.of(context).pop(); // 先关闭 Drawer
          context.go(route);
        },
      );
    }

    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            // Drawer Header
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primaryContainer,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.music_note_rounded,
                    size: 48,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'EchoVault — 音匣',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '你的私有音乐库',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Theme.of(context)
                              .colorScheme
                              .onPrimaryContainer
                              .withValues(alpha: 0.7),
                        ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            // 导航菜单
            buildDrawerItem(
              icon: Icons.library_music,
              title: '我的曲库',
              route: '/library',
            ),
            buildDrawerItem(
              icon: Icons.queue_music,
              title: '我的歌单',
              route: '/playlist',
            ),
            buildDrawerItem(
              icon: Icons.devices,
              title: '设备管理',
              route: '/devices',
            ),
            buildDrawerItem(
              icon: Icons.sync,
              title: '同步状态',
              route: '/sync',
            ),
            const Spacer(),
            const Divider(),
            // 退出登录
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('退出登录'),
              onTap: () {
                Navigator.of(context).pop();
                ref.read(authProvider.notifier).logout();
              },
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const ProviderScope(child: EchoVaultApp()));
}

class EchoVaultApp extends ConsumerWidget {
  const EchoVaultApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    return MaterialApp.router(
      title: 'EchoVault — 音匣',
      theme: ThemeData(
        colorSchemeSeed: Colors.indigo,
        useMaterial3: true,
      ),
      routerConfig: router,
    );
  }
}
