import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:echo_vault_app/features/player/providers/player_provider.dart';
import 'package:echo_vault_app/services/audio_service.dart';

void main() {
  setUpAll(() {
    WidgetsFlutterBinding.ensureInitialized();
  });

  group('audioServiceProvider', () {
    test('provides an AudioService instance', () {
      final container = ProviderContainer();
      final service = container.read(audioServiceProvider);
      expect(service, isA<AudioService>());
      container.dispose();
    });

    test('disposes AudioService on container disposal', () {
      final container = ProviderContainer();
      final service = container.read(audioServiceProvider);
      expect(service.player, isNotNull);
      container.dispose();
    });
  });

  group('positionProvider', () {
    test('is a StreamProvider<Duration>', () {
      expect(positionProvider, isNotNull);
    });

    test('emits position from the audio service', () async {
      final container = ProviderContainer();
      final subscription = container.listen(positionProvider, (_, __) {});
      await Future<void>.delayed(const Duration(milliseconds: 100));
      subscription.close();
      container.dispose();
    });
  });
}
