///
//  Generated code. Do not modify.
//  source: echo_vault/song/v1/song_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'package:protobuf/protobuf.dart' as $pb;

import 'dart:core' as $core;
import 'song_service.pb.dart' as $2;
import 'song_service.pbjson.dart';

export 'song_service.pb.dart';

abstract class SongServiceBase extends $pb.GeneratedService {
  $async.Future<$2.CheckSongsByHashResponse> checkSongsByHash($pb.ServerContext ctx, $2.CheckSongsByHashRequest request);
  $async.Future<$2.PublishSongResponse> publishSong($pb.ServerContext ctx, $2.PublishSongRequest request);
  $async.Future<$2.UpdateSongResponse> updateSong($pb.ServerContext ctx, $2.UpdateSongRequest request);
  $async.Future<$2.DeleteSongResponse> deleteSong($pb.ServerContext ctx, $2.DeleteSongRequest request);
  $async.Future<$2.GetSongResponse> getSong($pb.ServerContext ctx, $2.GetSongRequest request);
  $async.Future<$2.ListSongsResponse> listSongs($pb.ServerContext ctx, $2.ListSongsRequest request);
  $async.Future<$2.SearchSongsResponse> searchSongs($pb.ServerContext ctx, $2.SearchSongsRequest request);
  $async.Future<$2.ListDeviceLocalSongsResponse> listDeviceLocalSongs($pb.ServerContext ctx, $2.ListDeviceLocalSongsRequest request);

  $pb.GeneratedMessage createRequest($core.String method) {
    switch (method) {
      case 'CheckSongsByHash': return $2.CheckSongsByHashRequest();
      case 'PublishSong': return $2.PublishSongRequest();
      case 'UpdateSong': return $2.UpdateSongRequest();
      case 'DeleteSong': return $2.DeleteSongRequest();
      case 'GetSong': return $2.GetSongRequest();
      case 'ListSongs': return $2.ListSongsRequest();
      case 'SearchSongs': return $2.SearchSongsRequest();
      case 'ListDeviceLocalSongs': return $2.ListDeviceLocalSongsRequest();
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String method, $pb.GeneratedMessage request) {
    switch (method) {
      case 'CheckSongsByHash': return this.checkSongsByHash(ctx, request as $2.CheckSongsByHashRequest);
      case 'PublishSong': return this.publishSong(ctx, request as $2.PublishSongRequest);
      case 'UpdateSong': return this.updateSong(ctx, request as $2.UpdateSongRequest);
      case 'DeleteSong': return this.deleteSong(ctx, request as $2.DeleteSongRequest);
      case 'GetSong': return this.getSong(ctx, request as $2.GetSongRequest);
      case 'ListSongs': return this.listSongs(ctx, request as $2.ListSongsRequest);
      case 'SearchSongs': return this.searchSongs(ctx, request as $2.SearchSongsRequest);
      case 'ListDeviceLocalSongs': return this.listDeviceLocalSongs(ctx, request as $2.ListDeviceLocalSongsRequest);
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => SongServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => SongServiceBase$messageJson;
}

