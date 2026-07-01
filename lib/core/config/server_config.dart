import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:shared_preferences/shared_preferences.dart';

class ServerConfig {
  static const _keyGrpcUrl = 'grpc_url';
  static const _keyRestUrl = 'rest_url';

  static int get defaultGrpcPort => kIsWeb ? 8080 : 9090;
  static int get defaultRestPort => kIsWeb ? 8080 : 9091;

  // ignore: non_constant_identifier_names
  static Future<({String host, int grpcPort, int restPort})> getConfig() async {
    final prefs = await SharedPreferences.getInstance();
    final grpcUrl = prefs.getString(_keyGrpcUrl) ?? '';
    final restUrl = prefs.getString(_keyRestUrl) ?? '';

    if (grpcUrl.isEmpty && restUrl.isEmpty) {
      return (host: '', grpcPort: defaultGrpcPort, restPort: defaultRestPort);
    }

    final grpcUri = Uri.parse(grpcUrl);
    final restUri = restUrl.isNotEmpty ? Uri.parse(restUrl) : grpcUri;

    return (
      host: grpcUri.host,
      grpcPort: grpcUri.port > 0 ? grpcUri.port : defaultGrpcPort,
      restPort: restUri.port > 0 ? restUri.port : defaultRestPort,
    );
  }

  static Future<void> save({
    required String host,
    int grpcPort = 9090,
    int restPort = 9091,
  }) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_keyGrpcUrl, 'http://$host:$grpcPort');
    await prefs.setString(_keyRestUrl, 'http://$host:$restPort');
  }

  static Future<bool> isConfigured() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.containsKey(_keyGrpcUrl);
  }
}
