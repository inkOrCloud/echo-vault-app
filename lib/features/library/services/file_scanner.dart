import 'dart:io';
import 'package:crypto/crypto.dart';
import 'package:echo_vault_app/features/library/models/scanned_file.dart';

class FileScanner {
  /// 递归扫描目录，收集音频文件并计算 SHA256 哈希。
  ///
  /// [directory]: 要扫描的目录路径。
  /// [onProgress]: 进度回调，参数为（已找到文件数, 当前正在扫描的目录）。
  Future<List<ScannedFile>> scanDirectory(
    String directory, {
    void Function(int found, String currentDirectory)? onProgress,
  }) async {
    final dir = Directory(directory);
    if (!await dir.exists()) {
      throw FileSystemException('Directory does not exist', directory);
    }

    final files = <File>[];

    // 第一步：递归收集所有音频文件
    await for (final entity in dir.list(recursive: true, followLinks: false)) {
      if (entity is File) {
        // 跳过隐藏文件
        final fileName = entity.uri.pathSegments.last;
        if (fileName.startsWith('.')) continue;

        final ext = fileName.split('.').last.toLowerCase();
        if (ScannedFile.isAudioExtension(ext)) {
          final parentDir = entity.parent.path;
          onProgress?.call(files.length + 1, parentDir);
          files.add(entity);
        }
      }
    }

    // 第二步：计算每个文件的 SHA256
    final results = <ScannedFile>[];
    for (final file in files) {
      final bytes = await file.readAsBytes();
      final hash = sha256.convert(bytes).toString();
      final fileName = file.uri.pathSegments.last;

      results.add(ScannedFile(
        path: file.path,
        fileName: fileName,
        fileHash: hash,
        fileSize: await file.length(),
        mimeType: ScannedFile.deduceMimeType(fileName),
        guessedTitle: ScannedFile.titleFromFilename(fileName),
      ));
    }

    return results;
  }
}
