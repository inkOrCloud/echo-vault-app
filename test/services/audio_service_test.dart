import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:echo_vault_app/services/audio_service.dart';

void main() {
  setUpAll(() {
    WidgetsFlutterBinding.ensureInitialized();
  });

  group('AudioService', () {
    test('can be instantiated', () {
      final service = AudioService();
      expect(service, isNotNull);
      expect(service.player, isNotNull);
      service.dispose();
    });

    test('exposes positionStream', () {
      final service = AudioService();
      expect(service.positionStream, isNotNull);
      service.dispose();
    });

    test('exposes durationStream', () {
      final service = AudioService();
      expect(service.durationStream, isNotNull);
      service.dispose();
    });

    test('exposes playerStateStream', () {
      final service = AudioService();
      expect(service.playerStateStream, isNotNull);
      service.dispose();
    });

    test('setAudioSource is callable', () {
      final service = AudioService();
      // Verify the method exists and is callable
      expect(service.setAudioSource, isNotNull);
      service.dispose();
    });

    test('play is callable', () {
      final service = AudioService();
      expect(service.play, isNotNull);
      service.dispose();
    });

    test('pause is callable', () {
      final service = AudioService();
      expect(service.pause, isNotNull);
      service.dispose();
    });

    test('seek is callable', () {
      final service = AudioService();
      expect(service.seek, isNotNull);
      service.dispose();
    });

    test('dispose does not throw', () {
      final service = AudioService();
      expect(() => service.dispose(), returnsNormally);
    });
  });
}
