import 'dart:async';
import 'package:grpc/grpc.dart';

/// 使用 grpc-dart 的 ClientChannel 直接进行 gRPC 调用。
class DirectGrpcClient {
  final ClientChannel _channel;
  Map<String, String> _metadata;

  DirectGrpcClient(this._channel, {Map<String, String>? metadata})
      : _metadata = metadata ?? const {};

  /// 执行一个 Unary gRPC 调用，发送并接收原始字节。
  Future<List<int>> unaryCallRaw({
    required String servicePath,
    required String methodName,
    required List<int> requestBytes,
  }) async {
    final path = '$servicePath/$methodName';
    final method = ClientMethod<List<int>, List<int>>(
      path,
      (msg) => msg,
      (bytes) => bytes,
    );
    final options = CallOptions(metadata: Map<String, String>.from(_metadata));
    final call = _channel.createCall(method, Stream.value(requestBytes), options);
    try {
      return await call.response.first;
    } catch (e) {
      if (e is GrpcError) rethrow;
      rethrow;
    }
  }

  void updateMetadata(Map<String, String> metadata) {
    _metadata = Map<String, String>.from(metadata);
  }
}
