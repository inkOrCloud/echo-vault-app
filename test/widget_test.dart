import 'package:flutter_test/flutter_test.dart';
import 'package:echo_vault_app/main.dart';

void main() {
  testWidgets('app starts without errors', (tester) async {
    await tester.pumpWidget(const EchoVaultApp());
    expect(find.byType(EchoVaultApp), findsOneWidget);
  });
}
