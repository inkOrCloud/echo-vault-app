import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:echo_vault_app/features/playlist/providers/playlist_provider.dart';
import 'package:echo_vault_app/models/generated/echo_vault/playlist/v1/playlist_service.pb.dart';

void main() {
  group('PlaylistListProvider', () {
    test('初始状态是 initial', () {
      final c = ProviderContainer();
      addTearDown(c.dispose);
      expect(c.read(playlistListProvider).status, PlaylistStatus.initial);
      expect(c.read(playlistListProvider).playlists, isEmpty);
    });

    test('setLoading 转换为 loading 状态', () {
      final c = ProviderContainer();
      addTearDown(c.dispose);
      c.read(playlistListProvider.notifier).setLoading();
      expect(c.read(playlistListProvider).status, PlaylistStatus.loading);
    });

    test('setPlaylists 转换为 loaded 状态', () {
      final c = ProviderContainer();
      addTearDown(c.dispose);
      final playlist = Playlist()
        ..id = '1'
        ..name = '测试歌单'
        ..songCount = 5;
      c.read(playlistListProvider.notifier).setPlaylists([playlist]);
      expect(c.read(playlistListProvider).status, PlaylistStatus.loaded);
      expect(c.read(playlistListProvider).playlists.length, 1);
      expect(c.read(playlistListProvider).playlists.first.name, '测试歌单');
    });

    test('setError 转换为 error 状态', () {
      final c = ProviderContainer();
      addTearDown(c.dispose);
      c.read(playlistListProvider.notifier).setError('网络错误');
      expect(c.read(playlistListProvider).status, PlaylistStatus.error);
      expect(c.read(playlistListProvider).error, '网络错误');
    });

    test('addPlaylist 添加歌单到列表', () {
      final c = ProviderContainer();
      addTearDown(c.dispose);
      final notifier = c.read(playlistListProvider.notifier);
      
      // 先设置为 loaded 状态
      notifier.setPlaylists([]);
      
      // 添加歌单
      final playlist = Playlist()
        ..id = '1'
        ..name = '新歌单';
      notifier.addPlaylist(playlist);
      
      expect(c.read(playlistListProvider).playlists.length, 1);
      expect(c.read(playlistListProvider).playlists.first.id, '1');
    });

    test('removePlaylist 从列表中移除歌单', () {
      final c = ProviderContainer();
      addTearDown(c.dispose);
      final notifier = c.read(playlistListProvider.notifier);
      
      // 先添加两个歌单
      notifier.setPlaylists([
        Playlist()..id = '1'..name = '歌单1',
        Playlist()..id = '2'..name = '歌单2',
      ]);
      
      // 移除第一个
      notifier.removePlaylist('1');
      
      expect(c.read(playlistListProvider).playlists.length, 1);
      expect(c.read(playlistListProvider).playlists.first.id, '2');
    });

    test('updatePlaylist 更新歌单信息', () {
      final c = ProviderContainer();
      addTearDown(c.dispose);
      final notifier = c.read(playlistListProvider.notifier);
      
      // 先添加歌单
      notifier.setPlaylists([
        Playlist()..id = '1'..name = '原名',
      ]);
      
      // 更新歌单
      final updated = Playlist()
        ..id = '1'
        ..name = '新名';
      notifier.updatePlaylist(updated);
      
      expect(c.read(playlistListProvider).playlists.first.name, '新名');
    });

    test('多个操作后状态保持正确', () {
      final c = ProviderContainer();
      addTearDown(c.dispose);
      final notifier = c.read(playlistListProvider.notifier);
      
      // 添加多个歌单
      notifier.setPlaylists([]);
      notifier.addPlaylist(Playlist()..id = '1'..name = '歌单1');
      notifier.addPlaylist(Playlist()..id = '2'..name = '歌单2');
      notifier.addPlaylist(Playlist()..id = '3'..name = '歌单3');
      
      expect(c.read(playlistListProvider).playlists.length, 3);
      
      // 移除中间一个
      notifier.removePlaylist('2');
      
      expect(c.read(playlistListProvider).playlists.length, 2);
      expect(c.read(playlistListProvider).playlists[0].id, '1');
      expect(c.read(playlistListProvider).playlists[1].id, '3');
    });
  });
}
