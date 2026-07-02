// This is a generated file - do not edit.
//
// Generated from echo_vault/song/v1/song_service.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'song_service.pb.dart' as $2;
import 'song_service.pbjson.dart';

export 'song_service.pb.dart';

abstract class SongServiceBase extends $pb.GeneratedService {
  $async.Future<$2.CheckSongsByHashResponse> checkSongsByHash(
      $pb.ServerContext ctx, $2.CheckSongsByHashRequest request);
  $async.Future<$2.PublishSongResponse> publishSong(
      $pb.ServerContext ctx, $2.PublishSongRequest request);
  $async.Future<$2.UpdateSongResponse> updateSong(
      $pb.ServerContext ctx, $2.UpdateSongRequest request);
  $async.Future<$2.DeleteSongResponse> deleteSong(
      $pb.ServerContext ctx, $2.DeleteSongRequest request);
  $async.Future<$2.GetSongResponse> getSong(
      $pb.ServerContext ctx, $2.GetSongRequest request);
  $async.Future<$2.ListSongsResponse> listSongs(
      $pb.ServerContext ctx, $2.ListSongsRequest request);
  $async.Future<$2.SearchSongsResponse> searchSongs(
      $pb.ServerContext ctx, $2.SearchSongsRequest request);
  $async.Future<$2.ListDeviceLocalSongsResponse> listDeviceLocalSongs(
      $pb.ServerContext ctx, $2.ListDeviceLocalSongsRequest request);

  $pb.GeneratedMessage createRequest($core.String methodName) {
    switch (methodName) {
      case 'CheckSongsByHash':
        return $2.CheckSongsByHashRequest();
      case 'PublishSong':
        return $2.PublishSongRequest();
      case 'UpdateSong':
        return $2.UpdateSongRequest();
      case 'DeleteSong':
        return $2.DeleteSongRequest();
      case 'GetSong':
        return $2.GetSongRequest();
      case 'ListSongs':
        return $2.ListSongsRequest();
      case 'SearchSongs':
        return $2.SearchSongsRequest();
      case 'ListDeviceLocalSongs':
        return $2.ListDeviceLocalSongsRequest();
      default:
        throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx,
      $core.String methodName, $pb.GeneratedMessage request) {
    switch (methodName) {
      case 'CheckSongsByHash':
        return checkSongsByHash(ctx, request as $2.CheckSongsByHashRequest);
      case 'PublishSong':
        return publishSong(ctx, request as $2.PublishSongRequest);
      case 'UpdateSong':
        return updateSong(ctx, request as $2.UpdateSongRequest);
      case 'DeleteSong':
        return deleteSong(ctx, request as $2.DeleteSongRequest);
      case 'GetSong':
        return getSong(ctx, request as $2.GetSongRequest);
      case 'ListSongs':
        return listSongs(ctx, request as $2.ListSongsRequest);
      case 'SearchSongs':
        return searchSongs(ctx, request as $2.SearchSongsRequest);
      case 'ListDeviceLocalSongs':
        return listDeviceLocalSongs(
            ctx, request as $2.ListDeviceLocalSongsRequest);
      default:
        throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => SongServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>>
      get $messageJson => SongServiceBase$messageJson;
}
