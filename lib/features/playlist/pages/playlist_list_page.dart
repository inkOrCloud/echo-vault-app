import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:echo_vault_app/features/playlist/providers/playlist_provider.dart';
import 'package:echo_vault_app/features/playlist/widgets/playlist_tile.dart';
import 'package:echo_vault_app/main.dart' show AppDrawer;
import 'package:echo_vault_app/models/generated/echo_vault/playlist/v1/playlist_service.pb.dart';

class PlaylistListPage extends ConsumerStatefulWidget {
  const PlaylistListPage({super.key});

  @override
  ConsumerState<PlaylistListPage> createState() => _PlaylistListPageState();
}

class _PlaylistListPageState extends ConsumerState<PlaylistListPage> {
  @override
  void initState() {
    super.initState();
    // TODO: 从仓储加载歌单
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(playlistListProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('我的歌单'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () => _showCreateDialog(context),
          ),
        ],
      ),
      drawer: const AppDrawer(),
      body: _buildBody(state),
    );
  }

  Widget _buildBody(PlaylistListState state) {
    switch (state.status) {
      case PlaylistStatus.loading:
        return const Center(child: CircularProgressIndicator());
      case PlaylistStatus.error:
        return Center(child: Text('错误: ${state.error}'));
      case PlaylistStatus.loaded:
        if (state.playlists.isEmpty) {
          return const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.queue_music, size: 64, color: Colors.grey),
                SizedBox(height: 16),
                Text('还没有歌单', style: TextStyle(color: Colors.grey)),
              ],
            ),
          );
        }
        return ListView.builder(
          itemCount: state.playlists.length,
          itemBuilder: (context, index) {
            final playlist = state.playlists[index];
            return PlaylistTile(
              playlist: playlist,
              onTap: () => context.push('/playlist/${playlist.id}'),
              onDelete: () => _deletePlaylist(playlist.id),
            );
          },
        );
      default:
        return const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.queue_music, size: 64, color: Colors.grey),
              SizedBox(height: 16),
              Text('还没有歌单', style: TextStyle(color: Colors.grey)),
            ],
          ),
        );
    }
  }

  void _showCreateDialog(BuildContext context) {
    final nameController = TextEditingController();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('创建歌单'),
        content: TextField(
          controller: nameController,
          decoration: const InputDecoration(
            hintText: '歌单名称',
            border: OutlineInputBorder(),
          ),
          autofocus: true,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('取消'),
          ),
          FilledButton(
            onPressed: () {
              final name = nameController.text.trim();
              if (name.isNotEmpty) {
                // TODO: 通过仓储创建歌单，暂用占位 ID
                final notifier = ref.read(playlistListProvider.notifier);
                final playlist = Playlist()
                  ..id = DateTime.now().millisecondsSinceEpoch.toString()
                  ..name = name
                  ..songCount = 0;
                notifier.addPlaylist(playlist);
              }
              Navigator.pop(context);
            },
            child: const Text('创建'),
          ),
        ],
      ),
    );
  }

  void _deletePlaylist(String id) {
    ref.read(playlistListProvider.notifier).removePlaylist(id);
  }
}
