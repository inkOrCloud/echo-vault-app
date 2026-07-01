import 'package:grpc/grpc.dart';

class GrpcClientManager {
  late final ClientChannel _channel;
  String? _accessToken;

  Future<void> connect({
    required String host,
    int grpcPort = 9090,
  }) async {
    _channel = ClientChannel(
      host,
      port: grpcPort,
      options: const ChannelOptions(
        connectionTimeout: Duration(seconds: 10),
      ),
    );
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
  ClientChannel get channel => _channel;
}
