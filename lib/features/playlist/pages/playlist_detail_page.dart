// lib/features/playlist/pages/playlist_detail_page.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:echo_vault_app/models/generated/echo_vault/playlist/v1/playlist_service.pb.dart';

class PlaylistDetailPage extends ConsumerStatefulWidget {
  final String playlistId;

  const PlaylistDetailPage({super.key, required this.playlistId});

  @override
  ConsumerState<PlaylistDetailPage> createState() => _PlaylistDetailPageState();
}

class _PlaylistDetailPageState extends ConsumerState<PlaylistDetailPage> {
  Playlist? _playlist;
  // ignore: prefer_final_fields
  List<PlaylistSong> _songs = [];
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    _loadPlaylist();
  }

  Future<void> _loadPlaylist() async {
    // TODO: 从仓储加载歌单和歌曲
    setState(() => _loading = false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_playlist?.name ?? '歌单详情'),
        actions: [
          if (_playlist != null)
            IconButton(
              icon: const Icon(Icons.edit),
              onPressed: () => _showEditDialog(context),
            ),
        ],
      ),
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : _songs.isEmpty
              ? const Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.music_note, size: 64, color: Colors.grey),
                      SizedBox(height: 16),
                      Text('歌单是空的', style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                )
              : _buildSongList(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showAddSongDialog(context),
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildSongList() {
    return ReorderableListView.builder(
      itemCount: _songs.length,
      onReorderItem: (oldIndex, newIndex) {
        _reorderSongs(oldIndex, newIndex);
      },
      itemBuilder: (context, index) {
        final playlistSong = _songs[index];
        final song = playlistSong.song;
        return ListTile(
          key: ValueKey(song.id),
          leading: CircleAvatar(child: Text('${index + 1}')),
          title: Text(song.title.isNotEmpty ? song.title : '未知标题'),
          subtitle: Text(song.artist.isNotEmpty ? song.artist : '未知艺术家'),
          trailing: IconButton(
            icon: const Icon(Icons.remove_circle_outline),
            onPressed: () => _removeSong(song.id),
          ),
        );
      },
    );
  }

  void _showEditDialog(BuildContext context) {
    // TODO: 实现编辑对话框
  }

  void _showAddSongDialog(BuildContext context) {
    // TODO: 实现添加歌曲对话框
  }

  void _reorderSongs(int oldIndex, int newIndex) {
    // TODO: 实现排序
  }

  void _removeSong(String songId) {
    // TODO: 实现移除歌曲
  }
}
