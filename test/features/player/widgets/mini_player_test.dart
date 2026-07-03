import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:echo_vault_app/features/player/widgets/mini_player.dart';
import 'package:echo_vault_app/features/player/providers/player_provider.dart';
import 'package:echo_vault_app/services/audio_service.dart';
import 'package:just_audio/just_audio.dart';

void main() {
  testWidgets('MiniPlayer renders correctly', (WidgetTester tester) async {
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          audioServiceProvider.overrideWithValue(MockAudioService()),
        ],
        child: const MaterialApp(
          home: Scaffold(
            body: MiniPlayer(),
          ),
        ),
      ),
    );

    // Verify MiniPlayer is rendered
    expect(find.byType(MiniPlayer), findsOneWidget);
    expect(find.byIcon(Icons.music_note), findsOneWidget);
    expect(find.byIcon(Icons.play_arrow), findsOneWidget);
    expect(find.text('正在播放'), findsOneWidget);
  });
}

class MockAudioService implements AudioService {
  final AudioPlayer _player = AudioPlayer();
  
  @override
  AudioPlayer get player => _player;
  
  @override
  Stream<Duration> get positionStream => Stream.value(Duration.zero);
  
  @override
  Stream<Duration?> get durationStream => Stream.value(Duration.zero);
  
  @override
  Stream<PlayerState> get playerStateStream => Stream.value(PlayerState(false, ProcessingState.idle));
  
  @override
  Future<void> setAudioSource(String url) async {}
  
  @override
  Future<void> play() async {}
  
  @override
  Future<void> pause() async {}
  
  @override
  Future<void> seek(Duration position) async {}
  
  @override
  void dispose() {}
}
