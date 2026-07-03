import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:echo_vault_app/features/library/services/file_scanner.dart';

Future<String> _createTestDirectory({
  required List<String> audioFiles,
  required List<String> nonAudioFiles,
}) async {
  final dir = Directory.systemTemp.createTempSync('echovault_scanner_test_');
  for (final f in audioFiles) {
    await File('${dir.path}/$f').create(recursive: true);
  }
  for (final f in nonAudioFiles) {
    await File('${dir.path}/$f').create(recursive: true);
  }
  return dir.path;
}

void main() {
  late String testDir;

  setUp(() {
    testDir = '';
  });

  tearDown(() async {
    if (testDir.isNotEmpty) {
      await Directory(testDir).delete(recursive: true);
    }
  });

  test('scanDirectory returns audio files only', () async {
    testDir = await _createTestDirectory(
      audioFiles: ['song1.mp3', 'sub/song2.flac', 'song3.ogg'],
      nonAudioFiles: ['readme.txt', 'image.jpg', 'video.mp4', 'sub/notes.md'],
    );
    final scanner = FileScanner();
    final results = await scanner.scanDirectory(testDir);
    expect(results.length, 3);
    expect(results.any((f) => f.fileName == 'song1.mp3'), isTrue);
    expect(results.any((f) => f.fileName == 'song2.flac'), isTrue);
    expect(results.any((f) => f.fileName == 'song3.ogg'), isTrue);
  });

  test('scanDirectory computes SHA256 hash', () async {
    testDir = await _createTestDirectory(
      audioFiles: ['hash_test.mp3'],
      nonAudioFiles: [],
    );
    final file = File('$testDir/hash_test.mp3');
    await file.writeAsString('test content for hashing');
    final scanner = FileScanner();
    final results = await scanner.scanDirectory(testDir);
    expect(results.length, 1);
    expect(results.first.fileHash, isNotEmpty);
    expect(results.first.fileHash.length, 64);
  });

  test('scanDirectory skips hidden files', () async {
    testDir = await _createTestDirectory(
      audioFiles: ['visible.mp3'],
      nonAudioFiles: ['.hidden.mp3'],
    );
    final scanner = FileScanner();
    final results = await scanner.scanDirectory(testDir);
    expect(results.any((f) => f.fileName == '.hidden.mp3'), isFalse);
  });

  test('scanDirectory reports progress via callback', () async {
    testDir = await _createTestDirectory(
      audioFiles: List.generate(5, (i) => 'song$i.mp3'),
      nonAudioFiles: [],
    );
    final scanner = FileScanner();
    int progressCount = 0;
    String? lastDir;
    await scanner.scanDirectory(
      testDir,
      onProgress: (found, currentDir) {
        progressCount = found;
        lastDir = currentDir;
      },
    );
    expect(progressCount, 5);
    expect(lastDir, isNotEmpty);
  });

  test('throws if directory does not exist', () async {
    final scanner = FileScanner();
    expect(
      () => scanner.scanDirectory('/nonexistent/path'),
      throwsA(isA<FileSystemException>()),
    );
  });
}
