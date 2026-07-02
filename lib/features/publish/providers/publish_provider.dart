import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:echo_vault_app/features/library/models/scanned_file.dart';

enum PublishStatus { idle, review, uploading, completed, error }

class PublishState {
  final PublishStatus status;
  final List<ScannedFile> newFiles;
  final List<ScannedFile> knownFiles;
  final String? error;
  final int publishedCount;
  final int uploadProgress;
  final int uploadTotal;
  const PublishState({this.status = PublishStatus.idle, this.newFiles = const [], this.knownFiles = const [], this.error, this.publishedCount = 0, this.uploadProgress = 0, this.uploadTotal = 0});
}

final publishProvider = StateNotifierProvider<PublishNotifier, PublishState>((ref) => PublishNotifier());

class PublishNotifier extends StateNotifier<PublishState> {
  PublishNotifier() : super(const PublishState());
  void setComparisonResults({required List<ScannedFile> newFiles, required Set<String> knownHashes}) {
    final known = newFiles.where((f) => knownHashes.contains(f.fileHash)).toList();
    final trulyNew = newFiles.where((f) => !knownHashes.contains(f.fileHash)).toList();
    state = PublishState(status: PublishStatus.review, newFiles: trulyNew, knownFiles: known);
  }
  void markAsPublished(String fileHash) => state = PublishState(status: state.status, newFiles: state.newFiles.where((f) => f.fileHash != fileHash).toList(), knownFiles: state.knownFiles, publishedCount: state.publishedCount + 1);
  void setUploadProgress({required int current, required int total}) => state = PublishState(status: PublishStatus.uploading, newFiles: state.newFiles, knownFiles: state.knownFiles, publishedCount: state.publishedCount, uploadProgress: current, uploadTotal: total);
  void completeUpload() => state = PublishState(status: PublishStatus.completed, publishedCount: state.publishedCount + state.newFiles.length);
  void setError(String message) => state = PublishState(status: PublishStatus.error, error: message);
  void reset() => state = const PublishState();
}
