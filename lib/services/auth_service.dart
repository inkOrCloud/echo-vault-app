import 'package:echo_vault_app/core/config/server_config.dart';
import 'package:echo_vault_app/core/grpc/client.dart';
import 'package:echo_vault_app/models/generated/echo_vault/user/v1/user_service.pbgrpc.dart';

/// 认证服务，负责用户登录和注册
class AuthService {
  final GrpcClientManager _grpcManager;
  UserServiceClient? _userClient;

  AuthService(this._grpcManager);

  /// 获取或创建UserServiceClient
  UserServiceClient get userClient {
    _userClient ??= UserServiceClient(_grpcManager.channel);
    return _userClient!;
  }

  /// 用户登录
  Future<({String userId, String username, String token})> login({
    required String username,
    required String password,
    String? deviceId,
  }) async {
    final config = await ServerConfig.getConfig();
    if (config.host.isEmpty) {
      throw Exception('Server not configured');
    }

    try {
      final request = LoginRequest(
        username: username,
        password: password,
        deviceId: deviceId ?? 'flutter-client',
      );

      final response = await userClient.login(request);
      
      // 设置token到gRPC管理器
      _grpcManager.setToken(response.accessToken);
      
      return (
        userId: response.user.id,
        username: response.user.username,
        token: response.accessToken,
      );
    } catch (e) {
      throw Exception('Login failed: $e');
    }
  }

  /// 用户注册
  Future<({String userId, String username, String token})> register({
    required String username,
    required String password,
    required String displayName,
  }) async {
    final config = await ServerConfig.getConfig();
    if (config.host.isEmpty) {
      throw Exception('Server not configured');
    }

    try {
      final request = RegisterRequest(
        username: username,
        password: password,
        displayName: displayName,
      );

      final response = await userClient.register(request);
      
      // 设置token到gRPC管理器
      _grpcManager.setToken(response.accessToken);
      
      return (
        userId: response.user.id,
        username: response.user.username,
        token: response.accessToken,
      );
    } catch (e) {
      throw Exception('Registration failed: $e');
    }
  }

  /// 登出
  void logout() {
    _grpcManager.clearToken();
    _userClient = null;
  }
}
