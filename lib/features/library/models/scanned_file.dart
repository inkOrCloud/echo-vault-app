class ScannedFile {
  final String path;
  final String fileName;
  final String fileHash;
  final int fileSize;
  final String mimeType;
  final String? guessedTitle;
  final String? guessedArtist;

  const ScannedFile({
    required this.path,
    required this.fileName,
    required this.fileHash,
    required this.fileSize,
    required this.mimeType,
    this.guessedTitle,
    this.guessedArtist,
  });

  static const Set<String> audioExtensions = {
    'mp3', 'flac', 'ogg', 'm4a', 'wav', 'wma', 'aac',
  };

  static bool isAudioExtension(String ext) => audioExtensions.contains(ext.toLowerCase());

  static String deduceMimeType(String fileName) {
    final ext = fileName.split('.').last.toLowerCase();
    switch (ext) {
      case 'mp3':  return 'audio/mpeg';
      case 'flac': return 'audio/flac';
      case 'ogg':  return 'audio/ogg';
      case 'm4a':  return 'audio/mp4';
      case 'wav':  return 'audio/wav';
      case 'wma':  return 'audio/x-ms-wma';
      case 'aac':  return 'audio/aac';
      default:     return 'application/octet-stream';
    }
  }

  static String titleFromFilename(String fileName) {
    final name = fileName.replaceAll(RegExp(r'\.[^.]+$'), '');
    final match = RegExp(r'^\d+\s*[-–—]\s*(.+)$').firstMatch(name);
    if (match != null) return match.group(1)!.trim();
    return name.trim();
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ScannedFile && runtimeType == other.runtimeType && fileHash == other.fileHash;

  @override
  int get hashCode => fileHash.hashCode;
}
