import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// Removed unused import
import 'package:echo_vault_app/features/playlist/services/playlist_repository.dart';
import 'package:echo_vault_app/models/generated/echo_vault/playlist/v1/playlist_service.pb.dart';
import 'package:echo_vault_app/models/generated/echo_vault/song/v1/song_service.pb.dart';
import 'package:echo_vault_app/features/library/providers/library_provider.dart';
import 'package:echo_vault_app/features/library/services/grpc_providers.dart';

// 歌单仓储提供者
final playlistRepositoryProvider = Provider<PlaylistRepository>((ref) {
  final clientManager = ref.watch(grpcClientProvider);
  return PlaylistRepository(clientManager);
});

class PlaylistDetailPage extends ConsumerStatefulWidget {
  final String playlistId;

  const PlaylistDetailPage({super.key, required this.playlistId});

  @override
  ConsumerState<PlaylistDetailPage> createState() => _PlaylistDetailPageState();
}

class _PlaylistDetailPageState extends ConsumerState<PlaylistDetailPage> {
  Playlist? _playlist;
  List<PlaylistSong> _songs = [];
  bool _loading = true;
  String? _error;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _loadPlaylist();
    });
  }

  Future<void> _loadPlaylist() async {
    setState(() {
      _loading = true;
      _error = null;
    });
    
    try {
      final repository = ref.read(playlistRepositoryProvider);
      final playlist = await repository.getPlaylist(widget.playlistId);
      final songs = await repository.listPlaylistSongs(widget.playlistId);
      
      if (mounted) {
        setState(() {
          _playlist = playlist;
          _songs = songs;
          _loading = false;
        });
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _error = e.toString();
          _loading = false;
        });
      }
    }
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
      body: _buildBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showAddSongDialog(context),
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildBody() {
    if (_loading) {
      return const Center(child: CircularProgressIndicator());
    }
    
    if (_error != null) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.error_outline, size: 64, color: Colors.red),
            const SizedBox(height: 16),
            Text('加载失败: $_error'),
            const SizedBox(height: 16),
            FilledButton(
              onPressed: _loadPlaylist,
              child: const Text('重试'),
            ),
          ],
        ),
      );
    }
    
    if (_songs.isEmpty) {
      return const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.music_note, size: 64, color: Colors.grey),
            SizedBox(height: 16),
            Text('歌单是空的', style: TextStyle(color: Colors.grey)),
            SizedBox(height: 8),
            Text('点击右下角 + 添加歌曲', style: TextStyle(color: Colors.grey, fontSize: 12)),
          ],
        ),
      );
    }
    
    return _buildSongList();
  }

  Widget _buildSongList() {
    return RefreshIndicator(
      onRefresh: _loadPlaylist,
      child: ReorderableListView.builder(
        itemCount: _songs.length,
        onReorderItem: (oldIndex, newIndex) => _reorderSongs(oldIndex, newIndex),
        itemBuilder: (context, index) {
          final playlistSong = _songs[index];
          final song = playlistSong.song;
          return ListTile(
            key: ValueKey(song.id),
            leading: CircleAvatar(child: Text('${index + 1}')),
            title: Text(song.title.isNotEmpty ? song.title : '未知标题'),
            subtitle: Text(song.artist.isNotEmpty ? song.artist : '未知艺术家'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: const Icon(Icons.play_circle_outline),
                  onPressed: () => _playSong(song),
                ),
                IconButton(
                  icon: const Icon(Icons.remove_circle_outline),
                  onPressed: () => _removeSong(song.id),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  void _showEditDialog(BuildContext context) {
    final nameController = TextEditingController(text: _playlist?.name ?? '');
    final descController = TextEditingController(text: _playlist?.description ?? '');
    
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('编辑歌单'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                labelText: '歌单名称',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: descController,
              decoration: const InputDecoration(
                labelText: '描述（可选）',
                border: OutlineInputBorder(),
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
            onPressed: () => _updatePlaylist(context, nameController, descController),
            child: const Text('保存'),
          ),
        ],
      ),
    );
  }

  Future<void> _updatePlaylist(
    BuildContext context,
    TextEditingController nameController,
    TextEditingController descController,
  ) async {
    final name = nameController.text.trim();
    if (name.isEmpty) return;
    
    Navigator.pop(context);
    
    try {
      final repository = ref.read(playlistRepositoryProvider);
      final updated = await repository.updatePlaylist(
        id: widget.playlistId,
        name: name,
        description: descController.text.trim(),
      );
      setState(() => _playlist = updated);
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('更新失败: $e')),
        );
      }
    }
  }

  void _showAddSongDialog(BuildContext context) {
    final libraryState = ref.read(libraryProvider);
    final allSongs = libraryState.songs;
    
    final existingSongIds = _songs.map((ps) => ps.songId).toSet();
    final availableSongs = allSongs.where((s) => !existingSongIds.contains(s.id)).toList();
    
    if (availableSongs.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('没有可添加的歌曲')),
      );
      return;
    }
    
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) => DraggableScrollableSheet(
        initialChildSize: 0.7,
        minChildSize: 0.5,
        maxChildSize: 0.9,
        expand: false,
        builder: (context, scrollController) => Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('添加歌曲', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                controller: scrollController,
                itemCount: availableSongs.length,
                itemBuilder: (context, index) {
                  final song = availableSongs[index];
                  return ListTile(
                    leading: CircleAvatar(child: Text(song.title.isNotEmpty ? song.title[0] : '?')),
                    title: Text(song.title.isNotEmpty ? song.title : '未知标题'),
                    subtitle: Text(song.artist.isNotEmpty ? song.artist : '未知艺术家'),
                    trailing: const Icon(Icons.add_circle_outline),
                    onTap: () => _addSong(context, song.id),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _addSong(BuildContext context, String songId) async {
    Navigator.pop(context);
    
    try {
      final repository = ref.read(playlistRepositoryProvider);
      await repository.addSong(
        playlistId: widget.playlistId,
        songId: songId,
      );
      await _loadPlaylist();
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('添加失败: $e')),
        );
      }
    }
  }

  void _reorderSongs(int oldIndex, int newIndex) async {
    if (oldIndex < newIndex) newIndex -= 1;
    
    final List<String> songIds = _songs.map((ps) => ps.songId).toList();
    final item = songIds.removeAt(oldIndex);
    songIds.insert(newIndex, item);
    
    try {
      final repository = ref.read(playlistRepositoryProvider);
      await repository.reorderSongs(
        playlistId: widget.playlistId,
        songIds: songIds,
      );
      
      setState(() {
        final movedItem = _songs.removeAt(oldIndex);
        _songs.insert(newIndex, movedItem);
      });
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('排序失败: $e')),
        );
        _loadPlaylist();
      }
    }
  }

  void _removeSong(String songId) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('确认移除'),
        content: const Text('确定要从歌单中移除这首歌吗？'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('取消'),
          ),
          FilledButton(
            onPressed: () => Navigator.pop(context, true),
            child: const Text('移除'),
          ),
        ],
      ),
    );
    
    if (confirmed != true) return;
    
    try {
      final repository = ref.read(playlistRepositoryProvider);
      await repository.removeSong(
        playlistId: widget.playlistId,
        songId: songId,
      );
      await _loadPlaylist();
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('移除失败: $e')),
        );
      }
    }
  }

  void _playSong(Song song) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('正在播放: ${song.title}')),
    );
  }
}
