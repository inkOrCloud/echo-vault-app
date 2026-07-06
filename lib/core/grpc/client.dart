import 'package:grpc/grpc.dart';

/// gRPC客户端管理器，负责连接管理和认证token管理
class GrpcClientManager {
  ClientChannel? _channel;
  bool _connected = false;
  String? _token;

  bool get isConnected => _connected;

  ClientChannel get channel {
    if (_channel == null) throw StateError('Not connected. Call connect() first.');
    return _channel!;
  }

  /// 连接到gRPC服务器
  Future<void> connect({required String host, int grpcPort = 9090}) async {
    _channel = ClientChannel(
      host,
      port: grpcPort,
      options: const ChannelOptions(connectionTimeout: Duration(seconds: 10)),
    );
    _connected = true;
  }

  /// 设置认证token
  void setToken(String t) {
    _token = t;
  }

  /// 清除认证token
  void clearToken() {
    _token = null;
  }

  /// 获取当前token（供拦截器使用）
  String? get token => _token;

  /// 创建带认证的CallOptions
  CallOptions createCallOptions() {
    final token = _token;
    if (token != null && token.isNotEmpty) {
      return CallOptions(metadata: {'authorization': 'Bearer $token'});
    }
    return CallOptions();
  }

  /// 断开连接
  Future<void> disconnect() async {
    if (_connected && _channel != null) {
      await _channel!.shutdown();
      _connected = false;
    }
  }
}
