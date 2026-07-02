import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:echo_vault_app/features/publish/providers/publish_provider.dart';
import 'package:echo_vault_app/features/library/providers/scanner_provider.dart';
import 'package:echo_vault_app/features/library/models/scanned_file.dart';

class ScanResultPage extends ConsumerWidget {
  const ScanResultPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final publishState = ref.watch(publishProvider);
    final scannerState = ref.watch(scannerProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('扫描结果')),
      body: _buildBody(context, ref, publishState, scannerState),
    );
  }

  Widget _buildBody(BuildContext context, WidgetRef ref, PublishState publishState, ScannerState scannerState) {
    if (publishState.status == PublishStatus.idle) {
      if (scannerState.status == ScannerStatus.completed) {
        return Center(child: Column(mainAxisSize: MainAxisSize.min, children: [
          Icon(Icons.check_circle, size: 64, color: Colors.green), const SizedBox(height: 16),
          Text('扫描完成：找到 ${scannerState.scannedFiles.length} 个音频文件'), const SizedBox(height: 24),
          ElevatedButton(onPressed: () => _compare(context, ref, scannerState.scannedFiles), child: const Text('与云端比对')),
        ]));
      }
      return const Center(child: Text('无扫描结果'));
    }

    return ListView(padding: const EdgeInsets.all(16), children: [
      if (publishState.newFiles.isNotEmpty) ...[
        Text('待发布 (${publishState.newFiles.length})', style: Theme.of(context).textTheme.titleMedium),
        const SizedBox(height: 8),
        ...publishState.newFiles.map((f) => Card(child: ListTile(
          leading: const Icon(Icons.audiotrack),
          title: Text(f.guessedTitle ?? f.fileName), subtitle: Text(f.path),
          trailing: ElevatedButton(onPressed: () => Navigator.pushNamed(context, '/publish/edit', arguments: f), child: const Text('编辑发布')),
        ))),
      ],
      if (publishState.knownFiles.isNotEmpty) ...[
        const SizedBox(height: 16),
        Text('已在云端 (${publishState.knownFiles.length})', style: Theme.of(context).textTheme.titleMedium),
        ...publishState.knownFiles.map((f) => ListTile(leading: const Icon(Icons.cloud_done, color: Colors.blue), title: Text(f.guessedTitle ?? f.fileName))),
      ],
    ]);
  }

  void _compare(BuildContext context, WidgetRef ref, List<ScannedFile> files) {
    ref.read(publishProvider.notifier).setComparisonResults(newFiles: files, knownHashes: {});
  }
}
