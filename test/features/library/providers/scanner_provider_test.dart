import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:echo_vault_app/features/library/models/scanned_file.dart';
import 'package:echo_vault_app/features/library/providers/scanner_provider.dart';

void main() {
  group('ScannerProvider', () {
    test('initial state is idle', () {
      final c = ProviderContainer(); addTearDown(c.dispose);
      final s = c.read(scannerProvider);
      expect(s.status, ScannerStatus.idle); expect(s.scannedFiles, isEmpty); expect(s.error, isNull);
    });
    test('startScan transitions to scanning', () {
      final c = ProviderContainer(); addTearDown(c.dispose);
      c.read(scannerProvider.notifier).startScan();
      expect(c.read(scannerProvider).status, ScannerStatus.scanning);
    });
    test('completeScan transitions to completed', () {
      final c = ProviderContainer(); addTearDown(c.dispose);
      final n = c.read(scannerProvider.notifier);
      n.startScan();
      n.completeScan([ScannedFile(path: '/a.mp3', fileName: 'a.mp3', fileHash: 'h1', fileSize: 100, mimeType: 'audio/mpeg')]);
      expect(c.read(scannerProvider).status, ScannerStatus.completed);
      expect(c.read(scannerProvider).scannedFiles.length, 1);
    });
    test('setError transitions to error', () {
      final c = ProviderContainer(); addTearDown(c.dispose);
      c.read(scannerProvider.notifier)..startScan()..setError('err');
      expect(c.read(scannerProvider).status, ScannerStatus.error);
      expect(c.read(scannerProvider).error, 'err');
    });
    test('reset returns to idle', () {
      final c = ProviderContainer(); addTearDown(c.dispose);
      c.read(scannerProvider.notifier)..startScan()..setError('err')..reset();
      expect(c.read(scannerProvider).status, ScannerStatus.idle);
    });
  });
}
