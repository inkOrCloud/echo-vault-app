import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:echo_vault_app/features/playlist/widgets/add_song_dialog.dart';
import 'package:echo_vault_app/features/playlist/providers/playlist_provider.dart';
import 'package:echo_vault_app/features/library/providers/library_provider.dart';
import 'package:echo_vault_app/models/generated/echo_vault/song/v1/song_service.pb.dart';

void main() {
  testWidgets('AddSongDialog shows search field and song list', (tester) async {
    await tester.pumpWidget(
      ProviderScope(
        child: MaterialApp(
          home: Scaffold(
            body: AddSongDialog(playlistId: 'p1'),
          ),
        ),
      ),
    );

    expect(find.text('添加歌曲'), findsOneWidget);
    expect(find.byType(TextField), findsOneWidget);
  });
}
