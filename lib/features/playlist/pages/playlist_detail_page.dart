import 'package:flutter/material.dart';
import 'package:echo_vault_app/features/navigation/app_drawer.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:echo_vault_app/features/library/providers/library_provider.dart';
import 'package:echo_vault_app/features/library/widgets/song_list_tile.dart';
import 'package:echo_vault_app/features/playlist/providers/playlist_provider.dart';
import 'package:echo_vault_app/features/playlist/providers/playlist_song_provider.dart';
import 'package:echo_vault_app/features/playlist/widgets/add_song_dialog.dart';

class PlaylistDetailPage extends ConsumerStatefulWidget {
  final String playlistId;

  const PlaylistDetailPage({super.key, required this.playlistId});

  @override
  ConsumerState<PlaylistDetailPage> createState() => _PlaylistDetailPageState();
}

class _PlaylistDetailPageState extends ConsumerState<PlaylistDetailPage> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      ref.read(playlistSongProvider(widget.playlistId).notifier).loadSongs();
    });
  }

  @override
  Widget build(BuildContext context) {
    final playlistState = ref.watch(playlistProvider);
    final songState = ref.watch(playlistSongProvider(widget.playlistId));
    final libraryState = ref.watch(libraryProvider);

    // Find playlist
    final playlist = playlistState.playlists
        .where((p) => p.id == widget.playlistId)
        .firstOrNull;

    if (playlist == null) {
      return Scaffold(
      drawer: const AppDrawer(),
        appBar: AppBar(title: const Text('歌单')),
        body: const Center(child: Text('歌单不存在')),
      );
    }

    // Get actual songs from library
    final playlistSongIds = songState.playlistSongs.map((ps) => ps.songId).toSet();
    final songs = libraryState.songs.where((s) => playlistSongIds.contains(s.id)).toList();

    return Scaffold(
      drawer: const AppDrawer(),
      appBar: AppBar(
        title: Text(playlist.name),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () => _showEditDialog(context, playlist),
          ),
          IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () => _confirmDelete(context),
          ),
        ],
      ),
      body: _buildBody(context, songState, songs),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showAddSongDialog(context),
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildBody(BuildContext context, PlaylistSongState songState, List<dynamic> songs) {
    switch (songState.status) {
      case PlaylistSongStatus.loading:
        return const Center(child: CircularProgressIndicator());
      case PlaylistSongStatus.error:
        return Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.error_outline, size: 48, color: Theme.of(context).colorScheme.error),
              const SizedBox(height: 16),
              Text('加载失败: ${songState.error}'),
            ],
          ),
        );
      case PlaylistSongStatus.loaded:
        if (songs.isEmpty) {
          return Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.playlist_add, size: 64, color: Theme.of(context).colorScheme.outline),
                const SizedBox(height: 16),
                const Text('暂无歌曲，点击 + 添加'),
              ],
            ),
          );
        }
        return ReorderableListView.builder(
          itemCount: songs.length,
          onReorderItem: (oldIndex, newIndex) {
            if (oldIndex < newIndex) newIndex -= 1;
            final songIds = songs.map((s) => s.id as String).toList();
            final item = songIds.removeAt(oldIndex);
            songIds.insert(newIndex, item);
            ref.read(playlistSongProvider(widget.playlistId).notifier).reorderSongs(songIds);
          },
          itemBuilder: (_, i) {
            final song = songs[i];
            return Dismissible(
              key: ValueKey(song.id),
              direction: DismissDirection.endToStart,
              background: Container(
                color: Colors.red,
                alignment: Alignment.centerRight,
                padding: const EdgeInsets.only(right: 16),
                child: const Icon(Icons.delete, color: Colors.white),
              ),
              onDismissed: (_) {
                ref.read(playlistSongProvider(widget.playlistId).notifier).removeSong(song.id);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('已移除: ${song.title}')),
                );
              },
              child: SongListTile(song: song),
            );
          },
        );
    }
  }

  void _showAddSongDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AddSongDialog(playlistId: widget.playlistId),
    );
  }

  void _showEditDialog(BuildContext context, dynamic playlist) {
    final nameController = TextEditingController(text: playlist.name);
    final descController = TextEditingController(text: playlist.description);

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('编辑歌单'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(labelText: '歌单名称'),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: descController,
              decoration: const InputDecoration(labelText: '描述（可选）'),
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
                await ref.read(playlistProvider.notifier).updatePlaylist(
                  id: widget.playlistId,
                  name: nameController.text.trim(),
                  description: descController.text.trim().isNotEmpty ? descController.text.trim() : null,
                );
                if (context.mounted) Navigator.pop(context);
              }
            },
            child: const Text('保存'),
          ),
        ],
      ),
    );
  }

  void _confirmDelete(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('删除歌单'),
        content: const Text('确定要删除这个歌单吗？此操作不可撤销。'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('取消'),
          ),
          FilledButton(
            style: FilledButton.styleFrom(backgroundColor: Colors.red),
            onPressed: () async {
              await ref.read(playlistProvider.notifier).deletePlaylist(widget.playlistId);
              if (context.mounted) {
                Navigator.pop(context);
                Navigator.pop(context);
              }
            },
            child: const Text('删除'),
          ),
        ],
      ),
    );
  }
}
