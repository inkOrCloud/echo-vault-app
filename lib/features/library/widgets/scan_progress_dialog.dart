import 'package:flutter/material.dart';

class ScanProgressDialog extends StatelessWidget {
  final int foundCount;
  final String? currentDirectory;
  const ScanProgressDialog({super.key, required this.foundCount, this.currentDirectory});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('扫描本地音乐'),
      content: Column(mainAxisSize: MainAxisSize.min, children: [
        const CircularProgressIndicator(),
        const SizedBox(height: 24),
        Text('已找到 $foundCount 个音频文件'),
        if (currentDirectory != null && currentDirectory!.isNotEmpty) ...[
          const SizedBox(height: 8),
          Text(currentDirectory!, style: Theme.of(context).textTheme.bodySmall, maxLines: 2, overflow: TextOverflow.ellipsis),
        ],
      ]),
    );
  }
}
