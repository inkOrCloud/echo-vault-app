import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:echo_vault_app/features/library/models/scanned_file.dart';
import 'package:echo_vault_app/features/publish/providers/publish_provider.dart';

class EditMetadataPage extends ConsumerStatefulWidget {
  final ScannedFile file;
  const EditMetadataPage({super.key, required this.file});
  @override
  ConsumerState<EditMetadataPage> createState() => _EditMetadataPageState();
}

class _EditMetadataPageState extends ConsumerState<EditMetadataPage> {
  late TextEditingController _titleCtl, _artistCtl, _albumCtl, _trackCtl, _yearCtl;
  bool _isPublishing = false;

  @override
  void initState() {
    super.initState();
    _titleCtl = TextEditingController(text: widget.file.guessedTitle ?? widget.file.fileName);
    _artistCtl = TextEditingController(text: widget.file.guessedArtist ?? '');
    _albumCtl = TextEditingController();
    _trackCtl = TextEditingController();
    _yearCtl = TextEditingController();
  }

  @override
  void dispose() {
    _titleCtl.dispose(); _artistCtl.dispose(); _albumCtl.dispose(); _trackCtl.dispose(); _yearCtl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('编辑元数据')),
      body: SingleChildScrollView(padding: const EdgeInsets.all(16), child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Text('文件: ${widget.file.fileName}', style: Theme.of(context).textTheme.bodySmall),
        const SizedBox(height: 8),
        Text('大小: ${_formatSize(widget.file.fileSize)}', style: Theme.of(context).textTheme.bodySmall),
        const SizedBox(height: 24),
        TextField(controller: _titleCtl, decoration: const InputDecoration(labelText: '歌曲标题 *', border: OutlineInputBorder())),
        const SizedBox(height: 16),
        TextField(controller: _artistCtl, decoration: const InputDecoration(labelText: '艺术家', border: OutlineInputBorder())),
        const SizedBox(height: 16),
        TextField(controller: _albumCtl, decoration: const InputDecoration(labelText: '专辑', border: OutlineInputBorder())),
        const SizedBox(height: 16),
        Row(children: [
          Expanded(child: TextField(controller: _trackCtl, decoration: const InputDecoration(labelText: '曲目号', border: OutlineInputBorder()), keyboardType: TextInputType.number)),
          const SizedBox(width: 16),
          Expanded(child: TextField(controller: _yearCtl, decoration: const InputDecoration(labelText: '年份', border: OutlineInputBorder()), keyboardType: TextInputType.number)),
        ]),
        const SizedBox(height: 32),
        FilledButton.icon(
          onPressed: _isPublishing ? null : _publish,
          icon: _isPublishing ? const SizedBox(width: 20, height: 20, child: CircularProgressIndicator(strokeWidth: 2)) : const Icon(Icons.cloud_upload),
          label: Text(_isPublishing ? '发布中...' : '发布到服务器'),
        ),
      ])),
    );
  }

  String _formatSize(int bytes) {
    if (bytes < 1024) return '$bytes B';
    if (bytes < 1024 * 1024) return '${(bytes / 1024).toStringAsFixed(1)} KB';
    return '${(bytes / (1024 * 1024)).toStringAsFixed(1)} MB';
  }

  Future<void> _publish() async {
    if (_titleCtl.text.trim().isEmpty) { ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('标题不能为空'))); return; }
    setState(() => _isPublishing = true);
    try {
      ref.read(publishProvider.notifier).markAsPublished(widget.file.fileHash);
      ref.read(publishProvider.notifier).setUploadProgress(current: 1, total: 1);
      if (mounted) { ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('发布成功'))); Navigator.pop(context); }
    } catch (e) {
      if (mounted) ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('发布失败: $e')));
    } finally {
      if (mounted) setState(() => _isPublishing = false);
    }
  }
}
