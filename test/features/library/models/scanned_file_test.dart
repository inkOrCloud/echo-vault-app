import 'package:flutter_test/flutter_test.dart';
import 'package:echo_vault_app/features/library/models/scanned_file.dart';

void main() {
  group('ScannedFile', () {
    test('creates with path and hash', () {
      final file = ScannedFile(
        path: '/music/test.mp3',
        fileName: 'test.mp3',
        fileHash: 'abc123',
        fileSize: 1024,
        mimeType: 'audio/mpeg',
      );
      expect(file.path, '/music/test.mp3');
      expect(file.fileHash, 'abc123');
      expect(file.fileSize, 1024);
    });

    test('deduces mime type from extension', () {
      expect(ScannedFile.deduceMimeType('song.mp3'), 'audio/mpeg');
      expect(ScannedFile.deduceMimeType('song.flac'), 'audio/flac');
      expect(ScannedFile.deduceMimeType('song.ogg'), 'audio/ogg');
      expect(ScannedFile.deduceMimeType('song.m4a'), 'audio/mp4');
      expect(ScannedFile.deduceMimeType('song.wav'), 'audio/wav');
      expect(ScannedFile.deduceMimeType('song.wma'), 'audio/x-ms-wma');
      expect(ScannedFile.deduceMimeType('song.aac'), 'audio/aac');
      expect(ScannedFile.deduceMimeType('song.unknown'), 'application/octet-stream');
    });

    test('extracts title from filename', () {
      expect(ScannedFile.titleFromFilename('My Song.mp3'), 'My Song');
      expect(ScannedFile.titleFromFilename('01 - Track One.flac'), 'Track One');
    });

    test('isAudioExtension returns true for known audio formats', () {
      expect(ScannedFile.isAudioExtension('mp3'), isTrue);
      expect(ScannedFile.isAudioExtension('flac'), isTrue);
      expect(ScannedFile.isAudioExtension('ogg'), isTrue);
      expect(ScannedFile.isAudioExtension('m4a'), isTrue);
      expect(ScannedFile.isAudioExtension('wav'), isTrue);
      expect(ScannedFile.isAudioExtension('txt'), isFalse);
      expect(ScannedFile.isAudioExtension('mp4'), isFalse);
    });

    test('equality and hashcode based on fileHash', () {
      final a = ScannedFile(path: '/a.mp3', fileName: 'a.mp3', fileHash: 'hash1', fileSize: 100, mimeType: 'audio/mpeg');
      final b = ScannedFile(path: '/b.mp3', fileName: 'b.mp3', fileHash: 'hash1', fileSize: 200, mimeType: 'audio/mpeg');
      final c = ScannedFile(path: '/c.mp3', fileName: 'c.mp3', fileHash: 'hash2', fileSize: 100, mimeType: 'audio/mpeg');
      expect(a, equals(b));
      expect(a.hashCode, equals(b.hashCode));
      expect(a, isNot(equals(c)));
    });
  });
}
