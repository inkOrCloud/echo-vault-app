import 'package:echo_vault_app/core/config/server_config.dart';

class AuthService {
  AuthService();

  Future<({String userId, String username, String token})> login({
    required String username,
    required String password,
  }) async {
    final config = await ServerConfig.getConfig();
    if (config.host.isEmpty) {
      throw Exception('Server not configured');
    }
    return (userId: '', username: '', token: '');
  }

  Future<({String userId, String username, String token})> register({
    required String username,
    required String password,
    required String displayName,
  }) async {
    final config = await ServerConfig.getConfig();
    if (config.host.isEmpty) {
      throw Exception('Server not configured');
    }
    return (userId: '', username: '', token: '');
  }
}
