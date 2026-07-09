import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:echo_vault_app/providers/auth_provider.dart';

/// 应用主导航抽屉
class AppDrawer extends ConsumerWidget {
  const AppDrawer({super.key});

  /// 安全获取当前路由路径，若无 GoRouter 上下文则返回空字符串
  static String _currentRoute(BuildContext context) {
    try {
      return GoRouterState.of(context).matchedLocation;
    } catch (_) {
      return '';
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentPath = _currentRoute(context);

    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            // Header
            _DrawerHeader(),
            const SizedBox(height: 8),
            // Navigation items
            _NavItem(
              icon: Icons.library_music,
              title: '我的曲库',
              route: '/library',
              isSelected: currentPath == '/library',
            ),
            _NavItem(
              icon: Icons.queue_music,
              title: '我的歌单',
              route: '/playlists',
              isSelected: currentPath == '/playlists',
            ),
            _NavItem(
              icon: Icons.devices,
              title: '设备管理',
              route: '/devices',
              isSelected: currentPath == '/devices',
            ),
            _NavItem(
              icon: Icons.sync,
              title: '同步状态',
              route: '/sync',
              isSelected: currentPath == '/sync',
            ),
            const Spacer(),
            const Divider(),
            // Logout
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

class _DrawerHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      decoration: BoxDecoration(
        color: theme.colorScheme.primaryContainer,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.music_note_rounded,
            size: 48,
            color: theme.colorScheme.primary,
          ),
          const SizedBox(height: 12),
          Text(
            'EchoVault — 音匣',
            style: theme.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            '你的私有音乐库',
            style: theme.textTheme.bodyMedium?.copyWith(
              color: theme.colorScheme.onPrimaryContainer.withValues(alpha: 0.7),
            ),
          ),
        ],
      ),
    );
  }
}

class _NavItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String route;
  final bool isSelected;

  const _NavItem({
    required this.icon,
    required this.title,
    required this.route,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      selected: isSelected,
      selectedTileColor:
          theme.colorScheme.primaryContainer.withValues(alpha: 0.3),
      onTap: () {
        Navigator.of(context).pop();
        context.go(route);
      },
    );
  }
}
