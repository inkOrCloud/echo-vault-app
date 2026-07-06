import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:echo_vault_app/features/library/providers/library_provider.dart';
import 'package:echo_vault_app/features/library/widgets/song_list_tile.dart';

class LibraryPage extends ConsumerWidget {
  const LibraryPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(libraryProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('我的曲库')),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
          child: TextField(
            decoration: InputDecoration(hintText: '搜索歌曲、艺术家、专辑...', prefixIcon: const Icon(Icons.search),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)), contentPadding: const EdgeInsets.symmetric(vertical: 0)),
            onChanged: (v) => ref.read(libraryProvider.notifier).setQuery(v),
          ),
        ),
        Expanded(child: _buildBody(context, state)),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, '/scan'),
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildBody(BuildContext context, LibraryState state) {
    switch (state.status) {
      case LibraryStatus.loading: return const Center(child: CircularProgressIndicator());
      case LibraryStatus.error: return Center(child: Column(mainAxisSize: MainAxisSize.min, children: [
        Icon(Icons.error_outline, size: 48, color: Theme.of(context).colorScheme.error), const SizedBox(height: 16), Text('加载失败: ${state.error}'),
      ]));
      case LibraryStatus.loaded:
        final songs = state.filteredSongs;
        if (songs.isEmpty) {
          return Center(child: Column(mainAxisSize: MainAxisSize.min, children: [
          Icon(Icons.library_music, size: 64, color: Theme.of(context).colorScheme.outline), const SizedBox(height: 16),
          Text(state.searchQuery.isEmpty ? '曲库为空，点击右下角 + 添加歌曲' : '未找到匹配的歌曲'),
        ]));
        }
        return RefreshIndicator(onRefresh: () async {}, child: ListView.separated(
          itemCount: songs.length, separatorBuilder: (_, __) => const Divider(height: 1),
          itemBuilder: (_, i) => SongListTile(song: songs[i], onTap: () {}),
        ));
    }
  }
}
