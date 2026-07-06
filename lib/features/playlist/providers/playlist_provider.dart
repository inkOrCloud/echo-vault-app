import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:echo_vault_app/features/playlist/services/playlist_repository.dart';
import 'package:echo_vault_app/models/generated/echo_vault/playlist/v1/playlist_service.pb.dart';

enum PlaylistStatus { loading, loaded, error }

class PlaylistState {
  final PlaylistStatus status;
  final List<Playlist> playlists;
  final String? error;
  final String searchQuery;
  const PlaylistState({this.status = PlaylistStatus.loading, this.playlists = const [], this.error, this.searchQuery = ''});
  List<Playlist> get filteredPlaylists {
    if (searchQuery.isEmpty) return playlists;
    final q = searchQuery.toLowerCase();
    return playlists.where((p) => p.name.toLowerCase().contains(q) || (p.description.toLowerCase().contains(q))).toList();
  }
}

final playlistRepositoryProvider = Provider<PlaylistRepository>((ref) {
  throw UnimplementedError('PlaylistRepository must be overridden');
});

final playlistProvider = StateNotifierProvider<PlaylistNotifier, PlaylistState>((ref) {
  return PlaylistNotifier(ref.read(playlistRepositoryProvider));
});

class PlaylistNotifier extends StateNotifier<PlaylistState> {
  final PlaylistRepository _repo;
  PlaylistNotifier(this._repo) : super(const PlaylistState());

  Future<void> loadPlaylists() async {
    state = PlaylistState(
      status: PlaylistStatus.loading,
      playlists: state.playlists,
      searchQuery: state.searchQuery,
    );
    try {
      final playlists = await _repo.listPlaylists();
      state = PlaylistState(
        status: PlaylistStatus.loaded,
        playlists: playlists,
        searchQuery: state.searchQuery,
      );
    } catch (e) {
      state = PlaylistState(
        status: PlaylistStatus.error,
        error: e.toString(),
        searchQuery: state.searchQuery,
      );
    }
  }

  Future<Playlist> createPlaylist({
    required String name,
    String? description,
    bool isPublic = false,
  }) async {
    try {
      final playlist = await _repo.createPlaylist(
        name: name,
        description: description,
        isPublic: isPublic,
      );
      state = PlaylistState(
        status: PlaylistStatus.loaded,
        playlists: [...state.playlists, playlist],
        searchQuery: state.searchQuery,
      );
      return playlist;
    } catch (e) {
      state = PlaylistState(
        status: PlaylistStatus.error,
        error: e.toString(),
        searchQuery: state.searchQuery,
      );
      rethrow;
    }
  }

  Future<void> deletePlaylist(String id) async {
    try {
      await _repo.deletePlaylist(id);
      state = PlaylistState(
        status: PlaylistStatus.loaded,
        playlists: state.playlists.where((p) => p.id != id).toList(),
        searchQuery: state.searchQuery,
      );
    } catch (e) {
      state = PlaylistState(
        status: PlaylistStatus.error,
        error: e.toString(),
        searchQuery: state.searchQuery,
      );
      rethrow;
    }
  }

  Future<void> updatePlaylist({
    required String id,
    String? name,
    String? description,
    bool? isPublic,
  }) async {
    try {
      final updated = await _repo.updatePlaylist(
        id: id,
        name: name,
        description: description,
        isPublic: isPublic,
      );
      state = PlaylistState(
        status: PlaylistStatus.loaded,
        playlists: state.playlists.map((p) => p.id == id ? updated : p).toList(),
        searchQuery: state.searchQuery,
      );
    } catch (e) {
      state = PlaylistState(
        status: PlaylistStatus.error,
        error: e.toString(),
        searchQuery: state.searchQuery,
      );
      rethrow;
    }
  }

  void setQuery(String q) {
    state = PlaylistState(
      status: state.status,
      playlists: state.playlists,
      error: state.error,
      searchQuery: q,
    );
  }
}
