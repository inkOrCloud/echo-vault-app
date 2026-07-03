import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:echo_vault_app/features/player/providers/player_provider.dart';

class PlayerPage extends ConsumerWidget {
  const PlayerPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 封面占位符
            const Icon(Icons.album, size: 200),
            const SizedBox(height: 24),
            const Text(
              "歌曲标题",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const Text("歌手"),
            const SizedBox(height: 24),
            // 进度条
            StreamBuilder<Duration>(
              stream: ref.read(audioServiceProvider).positionStream,
              builder: (context, snapshot) {
                return Slider(
                  value: (snapshot.data?.inSeconds.toDouble() ?? 0),
                  max: 100,
                  onChanged: (v) {},
                );
              },
            ),
            // 播放控制
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: const Icon(Icons.skip_previous),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.play_circle_fill, size: 64),
                  onPressed: () => ref.read(audioServiceProvider).play(),
                ),
                IconButton(
                  icon: const Icon(Icons.skip_next),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
