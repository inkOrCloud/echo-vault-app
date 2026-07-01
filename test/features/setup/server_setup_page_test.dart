import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:echo_vault_app/features/setup/server_setup_page.dart';

void main() {
  testWidgets('setup page has server address field', (tester) async {
    await tester.pumpWidget(
      const ProviderScope(child: MaterialApp(home: ServerSetupPage())),
    );
    expect(find.byType(TextField), findsAtLeast(1));
    expect(find.text('连接服务器'), findsOneWidget);
  });
}
