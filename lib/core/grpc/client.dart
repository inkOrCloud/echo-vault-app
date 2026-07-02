import 'package:grpc/grpc.dart';
import 'package:echo_vault_app/core/grpc/grpc_rpc_client.dart';

/// gRPC 服务路径前缀
const kSongServicePath = '/echo_vault.song.v1.SongService';

class GrpcClientManager {
  ClientChannel? _channel;
  DirectGrpcClient? _directClient;
  String? _accessToken;
  bool _connected = false;

  bool get isConnected => _connected;
  DirectGrpcClient? get directClient => _directClient;

  Map<String, String> get metadata {
    if (_accessToken != null && _accessToken!.isNotEmpty) {
      return {'authorization': 'Bearer $_accessToken'};
    }
    return {};
  }

  String get songServicePath => kSongServicePath;

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
    _directClient = DirectGrpcClient(_channel!, metadata: metadata);
    _connected = true;
  }

  void setToken(String token) {
    _accessToken = token;
    _directClient?.updateMetadata({'authorization': 'Bearer $token'});
  }

  void clearToken() {
    _accessToken = null;
    _directClient?.updateMetadata({});
  }

  Future<void> disconnect() async {
    if (_connected && _channel != null) {
      await _channel!.shutdown();
      _connected = false;
    }
  }
}
