import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:echo_vault_app/features/library/providers/library_provider.dart';
import 'package:echo_vault_app/features/library/widgets/song_list_tile.dart';
import 'package:echo_vault_app/features/playlist/providers/playlist_song_provider.dart';

class AddSongDialog extends ConsumerStatefulWidget {
  final String playlistId;

  const AddSongDialog({super.key, required this.playlistId});

  @override
  ConsumerState<AddSongDialog> createState() => _AddSongDialogState();
}

class _AddSongDialogState extends ConsumerState<AddSongDialog> {
  String _searchQuery = '';

  @override
  Widget build(BuildContext context) {
    final libraryState = ref.watch(libraryProvider);
    final playlistSongs = ref.watch(playlistSongProvider(widget.playlistId));

    // Filter songs that are not already in the playlist
    final existingSongIds = playlistSongs.playlistSongs.map((ps) => ps.songId).toSet();
    final availableSongs = libraryState.songs
        .where((s) => !existingSongIds.contains(s.id))
        .where((s) {
          if (_searchQuery.isEmpty) return true;
          final q = _searchQuery.toLowerCase();
          return s.title.toLowerCase().contains(q) ||
                 s.artist.toLowerCase().contains(q) ||
                 s.album.toLowerCase().contains(q);
        })
        .toList();

    return Dialog(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxHeight: MediaQuery.of(context).size.height * 0.7,
          maxWidth: MediaQuery.of(context).size.width * 0.9,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  const Expanded(
                    child: Text(
                      '添加歌曲',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                decoration: InputDecoration(
                  hintText: '搜索歌曲...',
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onChanged: (v) => setState(() => _searchQuery = v),
              ),
            ),
            const SizedBox(height: 8),
            Expanded(
              child: availableSongs.isEmpty
                  ? Center(
                      child: Text(
                        _searchQuery.isEmpty ? '曲库为空' : '未找到匹配的歌曲',
                      ),
                    )
                  : ListView.builder(
                      itemCount: availableSongs.length,
                      itemBuilder: (_, i) {
                        final song = availableSongs[i];
                        return SongListTile(
                          song: song,
                          onTap: () async {
                            await ref
                                .read(playlistSongProvider(widget.playlistId).notifier)
                                .addSong(song.id);
                            if (context.mounted) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text('已添加: ${song.title}')),
                              );
                            }
                          },
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
