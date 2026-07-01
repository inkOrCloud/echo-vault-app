import 'package:flutter_test/flutter_test.dart';
import 'package:echo_vault_app/core/db/database.dart';

void main() {
  group('AppDatabase', () {
    test('database can be opened in memory', () async {
      final db = AppDatabase.inMemory();
      await db.initialize();
      expect(db.isOpen, true);
      await db.close();
      expect(db.isOpen, false);
    });
  });
}
