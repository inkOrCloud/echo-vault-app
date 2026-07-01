import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:echo_vault_app/core/config/server_config.dart';

void main() {
  group('ServerConfig', () {
    test('default config returns empty host', () async {
      SharedPreferences.setMockInitialValues({});
      final config = await ServerConfig.getConfig();
      expect(config.host, '');
    });

    test('save and get config', () async {
      SharedPreferences.setMockInitialValues({});
      await ServerConfig.save(host: '192.168.1.100', grpcPort: 9090, restPort: 9091);

      final config = await ServerConfig.getConfig();
      expect(config.host, '192.168.1.100');
      expect(config.grpcPort, 9090);
      expect(config.restPort, 9091);
    });

    test('isConfigured returns false when empty', () async {
      SharedPreferences.setMockInitialValues({});
      final configured = await ServerConfig.isConfigured();
      expect(configured, false);
    });

    test('isConfigured returns true after save', () async {
      SharedPreferences.setMockInitialValues({});
      await ServerConfig.save(host: 'localhost');
      final configured = await ServerConfig.isConfigured();
      expect(configured, true);
    });
  });
}
