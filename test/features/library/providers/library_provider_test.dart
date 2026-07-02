import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:echo_vault_app/features/library/providers/library_provider.dart';
import 'package:echo_vault_app/models/generated/echo_vault/song/v1/song_service.pb.dart';

void main() {
  group('LibraryProvider', () {
    test('initial state is loading', () {
      final c = ProviderContainer(); addTearDown(c.dispose);
      expect(c.read(libraryProvider).status, LibraryStatus.loading);
    });
    test('setSongs transitions to loaded', () {
      final c = ProviderContainer(); addTearDown(c.dispose);
      c.read(libraryProvider.notifier).setSongs([Song(id: '1', title: 'Test')]);
      expect(c.read(libraryProvider).status, LibraryStatus.loaded);
      expect(c.read(libraryProvider).songs.length, 1);
    });
    test('setError transitions to error', () {
      final c = ProviderContainer(); addTearDown(c.dispose);
      c.read(libraryProvider.notifier).setError('Network error');
      expect(c.read(libraryProvider).status, LibraryStatus.error);
      expect(c.read(libraryProvider).error, 'Network error');
    });
    test('setQuery updates search query', () {
      final c = ProviderContainer(); addTearDown(c.dispose);
      c.read(libraryProvider.notifier).setQuery('hello');
      expect(c.read(libraryProvider).searchQuery, 'hello');
    });
    test('filteredSongs filters by query', () {
      final c = ProviderContainer(); addTearDown(c.dispose);
      final n = c.read(libraryProvider.notifier);
      n.setSongs([Song(id: '1', title: 'Hello', artist: 'A'), Song(id: '2', title: 'World', artist: 'B')]);
      n.setQuery('hello');
      expect(c.read(libraryProvider).filteredSongs.length, 1);
    });
  });
}
