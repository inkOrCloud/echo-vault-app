import 'package:echo_vault_app/models/generated/echo_vault/common/v1/types.pb.dart'
    show PaginationRequest, FileSource, FileStatus;

class Song {
  String id;
  String title;
  String artist;
  String album;
  String genre;
  int trackNumber;
  int discNumber;
  int durationMs;
  int year;
  String fileName;
  int fileSize;
  String fileHash;
  String mimeType;
  int bitrate;
  int sampleRate;
  FileSource source;
  FileStatus fileStatus;
  String ownerId;
  int version;
  bool isDeleted;
  int createdAt; // Unix millis
  int updatedAt; // Unix millis
  String coverUrl;
  String audioUrl;

  Song({
    this.id = '',
    this.title = '',
    this.artist = '',
    this.album = '',
    this.genre = '',
    this.trackNumber = 0,
    this.discNumber = 0,
    this.durationMs = 0,
    this.year = 0,
    this.fileName = '',
    this.fileSize = 0,
    this.fileHash = '',
    this.mimeType = '',
    this.bitrate = 0,
    this.sampleRate = 0,
    this.source = FileSource.fileSourceUnspecified,
    this.fileStatus = FileStatus.fileStatusUnspecified,
    this.ownerId = '',
    this.version = 0,
    this.isDeleted = false,
    this.createdAt = 0,
    this.updatedAt = 0,
    this.coverUrl = '',
    this.audioUrl = '',
  });

  Song.fromJson(Map<String, dynamic> json)
      : id = (json['id'] as String?) ?? '',
        title = (json['title'] as String?) ?? '',
        artist = (json['artist'] as String?) ?? '',
        album = (json['album'] as String?) ?? '',
        genre = (json['genre'] as String?) ?? '',
        trackNumber = (json['trackNumber'] as int?) ?? 0,
        discNumber = (json['discNumber'] as int?) ?? 0,
        durationMs = (json['durationMs'] as int?) ?? 0,
        year = (json['year'] as int?) ?? 0,
        fileName = (json['fileName'] as String?) ?? '',
        fileSize = (json['fileSize'] as int?) ?? 0,
        fileHash = (json['fileHash'] as String?) ?? '',
        mimeType = (json['mimeType'] as String?) ?? '',
        bitrate = (json['bitrate'] as int?) ?? 0,
        sampleRate = (json['sampleRate'] as int?) ?? 0,
        ownerId = (json['ownerId'] as String?) ?? '',
        version = (json['version'] as int?) ?? 0,
        isDeleted = (json['isDeleted'] as bool?) ?? false,
        createdAt = (json['createdAt'] as int?) ?? 0,
        updatedAt = (json['updatedAt'] as int?) ?? 0,
        coverUrl = (json['coverUrl'] as String?) ?? '',
        audioUrl = (json['audioUrl'] as String?) ?? '',
        source = _parseFileSource(json['source']),
        fileStatus = _parseFileStatus(json['fileStatus']);
}

FileSource _parseFileSource(dynamic v) {
  if (v is int) return FileSource.values.firstWhere((e) => e.value == v, orElse: () => FileSource.fileSourceUnspecified);
  return FileSource.fileSourceUnspecified;
}

FileStatus _parseFileStatus(dynamic v) {
  if (v is int) return FileStatus.values.firstWhere((e) => e.value == v, orElse: () => FileStatus.fileStatusUnspecified);
  return FileStatus.fileStatusUnspecified;
}

class CheckSongsByHashRequest {
  String deviceId;
  List<String> fileHashes;
  CheckSongsByHashRequest({this.deviceId = '', List<String>? fileHashes}) : fileHashes = fileHashes ?? [];
}

class CheckSongsByHashResponse_Result {
  String fileHash;
  bool exists;
  Song? song;
  CheckSongsByHashResponse_Result({this.fileHash = '', this.exists = false, this.song});
}

class CheckSongsByHashResponse {
  List<CheckSongsByHashResponse_Result> results;
  CheckSongsByHashResponse({List<CheckSongsByHashResponse_Result>? results}) : results = results ?? [];
}

class PublishSongRequest {
  String fileHash;
  String title;
  String artist;
  String album;
  String genre;
  int trackNumber;
  int discNumber;
  int year;
  String fileName;
  int fileSize;
  String mimeType;
  PublishSongRequest({
    this.fileHash = '', this.title = '', this.artist = '', this.album = '',
    this.genre = '', this.trackNumber = 0, this.discNumber = 0, this.year = 0,
    this.fileName = '', this.fileSize = 0, this.mimeType = '',
  });
}

class PublishSongResponse {
  Song song;
  PublishSongResponse({Song? song}) : song = song ?? Song();
}

class GetSongRequest {
  String id;
  GetSongRequest({this.id = ''});
}

class GetSongResponse {
  Song song;
  GetSongResponse({Song? song}) : song = song ?? Song();
}

class ListSongsRequest {
  PaginationRequest pagination;
  String ownerId;
  String sortBy;
  String sortOrder;
  ListSongsRequest({
    PaginationRequest? pagination, this.ownerId = '', this.sortBy = '', this.sortOrder = '',
  }) : pagination = pagination ?? PaginationRequest();
}

class ListSongsResponse {
  List<Song> songs;
  PaginationRequest? pagination;
  ListSongsResponse({List<Song>? songs}) : songs = songs ?? [];
}

class SearchSongsRequest {
  String query;
  PaginationRequest pagination;
  SearchSongsRequest({this.query = '', PaginationRequest? pagination})
      : pagination = pagination ?? PaginationRequest();
}

class SearchSongsResponse {
  List<Song> songs;
  SearchSongsResponse({List<Song>? songs}) : songs = songs ?? [];
}
