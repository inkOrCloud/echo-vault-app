import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:grpc/grpc.dart' as grpc;
import 'package:grpc/grpc_web.dart' as grpc_web;

class GrpcClientManager {
  late final grpc.ClientChannelBase _channel;
  String? _accessToken;

  Future<void> connect({
    required String host,
    int grpcPort = 9090,
    int webPort = 8080,
  }) async {
    if (kIsWeb) {
      _channel = grpc_web.GrpcWebClientChannel(
        Uri.parse('http://$host:$webPort'),
      );
    } else {
      _channel = grpc.ClientChannel(
        host,
        port: grpcPort,
        options: const grpc.ChannelOptions(
          connectionTimeout: Duration(seconds: 10),
        ),
      );
    }
  }

  Map<String, String> get metadata {
    if (_accessToken != null && _accessToken!.isNotEmpty) {
      return {'authorization': 'Bearer $_accessToken'};
    }
    return {};
  }

  void setToken(String token) => _accessToken = token;
  void clearToken() => _accessToken = null;
  Future<void> disconnect() async => _channel.shutdown();
  grpc.ClientChannelBase get channel => _channel;
}
