import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:echo_vault_app/services/audio_service.dart';
import 'package:echo_vault_app/models/lyric_line.dart';

final audioServiceProvider = Provider<AudioService>((ref) {
  final service = AudioService();
  ref.onDispose(service.dispose);
  return service;
});

final positionProvider = StreamProvider<Duration>((ref) {
  return ref.watch(audioServiceProvider).positionStream;
});

final currentLyricsProvider = StateProvider<List<LyricLine>>((ref) => []);

final currentLyricIndexProvider = Provider<int>((ref) {
  final position = ref.watch(positionProvider).valueOrNull ?? Duration.zero;
  final lyrics = ref.watch(currentLyricsProvider);
  
  for (var i = lyrics.length - 1; i >= 0; i--) {
    if (position >= lyrics[i].time) return i;
  }
  return 0;
});
