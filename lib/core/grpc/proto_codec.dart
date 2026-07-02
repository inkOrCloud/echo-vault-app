import 'dart:math';
import 'dart:typed_data';
import 'package:echo_vault_app/models/generated/echo_vault/song/v1/song_service.pb.dart';
import 'package:echo_vault_app/models/generated/echo_vault/common/v1/types.pb.dart';

/// Minimal protobuf wire-format codec for SongService messages.
///
/// Only implements the fields used by our messages:
///   WireType.varint (0): int32, int64, bool, enum
///   WireType.lengthDelimited (2): string, bytes, embedded messages
class ProtoCodec {
  /// 编码 Song 为 protobuf binary
  static List<int> encodeSong(Song s) {
    final buf = <int>[];
    _writeString(buf, 1, s.id);
    _writeString(buf, 2, s.title);
    _writeString(buf, 3, s.artist);
    _writeString(buf, 4, s.album);
    _writeString(buf, 5, s.genre);
    _writeInt32(buf, 6, s.trackNumber);
    _writeInt32(buf, 7, s.discNumber);
    _writeInt32(buf, 8, s.durationMs);
    _writeInt32(buf, 9, s.year);
    _writeString(buf, 10, s.fileName);
    _writeInt64(buf, 11, s.fileSize);
    _writeString(buf, 12, s.fileHash);
    _writeString(buf, 13, s.mimeType);
    _writeInt32(buf, 14, s.bitrate);
    _writeInt32(buf, 15, s.sampleRate);
    _writeEnum(buf, 16, s.source.value);
    _writeEnum(buf, 17, s.fileStatus.value);
    _writeString(buf, 18, s.ownerId);
    _writeInt64(buf, 19, s.version);
    _writeBool(buf, 20, s.isDeleted);
    _writeInt64(buf, 21, s.createdAt);
    _writeInt64(buf, 22, s.updatedAt);
    _writeString(buf, 23, s.coverUrl);
    _writeString(buf, 24, s.audioUrl);
    return buf;
  }

  /// 解码 protobuf binary 为 Song
  static Song decodeSong(List<int> data) {
    final s = Song();
    int pos = 0;
    while (pos < data.length) {
      final tag = _readVarint(data, pos);
      pos += _varintSize(data, pos);
      final fieldNum = tag >> 3;
      final wireType = tag & 7;
      switch (fieldNum) {
        case 1:  s.id = _readString(data, pos); pos += _lengthDelimSize(data, pos); break;
        case 2:  s.title = _readString(data, pos); pos += _lengthDelimSize(data, pos); break;
        case 3:  s.artist = _readString(data, pos); pos += _lengthDelimSize(data, pos); break;
        case 4:  s.album = _readString(data, pos); pos += _lengthDelimSize(data, pos); break;
        case 5:  s.genre = _readString(data, pos); pos += _lengthDelimSize(data, pos); break;
        case 6:  s.trackNumber = _readVarint(data, pos).toInt(); pos += _varintSize(data, pos); break;
        case 7:  s.discNumber = _readVarint(data, pos).toInt(); pos += _varintSize(data, pos); break;
        case 8:  s.durationMs = _readVarint(data, pos).toInt(); pos += _varintSize(data, pos); break;
        case 9:  s.year = _readVarint(data, pos).toInt(); pos += _varintSize(data, pos); break;
        case 10: s.fileName = _readString(data, pos); pos += _lengthDelimSize(data, pos); break;
        case 11: s.fileSize = _readVarint(data, pos); pos += _varintSize(data, pos); break;
        case 12: s.fileHash = _readString(data, pos); pos += _lengthDelimSize(data, pos); break;
        case 13: s.mimeType = _readString(data, pos); pos += _lengthDelimSize(data, pos); break;
        case 14: s.bitrate = _readVarint(data, pos).toInt(); pos += _varintSize(data, pos); break;
        case 15: s.sampleRate = _readVarint(data, pos).toInt(); pos += _varintSize(data, pos); break;
        case 17: s.fileStatus = FileStatus.values.firstWhere((e) => e.value == _readVarint(data, pos).toInt(), orElse: () => FileStatus.fileStatusUnspecified); pos += _varintSize(data, pos); break;
        case 18: s.ownerId = _readString(data, pos); pos += _lengthDelimSize(data, pos); break;
        case 19: s.version = _readVarint(data, pos); pos += _varintSize(data, pos); break;
        case 20: s.isDeleted = _readVarint(data, pos) != 0; pos += _varintSize(data, pos); break;
        case 21: s.createdAt = _readVarint(data, pos); pos += _varintSize(data, pos); break;
        case 22: s.updatedAt = _readVarint(data, pos); pos += _varintSize(data, pos); break;
        case 23: s.coverUrl = _readString(data, pos); pos += _lengthDelimSize(data, pos); break;
        case 24: s.audioUrl = _readString(data, pos); pos += _lengthDelimSize(data, pos); break;
        default: pos = _skipField(data, pos, wireType);
      }
    }
    return s;
  }

  static List<int> encodeCheckSongsByHashRequest(CheckSongsByHashRequest req) {
    final buf = <int>[];
    _writeString(buf, 1, req.deviceId);
    for (final h in req.fileHashes) {
      final inner = <int>[];
      _writeString(inner, 1, h);
      _writeBytes(buf, 2, inner);
    }
    return buf;
  }

  static List<int> encodeCheckSongsByHashResponse(CheckSongsByHashResponse resp) {
    final buf = <int>[];
    for (final r in resp.results) {
      final inner = <int>[];
      _writeString(inner, 1, r.fileHash);
      _writeBool(inner, 2, r.exists);
      if (r.song != null) _writeBytes(inner, 3, encodeSong(r.song!));
      _writeBytes(buf, 1, inner);
    }
    return buf;
  }

  static CheckSongsByHashResponse decodeCheckSongsByHashResponse(List<int> data) {
    final resp = CheckSongsByHashResponse();
    int pos = 0;
    while (pos < data.length) {
      final tag = _readVarint(data, pos);
      pos += _varintSize(data, pos);
      final fn = tag >> 3;
      if (fn == 1) {
        final inner = _readBytes(data, pos);
        pos += _lengthDelimSize(data, pos);
        int ip = 0;
        final r = CheckSongsByHashResponse_Result();
        while (ip < inner.length) {
          final itag = _readVarint(inner, ip);
          ip += _varintSize(inner, ip);
          final ifn = itag >> 3;
          if (ifn == 1) { r.fileHash = _readString(inner, ip); ip += _lengthDelimSize(inner, ip); }
          else if (ifn == 2) { r.exists = _readVarint(inner, ip) != 0; ip += _varintSize(inner, ip); }
          else if (ifn == 3) { r.song = decodeSong(_readBytes(inner, ip)); ip += _lengthDelimSize(inner, ip); }
          else ip = _skipField(inner, ip, itag & 7);
        }
        resp.results.add(r);
      } else {
        pos = _skipField(data, pos, tag & 7);
      }
    }
    return resp;
  }

  static List<int> encodePublishSongRequest(PublishSongRequest req) {
    final buf = <int>[];
    _writeString(buf, 1, req.fileHash);
    _writeString(buf, 2, req.title);
    _writeString(buf, 3, req.artist);
    _writeString(buf, 4, req.album);
    _writeString(buf, 5, req.genre);
    _writeInt32(buf, 6, req.trackNumber);
    _writeInt32(buf, 7, req.discNumber);
    _writeInt32(buf, 8, req.year);
    _writeString(buf, 9, req.fileName);
    _writeInt64(buf, 10, req.fileSize);
    _writeString(buf, 11, req.mimeType);
    return buf;
  }

  static PublishSongResponse decodePublishSongResponse(List<int> data) => PublishSongResponse(song: decodeSong(data));

  static List<int> encodeSearchSongsRequest(String query, int pageSize) {
    final buf = <int>[];
    _writeString(buf, 1, query);
    final pageInner = <int>[];
    _writeInt32(pageInner, 1, pageSize);
    _writeBytes(buf, 2, pageInner);
    return buf;
  }

  static List<Song> decodeRepeatedSongs(List<int> data) {
    final songs = <Song>[];
    int pos = 0;
    while (pos < data.length) {
      final tag = _readVarint(data, pos);
      pos += _varintSize(data, pos);
      if ((tag >> 3) == 1) {
        songs.add(decodeSong(_readBytes(data, pos)));
        pos += _lengthDelimSize(data, pos);
      } else {
        pos = _skipField(data, pos, tag & 7);
      }
    }
    return songs;
  }

  // === Low-level protobuf wire format ===

  static void _writeTag(List<int> buf, int fieldNum, int wireType) => _writeVarint(buf, (fieldNum << 3) | wireType);
  static void _writeVarint(List<int> buf, int value) { while (value >= 0x80) { buf.add((value & 0x7F) | 0x80); value >>= 7; } buf.add(value & 0x7F); }
  static void _writeInt32(List<int> buf, int fn, int v) { _writeTag(buf, fn, 0); _writeVarint(buf, v); }
  static void _writeInt64(List<int> buf, int fn, int v) { _writeTag(buf, fn, 0); _writeVarint(buf, v); }
  static void _writeBool(List<int> buf, int fn, bool v) { _writeTag(buf, fn, 0); _writeVarint(buf, v ? 1 : 0); }
  static void _writeEnum(List<int> buf, int fn, int v) { _writeTag(buf, fn, 0); _writeVarint(buf, v); }
  static void _writeString(List<int> buf, int fn, String v) { final bytes = _utf8Encode(v); _writeTag(buf, fn, 2); _writeVarint(buf, bytes.length); buf.addAll(bytes); }
  static void _writeBytes(List<int> buf, int fn, List<int> v) { _writeTag(buf, fn, 2); _writeVarint(buf, v.length); buf.addAll(v); }

  static int _readVarint(List<int> buf, int pos) { int v = 0, shift = 0; while (true) { final b = buf[pos++]; v |= (b & 0x7F) << shift; if ((b & 0x80) == 0) return v; shift += 7; } }
  static int _varintSize(List<int> data, int pos) { int s = 0; while ((data[pos + s] & 0x80) != 0) s++; return s + 1; }
  static String _readString(List<int> data, int pos) { final len = _readVarint(data, pos); final start = pos + _varintSize(data, pos); return _utf8Decode(data.sublist(start, start + len)); }
  static List<int> _readBytes(List<int> data, int pos) { final len = _readVarint(data, pos); final start = pos + _varintSize(data, pos); return data.sublist(start, start + len); }
  static int _lengthDelimSize(List<int> data, int pos) { final len = _readVarint(data, pos); return _varintSize(data, pos) + len; }
  static int _skipField(List<int> data, int pos, int wireType) { if (wireType == 0) return pos + _varintSize(data, pos); if (wireType == 2) return pos + _lengthDelimSize(data, pos); if (wireType == 1) return pos + 8; if (wireType == 5) return pos + 4; return pos; }

  static List<int> _utf8Encode(String s) => s.codeUnits.map((c) => c < 128 ? c : 0xEF).toList();
  static String _utf8Decode(List<int> b) => String.fromCharCodes(b.map((c) => c < 128 ? c : 0x20));
}
