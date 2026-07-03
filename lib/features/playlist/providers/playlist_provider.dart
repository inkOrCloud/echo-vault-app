import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:echo_vault_app/models/generated/echo_vault/playlist/v1/playlist_service.pb.dart';

enum PlaylistStatus { initial, loading, loaded, error }

class PlaylistListState {
  final PlaylistStatus status;
  final List<Playlist> playlists;
  final String? error;

  const PlaylistListState({
    this.status = PlaylistStatus.initial,
    this.playlists = const [],
    this.error,
  });
}

final playlistListProvider = StateNotifierProvider<PlaylistListNotifier, PlaylistListState>((ref) {
  return PlaylistListNotifier();
});

class PlaylistListNotifier extends StateNotifier<PlaylistListState> {
  PlaylistListNotifier() : super(const PlaylistListState());

  void setLoading() => state = const PlaylistListState(status: PlaylistStatus.loading);
  void setPlaylists(List<Playlist> playlists) => state = PlaylistListState(status: PlaylistStatus.loaded, playlists: playlists);
  void setError(String message) => state = PlaylistListState(status: PlaylistStatus.error, error: message);
  void addPlaylist(Playlist playlist) {
    state = PlaylistListState(
      status: state.status,
      playlists: [...state.playlists, playlist],
    );
  }
  void removePlaylist(String id) {
    state = PlaylistListState(
      status: state.status,
      playlists: state.playlists.where((p) => p.id != id).toList(),
    );
  }
  void updatePlaylist(Playlist updated) {
    state = PlaylistListState(
      status: state.status,
      playlists: state.playlists.map((p) => p.id == updated.id ? updated : p).toList(),
    );
  }
}
