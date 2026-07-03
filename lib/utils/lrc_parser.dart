import 'package:echo_vault_app/models/lyric_line.dart';

class LrcParser {
  static List<LyricLine> parse(String lrcContent) {
    final RegExp regex = RegExp(r'\[(\d{2}):(\d{2})\.(\d{2,3})\](.*)');
    final List<LyricLine> lyrics = [];

    for (var line in lrcContent.split('\n')) {
      final match = regex.firstMatch(line);
      if (match != null) {
        final min = int.parse(match.group(1)!);
        final sec = int.parse(match.group(2)!);
        final ms = int.parse(match.group(3)!.padRight(3, '0'));
        final text = match.group(4)!.trim();
        if (text.isNotEmpty) {
          lyrics.add(LyricLine(
            Duration(minutes: min, seconds: sec, milliseconds: ms),
            text,
          ));
        }
      }
    }
    lyrics.sort((a, b) => a.time.compareTo(b.time));
    return lyrics;
  }
}
