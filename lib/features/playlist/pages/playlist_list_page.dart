import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:echo_vault_app/features/playlist/providers/playlist_provider.dart';
import 'package:echo_vault_app/features/playlist/services/playlist_repository.dart';
import 'package:echo_vault_app/features/playlist/widgets/playlist_tile.dart';
import 'package:echo_vault_app/main.dart' show AppDrawer;
import 'package:echo_vault_app/features/library/services/grpc_providers.dart';

// 歌单仓储提供者
final playlistRepositoryProvider = Provider<PlaylistRepository>((ref) {
  final clientManager = ref.watch(grpcClientProvider);
  return PlaylistRepository(clientManager);
});

class PlaylistListPage extends ConsumerStatefulWidget {
  const PlaylistListPage({super.key});

  @override
  ConsumerState<PlaylistListPage> createState() => _PlaylistListPageState();
}

class _PlaylistListPageState extends ConsumerState<PlaylistListPage> {
  @override
  void initState() {
    super.initState();
    // 延迟加载，等待帧渲染完成
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _loadPlaylists();
    });
  }

  Future<void> _loadPlaylists() async {
    final notifier = ref.read(playlistListProvider.notifier);
    notifier.setLoading();
    try {
      final repository = ref.read(playlistRepositoryProvider);
      final playlists = await repository.listPlaylists();
      notifier.setPlaylists(playlists);
    } catch (e) {
      notifier.setError(e.toString());
    }
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
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.error_outline, size: 64, color: Colors.red),
              const SizedBox(height: 16),
              Text('加载失败: ${state.error}'),
              const SizedBox(height: 16),
              FilledButton(
                onPressed: _loadPlaylists,
                child: const Text('重试'),
              ),
            ],
          ),
        );
      case PlaylistStatus.loaded:
        if (state.playlists.isEmpty) {
          return const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.queue_music, size: 64, color: Colors.grey),
                SizedBox(height: 16),
                Text('还没有歌单', style: TextStyle(color: Colors.grey)),
                SizedBox(height: 8),
                Text('点击右上角 + 创建第一个歌单', style: TextStyle(color: Colors.grey, fontSize: 12)),
              ],
            ),
          );
        }
        return RefreshIndicator(
          onRefresh: _loadPlaylists,
          child: ListView.builder(
            itemCount: state.playlists.length,
            itemBuilder: (context, index) {
              final playlist = state.playlists[index];
              return PlaylistTile(
                playlist: playlist,
                onTap: () => context.push('/playlist/${playlist.id}'),
                onDelete: () => _deletePlaylist(playlist.id),
              );
            },
          ),
        );
      default:
        return const SizedBox.shrink();
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
          onSubmitted: (_) => _createPlaylist(context, nameController),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('取消'),
          ),
          FilledButton(
            onPressed: () => _createPlaylist(context, nameController),
            child: const Text('创建'),
          ),
        ],
      ),
    );
  }

  Future<void> _createPlaylist(BuildContext context, TextEditingController controller) async {
    final name = controller.text.trim();
    if (name.isEmpty) return;
    
    Navigator.pop(context);
    
    try {
      final repository = ref.read(playlistRepositoryProvider);
      final playlist = await repository.createPlaylist(name: name);
      ref.read(playlistListProvider.notifier).addPlaylist(playlist);
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('创建失败: $e')),
        );
      }
    }
  }

  Future<void> _deletePlaylist(String id) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('确认删除'),
        content: const Text('确定要删除这个歌单吗？'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('取消'),
          ),
          FilledButton(
            onPressed: () => Navigator.pop(context, true),
            style: FilledButton.styleFrom(backgroundColor: Colors.red),
            child: const Text('删除'),
          ),
        ],
      ),
    );
    
    if (confirmed != true) return;
    
    try {
      final repository = ref.read(playlistRepositoryProvider);
      await repository.deletePlaylist(id);
      ref.read(playlistListProvider.notifier).removePlaylist(id);
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('删除失败: $e')),
        );
      }
    }
  }
}
