import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:echo_vault_app/models/generated/echo_vault/song/v1/song_service.pb.dart';

enum LibraryStatus { loading, loaded, error }

class LibraryState {
  final LibraryStatus status;
  final List<Song> songs;
  final String? error;
  final String searchQuery;
  const LibraryState({this.status = LibraryStatus.loading, this.songs = const [], this.error, this.searchQuery = ''});
  List<Song> get filteredSongs {
    if (searchQuery.isEmpty) return songs;
    final q = searchQuery.toLowerCase();
    return songs.where((s) => s.title.toLowerCase().contains(q) || s.artist.toLowerCase().contains(q) || s.album.toLowerCase().contains(q)).toList();
  }
}

final libraryProvider = StateNotifierProvider<LibraryNotifier, LibraryState>((ref) => LibraryNotifier());

class LibraryNotifier extends StateNotifier<LibraryState> {
  LibraryNotifier() : super(const LibraryState());
  void setLoading() => state = const LibraryState(status: LibraryStatus.loading);
  void setSongs(List<Song> songs) => state = LibraryState(status: LibraryStatus.loaded, songs: songs);
  void setError(String message) => state = LibraryState(status: LibraryStatus.error, error: message);
  void setQuery(String q) => state = LibraryState(status: state.status, songs: state.songs, error: state.error, searchQuery: q);
}
