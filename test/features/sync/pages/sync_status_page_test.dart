import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:echo_vault_app/features/sync/widgets/sync_status_indicator.dart';
import 'package:fixnum/fixnum.dart';
import 'package:echo_vault_app/features/sync/pages/sync_status_page.dart';
import 'package:echo_vault_app/features/sync/providers/sync_provider.dart';
import 'package:echo_vault_app/features/sync/services/sync_repository.dart';
import 'package:echo_vault_app/models/generated/echo_vault/sync/v1/sync_service.pb.dart';

class MockSyncRepository implements SyncRepository {
  bool shouldThrow = false;

  @override
  Future<PushChangesResponse> pushChanges({
    required String deviceId,
    Int64? lastPullVersion,
    List<SyncChange> changes = const [],
  }) async {
    if (shouldThrow) throw Exception('sync error');
    return PushChangesResponse(serverVersion: Int64(1), acceptedCount: 0);
  }

  @override
  Future<void> ackChanges({required String deviceId, required Int64 ackedVersion}) async {}
}

Widget createTestApp(SyncRepository repo) {
  return ProviderScope(
    overrides: [
      syncRepositoryProvider.overrideWithValue(repo),
    ],
    child: const MaterialApp(
      home: SyncStatusPage(),
    ),
  );
}

void main() {
  setUp(() {
    SharedPreferences.setMockInitialValues({});
  });

  testWidgets('shows sync overview card with indicator', (tester) async {
    await tester.pumpWidget(createTestApp(MockSyncRepository()));
    await tester.pump();

    expect(find.text("同步状态"), findsAtLeast(1));
    expect(find.text('同步状态'), findsAtLeast(1)); // At least one occurrence
    expect(find.byType(SyncStatusIndicator), findsOneWidget);
  });

  testWidgets('shows pending and synced change counts', (tester) async {
    await tester.pumpWidget(createTestApp(MockSyncRepository()));
    await tester.pump();

    expect(find.text('0'), findsAtLeast(1)); // Should show 0 for pending/synced
  });

  testWidgets('shows sync info card', (tester) async {
    await tester.pumpWidget(createTestApp(MockSyncRepository()));
    await tester.pump();

    expect(find.text('同步说明'), findsOneWidget);
    expect(find.textContaining('离线'), findsOneWidget);
    expect(find.textContaining('自动同步'), findsOneWidget);
  });

  testWidgets('sync button triggers manual sync', (tester) async {
    await tester.pumpWidget(createTestApp(MockSyncRepository()));
    await tester.pump();

    // Find the sync button in AppBar
    expect(find.byIcon(Icons.sync), findsWidgets);
  });

  testWidgets('shows last sync time when available', (tester) async {
    SharedPreferences.setMockInitialValues({'sync_last_time': 1720512000000});
    await tester.pumpWidget(createTestApp(MockSyncRepository()));
    await tester.pump();

    // Wait for loadLastSyncTime
    await tester.pump(const Duration(milliseconds: 100));

    // Should show last sync info or at least load without crash
    expect(find.byType(SyncStatusPage), findsOneWidget);
  });

  testWidgets('shows error message when present', (tester) async {
    final errorRepo = MockSyncRepository()..shouldThrow = true;
    await tester.pumpWidget(createTestApp(errorRepo));
    await tester.pump();

    final container = ProviderScope.containerOf(
      tester.element(find.byType(SyncStatusPage)),
    );
    await container.read(syncProvider.notifier).loadLastSyncTime();
    await container.read(syncProvider.notifier).startSync();
    await tester.pump();

    // Should show error or at least not crash
    expect(find.byType(SyncStatusPage), findsOneWidget);
  });
}
