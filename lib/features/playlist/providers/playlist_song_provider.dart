import 'package:echo_vault_app/features/playlist/providers/playlist_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:echo_vault_app/features/playlist/services/playlist_repository.dart';
import 'package:echo_vault_app/models/generated/echo_vault/playlist/v1/playlist_service.pb.dart';
import 'package:echo_vault_app/models/generated/echo_vault/song/v1/song_service.pb.dart';

enum PlaylistSongStatus { loading, loaded, error }

class PlaylistSongState {
  final PlaylistSongStatus status;
  final List<PlaylistSong> playlistSongs;
  final List<Song> songs;
  final String? error;
  const PlaylistSongState({
    this.status = PlaylistSongStatus.loading,
    this.playlistSongs = const [],
    this.songs = const [],
    this.error,
  });
}

final playlistSongProvider = StateNotifierProvider.family<PlaylistSongNotifier, PlaylistSongState, String>((ref, playlistId) {
  return PlaylistSongNotifier(ref.read(playlistRepositoryProvider), playlistId);
});

class PlaylistSongNotifier extends StateNotifier<PlaylistSongState> {
  final PlaylistRepository _repo;
  final String playlistId;

  PlaylistSongNotifier(this._repo, this.playlistId) : super(const PlaylistSongState());

  Future<void> addSong(String songId) async {
    try {
      final playlistSong = await _repo.addSongToPlaylist(
        playlistId: playlistId,
        songId: songId,
      );
      state = PlaylistSongState(
        status: PlaylistSongStatus.loaded,
        playlistSongs: [...state.playlistSongs, playlistSong],
        songs: state.songs,
      );
    } catch (e) {
      state = PlaylistSongState(
        status: PlaylistSongStatus.error,
        playlistSongs: state.playlistSongs,
        songs: state.songs,
        error: e.toString(),
      );
      rethrow;
    }
  }

  Future<void> removeSong(String songId) async {
    try {
      await _repo.removeSongFromPlaylist(
        playlistId: playlistId,
        songId: songId,
      );
      state = PlaylistSongState(
        status: PlaylistSongStatus.loaded,
        playlistSongs: state.playlistSongs.where((ps) => ps.songId != songId).toList(),
        songs: state.songs,
      );
    } catch (e) {
      state = PlaylistSongState(
        status: PlaylistSongStatus.error,
        playlistSongs: state.playlistSongs,
        songs: state.songs,
        error: e.toString(),
      );
      rethrow;
    }
  }

  Future<void> reorderSongs(List<String> songIds) async {
    try {
      await _repo.reorderSongs(
        playlistId: playlistId,
        songIds: songIds,
      );
      // 重新排序本地状态
      final reordered = songIds.map((id) => state.playlistSongs.firstWhere((ps) => ps.songId == id)).toList();
      state = PlaylistSongState(
        status: PlaylistSongStatus.loaded,
        playlistSongs: reordered,
        songs: state.songs,
      );
    } catch (e) {
      state = PlaylistSongState(
        status: PlaylistSongStatus.error,
        playlistSongs: state.playlistSongs,
        songs: state.songs,
        error: e.toString(),
      );
      rethrow;
    }
  }
}
