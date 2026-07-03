import 'package:flutter_test/flutter_test.dart';
import 'package:echo_vault_app/models/lyric_line.dart';

void main() {
  group('LyricLine', () {
    test('creates with time and text', () {
      final line = LyricLine(const Duration(seconds: 5), 'Hello world');
      expect(line.time, const Duration(seconds: 5));
      expect(line.text, 'Hello world');
    });

    test('is immutable (final fields)', () {
      const line = LyricLine(Duration(seconds: 10), 'Test line');
      expect(line.time, const Duration(seconds: 10));
      expect(line.text, 'Test line');
    });

    test('supports equality', () {
      const a = LyricLine(Duration(seconds: 5), 'Same');
      const b = LyricLine(Duration(seconds: 5), 'Same');
      // Default equality for const records/objects
      expect(a.time, equals(b.time));
      expect(a.text, equals(b.text));
    });

    test('supports different durations', () {
      const line = LyricLine(Duration(minutes: 2, seconds: 30, milliseconds: 500), 'Mid-song');
      expect(line.time, const Duration(minutes: 2, seconds: 30, milliseconds: 500));
      expect(line.text, 'Mid-song');
    });

    test('supports empty text', () {
      const line = LyricLine(Duration.zero, '');
      expect(line.time, Duration.zero);
      expect(line.text, isEmpty);
    });

    test('supports unicode text', () {
      const line = LyricLine(Duration(seconds: 1), '你好世界 🎵');
      expect(line.text, '你好世界 🎵');
    });
  });
}
