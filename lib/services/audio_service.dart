import 'package:just_audio/just_audio.dart';
import 'dart:async';

class AudioService {
  final AudioPlayer _player = AudioPlayer();
  AudioPlayer get player => _player;

  Stream<Duration> get positionStream => _player.positionStream;
  Stream<Duration?> get durationStream => _player.durationStream;
  Stream<PlayerState> get playerStateStream => _player.playerStateStream;

  Future<void> setAudioSource(String url) async {
    await _player.setUrl(url);
  }

  Future<void> play() async => await _player.play();
  Future<void> pause() async => await _player.pause();
  Future<void> seek(Duration position) async => await _player.seek(position);
  
  void dispose() => _player.dispose();
}
