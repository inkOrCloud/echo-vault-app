import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:echo_vault_app/features/library/widgets/song_list_tile.dart';
import 'package:echo_vault_app/models/generated/echo_vault/song/v1/song_service.pb.dart';
import 'package:echo_vault_app/models/generated/echo_vault/common/v1/types.pbenum.dart';

void main() {
  testWidgets('displays song info', (tester) async {
    await tester.pumpWidget(MaterialApp(home: Scaffold(body: SongListTile(
      song: Song(id: '1', title: 'Bohemian Rhapsody', artist: 'Queen', album: 'A Night at the Opera', durationMs: 354000, fileStatus: FileStatus.FILE_STATUS_UPLOADED),
    ))));
    expect(find.text('Bohemian Rhapsody'), findsOneWidget);
    expect(find.textContaining('Queen'), findsOneWidget);
    expect(find.textContaining('A Night at the Opera'), findsOneWidget);
  });
  testWidgets('formats duration correctly', (tester) async {
    await tester.pumpWidget(MaterialApp(home: Scaffold(body: SongListTile(
      song: Song(id: '1', title: 'T', durationMs: 245000, fileStatus: FileStatus.FILE_STATUS_UPLOADED),
    ))));
    expect(find.text('4:05'), findsOneWidget);
  });
}
