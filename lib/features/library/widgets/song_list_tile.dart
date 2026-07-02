import 'package:flutter/material.dart';
import 'package:echo_vault_app/models/generated/echo_vault/song/v1/song_service.pb.dart';
import 'package:echo_vault_app/models/generated/echo_vault/common/v1/types.pbenum.dart';

String formatDuration(int ms) {
  if (ms <= 0) return '--:--';
  final s = ms ~/ 1000;
  return '${(s ~/ 60).toString().padLeft(1, '0')}:${(s % 60).toString().padLeft(2, '0')}';
}

class SongListTile extends StatelessWidget {
  final Song song;
  final VoidCallback? onTap;
  const SongListTile({super.key, required this.song, this.onTap});

  IconData _statusIcon() {
    switch (song.fileStatus) {
      case FileStatus.FILE_STATUS_LOCAL_ONLY: return Icons.storage;
      case FileStatus.FILE_STATUS_UPLOADED:  return Icons.cloud_done;
      case FileStatus.FILE_STATUS_DOWNLOADED: return Icons.download_done;
      case FileStatus.FILE_STATUS_CLOUD_ONLY: return Icons.cloud_download;
      default: return Icons.music_note;
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListTile(
      leading: CircleAvatar(backgroundColor: theme.colorScheme.primaryContainer, child: Icon(Icons.music_note, color: theme.colorScheme.onPrimaryContainer)),
      title: Text(song.title, maxLines: 1, overflow: TextOverflow.ellipsis),
      subtitle: Text('${song.artist}${song.album.isNotEmpty ? ' · ${song.album}' : ''}', maxLines: 1, overflow: TextOverflow.ellipsis),
      trailing: Row(mainAxisSize: MainAxisSize.min, children: [
        Icon(_statusIcon(), size: 18, color: theme.colorScheme.outline),
        const SizedBox(width: 8),
        Text(formatDuration(song.durationMs), style: theme.textTheme.bodySmall?.copyWith(color: theme.colorScheme.outline)),
      ]),
      onTap: onTap,
    );
  }
}
