import 'package:flutter/material.dart';
import 'package:echo_vault_app/features/navigation/app_drawer.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:echo_vault_app/features/playlist/providers/playlist_provider.dart';
import 'package:echo_vault_app/features/playlist/widgets/playlist_tile.dart';

class PlaylistListPage extends ConsumerStatefulWidget {
  const PlaylistListPage({super.key});

  @override
  ConsumerState<PlaylistListPage> createState() => _PlaylistListPageState();
}

class _PlaylistListPageState extends ConsumerState<PlaylistListPage> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() => ref.read(playlistProvider.notifier).loadPlaylists());
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(playlistProvider);

    return Scaffold(
      drawer: const AppDrawer(),
      appBar: AppBar(
        title: const Text('我的歌单'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () => _showSearch(context),
          ),
        ],
      ),
      body: _buildBody(context, state),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showCreateDialog(context),
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildBody(BuildContext context, PlaylistState state) {
    switch (state.status) {
      case PlaylistStatus.loading:
        return const Center(child: CircularProgressIndicator());
      case PlaylistStatus.error:
        return Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.error_outline, size: 48, color: Theme.of(context).colorScheme.error),
              const SizedBox(height: 16),
              Text('加载失败: ${state.error}'),
            ],
          ),
        );
      case PlaylistStatus.loaded:
        final playlists = state.filteredPlaylists;
        if (playlists.isEmpty) {
          return Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.playlist_play, size: 64, color: Theme.of(context).colorScheme.outline),
                const SizedBox(height: 16),
                Text(
                  state.searchQuery.isEmpty ? '暂无歌单，点击 + 创建' : '未找到匹配的歌单',
                ),
              ],
            ),
          );
        }
        return RefreshIndicator(
          onRefresh: () async => ref.read(playlistProvider.notifier).loadPlaylists(),
          child: ListView.separated(
            itemCount: playlists.length,
            separatorBuilder: (_, __) => const Divider(height: 1),
            itemBuilder: (_, i) => Dismissible(
              key: ValueKey(playlists[i].id),
              direction: DismissDirection.endToStart,
              background: Container(
                alignment: Alignment.centerRight,
                padding: const EdgeInsets.only(right: 16),
                color: Colors.red,
                child: const Icon(Icons.delete, color: Colors.white),
              ),
              confirmDismiss: (direction) async {
                return await showDialog<bool>(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text('删除歌单'),
                    content: Text('确定要删除"${playlists[i].name}"吗？'),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context, false),
                        child: const Text('取消'),
                      ),
                      TextButton(
                        onPressed: () => Navigator.pop(context, true),
                        child: const Text('删除', style: TextStyle(color: Colors.red)),
                      ),
                    ],
                  ),
                );
              },
              onDismissed: (_) {
                ref.read(playlistProvider.notifier).deletePlaylist(playlists[i].id);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('已删除"${playlists[i].name}"')),
                );
              },
              child: PlaylistTile(
                playlist: playlists[i],
                onTap: () => Navigator.pushNamed(context, '/playlist/${playlists[i].id}'),
              ),
            ),
          ),
        );
    }
  }

  void _showSearch(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('搜索歌单'),
        content: TextField(
          autofocus: true,
          decoration: const InputDecoration(
            hintText: '输入歌单名称...',
            prefixIcon: Icon(Icons.search),
          ),
          onChanged: (v) => ref.read(playlistProvider.notifier).setQuery(v),
        ),
        actions: [
          TextButton(
            onPressed: () {
              ref.read(playlistProvider.notifier).setQuery('');
              Navigator.pop(context);
            },
            child: const Text('清除'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('完成'),
          ),
        ],
      ),
    );
  }

  void _showCreateDialog(BuildContext context) {
    final nameController = TextEditingController();
    final descController = TextEditingController();

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('创建歌单'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                labelText: '歌单名称',
                hintText: '输入歌单名称',
              ),
              autofocus: true,
            ),
            const SizedBox(height: 16),
            TextField(
              controller: descController,
              decoration: const InputDecoration(
                labelText: '描述（可选）',
                hintText: '输入歌单描述',
              ),
              maxLines: 2,
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('取消'),
          ),
          FilledButton(
            onPressed: () async {
              if (nameController.text.trim().isNotEmpty) {
                await ref.read(playlistProvider.notifier).createPlaylist(
                  name: nameController.text.trim(),
                  description: descController.text.trim().isNotEmpty ? descController.text.trim() : null,
                );
                if (context.mounted) Navigator.pop(context);
              }
            },
            child: const Text('创建'),
          ),
        ],
      ),
    );
  }
}
