///
//  Generated code. Do not modify.
//  source: echo_vault/playlist/v1/playlist_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'playlist_service.pb.dart' as $2;
export 'playlist_service.pb.dart';

class PlaylistServiceClient extends $grpc.Client {
  static final _$createPlaylist =
      $grpc.ClientMethod<$2.CreatePlaylistRequest, $2.CreatePlaylistResponse>(
          '/echo_vault.playlist.v1.PlaylistService/CreatePlaylist',
          ($2.CreatePlaylistRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.CreatePlaylistResponse.fromBuffer(value));
  static final _$getPlaylist =
      $grpc.ClientMethod<$2.GetPlaylistRequest, $2.GetPlaylistResponse>(
          '/echo_vault.playlist.v1.PlaylistService/GetPlaylist',
          ($2.GetPlaylistRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.GetPlaylistResponse.fromBuffer(value));
  static final _$updatePlaylist =
      $grpc.ClientMethod<$2.UpdatePlaylistRequest, $2.UpdatePlaylistResponse>(
          '/echo_vault.playlist.v1.PlaylistService/UpdatePlaylist',
          ($2.UpdatePlaylistRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.UpdatePlaylistResponse.fromBuffer(value));
  static final _$deletePlaylist =
      $grpc.ClientMethod<$2.DeletePlaylistRequest, $2.DeletePlaylistResponse>(
          '/echo_vault.playlist.v1.PlaylistService/DeletePlaylist',
          ($2.DeletePlaylistRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.DeletePlaylistResponse.fromBuffer(value));
  static final _$listPlaylists =
      $grpc.ClientMethod<$2.ListPlaylistsRequest, $2.ListPlaylistsResponse>(
          '/echo_vault.playlist.v1.PlaylistService/ListPlaylists',
          ($2.ListPlaylistsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.ListPlaylistsResponse.fromBuffer(value));
  static final _$addSong =
      $grpc.ClientMethod<$2.AddSongRequest, $2.AddSongResponse>(
          '/echo_vault.playlist.v1.PlaylistService/AddSong',
          ($2.AddSongRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.AddSongResponse.fromBuffer(value));
  static final _$removeSong =
      $grpc.ClientMethod<$2.RemoveSongRequest, $2.RemoveSongResponse>(
          '/echo_vault.playlist.v1.PlaylistService/RemoveSong',
          ($2.RemoveSongRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.RemoveSongResponse.fromBuffer(value));
  static final _$reorderSongs =
      $grpc.ClientMethod<$2.ReorderSongsRequest, $2.ReorderSongsResponse>(
          '/echo_vault.playlist.v1.PlaylistService/ReorderSongs',
          ($2.ReorderSongsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.ReorderSongsResponse.fromBuffer(value));
  static final _$listPlaylistSongs = $grpc.ClientMethod<
          $2.ListPlaylistSongsRequest, $2.ListPlaylistSongsResponse>(
      '/echo_vault.playlist.v1.PlaylistService/ListPlaylistSongs',
      ($2.ListPlaylistSongsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.ListPlaylistSongsResponse.fromBuffer(value));

  PlaylistServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$2.CreatePlaylistResponse> createPlaylist(
      $2.CreatePlaylistRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createPlaylist, request, options: options);
  }

  $grpc.ResponseFuture<$2.GetPlaylistResponse> getPlaylist(
      $2.GetPlaylistRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPlaylist, request, options: options);
  }

  $grpc.ResponseFuture<$2.UpdatePlaylistResponse> updatePlaylist(
      $2.UpdatePlaylistRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updatePlaylist, request, options: options);
  }

  $grpc.ResponseFuture<$2.DeletePlaylistResponse> deletePlaylist(
      $2.DeletePlaylistRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deletePlaylist, request, options: options);
  }

  $grpc.ResponseFuture<$2.ListPlaylistsResponse> listPlaylists(
      $2.ListPlaylistsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listPlaylists, request, options: options);
  }

  $grpc.ResponseFuture<$2.AddSongResponse> addSong($2.AddSongRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addSong, request, options: options);
  }

  $grpc.ResponseFuture<$2.RemoveSongResponse> removeSong(
      $2.RemoveSongRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$removeSong, request, options: options);
  }

  $grpc.ResponseFuture<$2.ReorderSongsResponse> reorderSongs(
      $2.ReorderSongsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$reorderSongs, request, options: options);
  }

  $grpc.ResponseFuture<$2.ListPlaylistSongsResponse> listPlaylistSongs(
      $2.ListPlaylistSongsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listPlaylistSongs, request, options: options);
  }
}

abstract class PlaylistServiceBase extends $grpc.Service {
  $core.String get $name => 'echo_vault.playlist.v1.PlaylistService';

  PlaylistServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.CreatePlaylistRequest,
            $2.CreatePlaylistResponse>(
        'CreatePlaylist',
        createPlaylist_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.CreatePlaylistRequest.fromBuffer(value),
        ($2.CreatePlaylistResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$2.GetPlaylistRequest, $2.GetPlaylistResponse>(
            'GetPlaylist',
            getPlaylist_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $2.GetPlaylistRequest.fromBuffer(value),
            ($2.GetPlaylistResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.UpdatePlaylistRequest,
            $2.UpdatePlaylistResponse>(
        'UpdatePlaylist',
        updatePlaylist_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.UpdatePlaylistRequest.fromBuffer(value),
        ($2.UpdatePlaylistResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.DeletePlaylistRequest,
            $2.DeletePlaylistResponse>(
        'DeletePlaylist',
        deletePlaylist_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.DeletePlaylistRequest.fromBuffer(value),
        ($2.DeletePlaylistResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$2.ListPlaylistsRequest, $2.ListPlaylistsResponse>(
            'ListPlaylists',
            listPlaylists_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $2.ListPlaylistsRequest.fromBuffer(value),
            ($2.ListPlaylistsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.AddSongRequest, $2.AddSongResponse>(
        'AddSong',
        addSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.AddSongRequest.fromBuffer(value),
        ($2.AddSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.RemoveSongRequest, $2.RemoveSongResponse>(
        'RemoveSong',
        removeSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.RemoveSongRequest.fromBuffer(value),
        ($2.RemoveSongResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$2.ReorderSongsRequest, $2.ReorderSongsResponse>(
            'ReorderSongs',
            reorderSongs_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $2.ReorderSongsRequest.fromBuffer(value),
            ($2.ReorderSongsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.ListPlaylistSongsRequest,
            $2.ListPlaylistSongsResponse>(
        'ListPlaylistSongs',
        listPlaylistSongs_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.ListPlaylistSongsRequest.fromBuffer(value),
        ($2.ListPlaylistSongsResponse value) => value.writeToBuffer()));
  }

  $async.Future<$2.CreatePlaylistResponse> createPlaylist_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.CreatePlaylistRequest> request) async {
    return createPlaylist(call, await request);
  }

  $async.Future<$2.GetPlaylistResponse> getPlaylist_Pre($grpc.ServiceCall call,
      $async.Future<$2.GetPlaylistRequest> request) async {
    return getPlaylist(call, await request);
  }

  $async.Future<$2.UpdatePlaylistResponse> updatePlaylist_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.UpdatePlaylistRequest> request) async {
    return updatePlaylist(call, await request);
  }

  $async.Future<$2.DeletePlaylistResponse> deletePlaylist_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.DeletePlaylistRequest> request) async {
    return deletePlaylist(call, await request);
  }

  $async.Future<$2.ListPlaylistsResponse> listPlaylists_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.ListPlaylistsRequest> request) async {
    return listPlaylists(call, await request);
  }

  $async.Future<$2.AddSongResponse> addSong_Pre(
      $grpc.ServiceCall call, $async.Future<$2.AddSongRequest> request) async {
    return addSong(call, await request);
  }

  $async.Future<$2.RemoveSongResponse> removeSong_Pre($grpc.ServiceCall call,
      $async.Future<$2.RemoveSongRequest> request) async {
    return removeSong(call, await request);
  }

  $async.Future<$2.ReorderSongsResponse> reorderSongs_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.ReorderSongsRequest> request) async {
    return reorderSongs(call, await request);
  }

  $async.Future<$2.ListPlaylistSongsResponse> listPlaylistSongs_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.ListPlaylistSongsRequest> request) async {
    return listPlaylistSongs(call, await request);
  }

  $async.Future<$2.CreatePlaylistResponse> createPlaylist(
      $grpc.ServiceCall call, $2.CreatePlaylistRequest request);
  $async.Future<$2.GetPlaylistResponse> getPlaylist(
      $grpc.ServiceCall call, $2.GetPlaylistRequest request);
  $async.Future<$2.UpdatePlaylistResponse> updatePlaylist(
      $grpc.ServiceCall call, $2.UpdatePlaylistRequest request);
  $async.Future<$2.DeletePlaylistResponse> deletePlaylist(
      $grpc.ServiceCall call, $2.DeletePlaylistRequest request);
  $async.Future<$2.ListPlaylistsResponse> listPlaylists(
      $grpc.ServiceCall call, $2.ListPlaylistsRequest request);
  $async.Future<$2.AddSongResponse> addSong(
      $grpc.ServiceCall call, $2.AddSongRequest request);
  $async.Future<$2.RemoveSongResponse> removeSong(
      $grpc.ServiceCall call, $2.RemoveSongRequest request);
  $async.Future<$2.ReorderSongsResponse> reorderSongs(
      $grpc.ServiceCall call, $2.ReorderSongsRequest request);
  $async.Future<$2.ListPlaylistSongsResponse> listPlaylistSongs(
      $grpc.ServiceCall call, $2.ListPlaylistSongsRequest request);
}
