import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:echo_vault_app/features/player/pages/player_page.dart';
import 'package:echo_vault_app/features/player/providers/player_provider.dart';
import 'package:echo_vault_app/services/audio_service.dart';
import 'package:just_audio/just_audio.dart';

void main() {
  testWidgets('PlayerPage renders correctly', (WidgetTester tester) async {
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          audioServiceProvider.overrideWithValue(MockAudioService()),
        ],
        child: const MaterialApp(
          home: PlayerPage(),
        ),
      ),
    );

    // Verify PlayerPage is rendered with all elements
    expect(find.byType(PlayerPage), findsOneWidget);
    expect(find.byIcon(Icons.album), findsOneWidget);
    expect(find.text('歌曲标题'), findsOneWidget);
    expect(find.text('歌手'), findsOneWidget);
    expect(find.byType(Slider), findsOneWidget);
    expect(find.byIcon(Icons.skip_previous), findsOneWidget);
    expect(find.byIcon(Icons.play_circle_fill), findsOneWidget);
    expect(find.byIcon(Icons.skip_next), findsOneWidget);
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
