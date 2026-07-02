import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:echo_vault_app/features/library/models/scanned_file.dart';
import 'package:echo_vault_app/features/publish/providers/publish_provider.dart';

void main() {
  group('PublishProvider', () {
    test('initial state is idle', () {
      final c = ProviderContainer(); addTearDown(c.dispose);
      expect(c.read(publishProvider).status, PublishStatus.idle);
    });
    test('setComparisonResults updates new and known files', () {
      final c = ProviderContainer(); addTearDown(c.dispose);
      final file = ScannedFile(path: '/n.mp3', fileName: 'n.mp3', fileHash: 'h1', fileSize: 100, mimeType: 'audio/mpeg');
      c.read(publishProvider.notifier).setComparisonResults(newFiles: [file], knownHashes: {});
      expect(c.read(publishProvider).status, PublishStatus.review);
      expect(c.read(publishProvider).newFiles.length, 1);
    });
    test('markAsPublished moves file from new to published', () {
      final c = ProviderContainer(); addTearDown(c.dispose);
      final file = ScannedFile(path: '/n.mp3', fileName: 'n.mp3', fileHash: 'h1', fileSize: 100, mimeType: 'audio/mpeg');
      final n = c.read(publishProvider.notifier);
      n.setComparisonResults(newFiles: [file], knownHashes: {});
      n.markAsPublished('h1');
      expect(c.read(publishProvider).publishedCount, 1);
      expect(c.read(publishProvider).newFiles, isEmpty);
    });
    test('reset returns to idle', () {
      final c = ProviderContainer(); addTearDown(c.dispose);
      final file = ScannedFile(path: '/n.mp3', fileName: 'n.mp3', fileHash: 'h1', fileSize: 100, mimeType: 'audio/mpeg');
      c.read(publishProvider.notifier)..setComparisonResults(newFiles: [file], knownHashes: {})..reset();
      expect(c.read(publishProvider).status, PublishStatus.idle);
    });
  });
}
