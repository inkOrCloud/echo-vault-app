import 'package:grpc/grpc.dart';

class GrpcClientManager {
  ClientChannel? _channel;
  bool _connected = false;

  bool get isConnected => _connected;

  ClientChannel get channel {
    if (_channel == null) throw StateError('Not connected. Call connect() first.');
    return _channel!;
  }

  Future<void> connect({required String host, int grpcPort = 9090}) async {
    _channel = ClientChannel(host, port: grpcPort,
      options: const ChannelOptions(connectionTimeout: Duration(seconds: 10)));
    _connected = true;
  }

  Future<void> disconnect() async { if (_connected && _channel != null) { await _channel!.shutdown(); _connected = false; } }
}
