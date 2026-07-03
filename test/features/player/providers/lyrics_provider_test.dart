import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:echo_vault_app/features/player/providers/player_provider.dart';
import 'package:echo_vault_app/models/lyric_line.dart';

void main() {
  setUpAll(() {
    WidgetsFlutterBinding.ensureInitialized();
  });

  group('currentLyricsProvider', () {
    test('is a StateProvider<List<LyricLine>>', () {
      expect(currentLyricsProvider, isNotNull);
    });

    test('initializes with empty list', () {
      final container = ProviderContainer();
      final lyrics = container.read(currentLyricsProvider);
      expect(lyrics, isEmpty);
      container.dispose();
    });

    test('can be updated', () {
      final container = ProviderContainer();
      final notifier = container.read(currentLyricsProvider.notifier);
      final testLyrics = [
        const LyricLine(Duration(seconds: 5), 'Hello'),
        const LyricLine(Duration(seconds: 10), 'World'),
      ];
      
      notifier.state = testLyrics;
      final lyrics = container.read(currentLyricsProvider);
      
      expect(lyrics.length, 2);
      expect(lyrics[0].text, 'Hello');
      expect(lyrics[1].text, 'World');
      container.dispose();
    });
  });

  group('currentLyricIndexProvider', () {
    test('is a Provider<int>', () {
      expect(currentLyricIndexProvider, isNotNull);
    });

    test('returns 0 when no lyrics are present', () {
      final container = ProviderContainer();
      final index = container.read(currentLyricIndexProvider);
      expect(index, 0);
      container.dispose();
    });
  });
}
