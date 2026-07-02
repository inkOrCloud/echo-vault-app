import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:echo_vault_app/features/library/models/scanned_file.dart';

enum ScannerStatus { idle, scanning, completed, error }

class ScannerState {
  final ScannerStatus status;
  final List<ScannedFile> scannedFiles;
  final String? error;
  final int foundCount;
  final String? currentDirectory;
  const ScannerState({this.status = ScannerStatus.idle, this.scannedFiles = const [], this.error, this.foundCount = 0, this.currentDirectory});
}

final scannerProvider = StateNotifierProvider<ScannerNotifier, ScannerState>((ref) => ScannerNotifier());

class ScannerNotifier extends StateNotifier<ScannerState> {
  ScannerNotifier() : super(const ScannerState());
  void startScan() => state = const ScannerState(status: ScannerStatus.scanning);
  void setProgress({required int found, required String currentDirectory}) => state = ScannerState(status: ScannerStatus.scanning, foundCount: found, currentDirectory: currentDirectory);
  void completeScan(List<ScannedFile> files) => state = ScannerState(status: ScannerStatus.completed, scannedFiles: files, foundCount: files.length);
  void setError(String message) => state = ScannerState(status: ScannerStatus.error, error: message);
  void reset() => state = const ScannerState();
}
