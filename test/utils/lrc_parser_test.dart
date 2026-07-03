import 'package:flutter_test/flutter_test.dart';
import 'package:echo_vault_app/utils/lrc_parser.dart';
import 'package:echo_vault_app/models/lyric_line.dart';

void main() {
  group('LrcParser', () {
    test('parses basic LRC format', () {
      const lrcContent = '[00:05.00]Hello world\n[00:10.50]Second line';
      final lyrics = LrcParser.parse(lrcContent);
      
      expect(lyrics.length, 2);
      expect(lyrics[0].time, const Duration(seconds: 5));
      expect(lyrics[0].text, 'Hello world');
      expect(lyrics[1].time, const Duration(seconds: 10, milliseconds: 500));
      expect(lyrics[1].text, 'Second line');
    });

    test('parses LRC with milliseconds', () {
      const lrcContent = '[01:23.456]Third line';
      final lyrics = LrcParser.parse(lrcContent);
      
      expect(lyrics.length, 1);
      expect(lyrics[0].time, const Duration(minutes: 1, seconds: 23, milliseconds: 456));
      expect(lyrics[0].text, 'Third line');
    });

    test('ignores lines without timestamps', () {
      const lrcContent = '[00:05.00]Hello\nRandom line without timestamp\n[00:10.00]World';
      final lyrics = LrcParser.parse(lrcContent);
      
      expect(lyrics.length, 2);
      expect(lyrics[0].text, 'Hello');
      expect(lyrics[1].text, 'World');
    });

    test('sorts lyrics by timestamp', () {
      const lrcContent = '[00:10.00]Later\n[00:05.00]Earlier\n[00:08.00]Middle';
      final lyrics = LrcParser.parse(lrcContent);
      
      expect(lyrics.length, 3);
      expect(lyrics[0].text, 'Earlier');
      expect(lyrics[0].time, const Duration(seconds: 5));
      expect(lyrics[1].text, 'Middle');
      expect(lyrics[1].time, const Duration(seconds: 8));
      expect(lyrics[2].text, 'Later');
      expect(lyrics[2].time, const Duration(seconds: 10));
    });

    test('handles empty content', () {
      final lyrics = LrcParser.parse('');
      expect(lyrics, isEmpty);
    });

    test('handles lines with only timestamps', () {
      const lrcContent = '[00:05.00]\n[00:10.00]\n[00:15.00]';
      final lyrics = LrcParser.parse(lrcContent);
      expect(lyrics, isEmpty);
    });

    test('handles 2-digit millisecond format', () {
      const lrcContent = '[00:05.30]Two digits ms';
      final lyrics = LrcParser.parse(lrcContent);
      
      expect(lyrics.length, 1);
      expect(lyrics[0].time, const Duration(seconds: 5, milliseconds: 300));
    });

    test('handles multiple lyrics on same timestamp', () {
      const lrcContent = '[00:05.00]First\n[00:05.00]Second';
      final lyrics = LrcParser.parse(lrcContent);
      
      expect(lyrics.length, 2);
      expect(lyrics[0].time, const Duration(seconds: 5));
      expect(lyrics[1].time, const Duration(seconds: 5));
    });

    test('trims whitespace from lyrics', () {
      const lrcContent = '[00:05.00]  Hello world  ';
      final lyrics = LrcParser.parse(lrcContent);
      
      expect(lyrics.length, 1);
      expect(lyrics[0].text, 'Hello world');
    });

    test('handles unicode lyrics', () {
      const lrcContent = '[00:05.00]你好世界 🎵';
      final lyrics = LrcParser.parse(lrcContent);
      
      expect(lyrics.length, 1);
      expect(lyrics[0].text, '你好世界 🎵');
    });
  });
}
