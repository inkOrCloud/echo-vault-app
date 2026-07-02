class PaginationRequest {
  int pageSize;
  String pageToken;
  PaginationRequest({this.pageSize = 20, this.pageToken = ''});

  List<int> writeToBuffer() {
    // Simplified: skip encoding, just return empty
    return [];
  }
}

class PaginationResponse {
  int totalCount;
  String nextPageToken;
  PaginationResponse({this.totalCount = 0, this.nextPageToken = ''});
}

enum FileSource {
  fileSourceUnspecified(0),
  fileSourceLocal(1),
  fileSourceUploaded(2),
  fileSourceSynced(3);

  final int value;
  const FileSource(this.value);
}

enum FileStatus {
  fileStatusUnspecified(0),
  fileStatusLocalOnly(1),
  fileStatusUploaded(2),
  fileStatusDownloaded(3),
  fileStatusCloudOnly(4);

  final int value;
  const FileStatus(this.value);
}
