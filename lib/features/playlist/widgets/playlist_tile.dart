import 'package:flutter/material.dart';
import 'package:echo_vault_app/models/generated/echo_vault/playlist/v1/playlist_service.pb.dart';

class PlaylistTile extends StatelessWidget {
  final Playlist playlist;
  final VoidCallback? onTap;
  final VoidCallback? onDelete;

  const PlaylistTile({
    super.key,
    required this.playlist,
    this.onTap,
    this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Text(
          playlist.name.isNotEmpty ? playlist.name[0].toUpperCase() : '?',
        ),
      ),
      title: Text(playlist.name),
      subtitle: Text('${playlist.songCount} 首歌曲'),
      trailing: PopupMenuButton<String>(
        onSelected: (value) {
          if (value == 'delete' && onDelete != null) {
            onDelete!();
          }
        },
        itemBuilder: (context) => [
          const PopupMenuItem(value: 'delete', child: Text('删除')),
        ],
      ),
      onTap: onTap,
    );
  }
}
