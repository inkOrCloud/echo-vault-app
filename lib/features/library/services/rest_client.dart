import 'package:dio/dio.dart';

class RestClientException implements Exception {
  final String message;
  final int? statusCode;
  const RestClientException(this.message, {this.statusCode});
  @override
  String toString() => 'RestClientException: $message (status: $statusCode)';
}

class FileUrls {
  final String audioUrl;
  final String coverUrl;
  const FileUrls({required this.audioUrl, required this.coverUrl});
}

class RestClient {
  final Dio dio;
  final String baseUrl;

  RestClient({required this.dio, required this.baseUrl});

  Future<void> uploadAudio({
    required String songId, required String filePath, required String fileName, required String token,
  }) async {
    final formData = FormData.fromMap({
      'file': await MultipartFile.fromFile(filePath, filename: fileName),
    });
    final response = await dio.post(
      '$baseUrl/api/v1/files/upload',
      data: formData,
      queryParameters: {'type': 'audio', 'song_id': songId},
      options: Options(headers: {'Authorization': 'Bearer $token'}),
    );
    if (response.statusCode != 200) {
      throw RestClientException(response.statusMessage ?? 'Upload failed', statusCode: response.statusCode);
    }
  }

  Future<void> uploadCover({
    required String songId, required String filePath, required String token,
  }) async {
    final formData = FormData.fromMap({
      'file': await MultipartFile.fromFile(filePath),
    });
    final response = await dio.post(
      '$baseUrl/api/v1/files/upload',
      data: formData,
      queryParameters: {'type': 'cover', 'song_id': songId},
      options: Options(headers: {'Authorization': 'Bearer $token'}),
    );
    if (response.statusCode != 200) {
      throw RestClientException(response.statusMessage ?? 'Upload failed', statusCode: response.statusCode);
    }
  }

  static FileUrls buildUrls({required String baseUrl, required String songId}) {
    return FileUrls(
      audioUrl: '$baseUrl/api/v1/files/download/audio/$songId',
      coverUrl: '$baseUrl/api/v1/files/download/cover/$songId',
    );
  }
}
