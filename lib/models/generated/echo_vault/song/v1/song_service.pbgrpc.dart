///
//  Generated code. Do not modify.
//  source: echo_vault/song/v1/song_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'song_service.pb.dart' as $1;
export 'song_service.pb.dart';

class SongServiceClient extends $grpc.Client {
  static final _$checkSongsByHash = $grpc.ClientMethod<
          $1.CheckSongsByHashRequest, $1.CheckSongsByHashResponse>(
      '/echo_vault.song.v1.SongService/CheckSongsByHash',
      ($1.CheckSongsByHashRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.CheckSongsByHashResponse.fromBuffer(value));
  static final _$publishSong =
      $grpc.ClientMethod<$1.PublishSongRequest, $1.PublishSongResponse>(
          '/echo_vault.song.v1.SongService/PublishSong',
          ($1.PublishSongRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.PublishSongResponse.fromBuffer(value));
  static final _$updateSong =
      $grpc.ClientMethod<$1.UpdateSongRequest, $1.UpdateSongResponse>(
          '/echo_vault.song.v1.SongService/UpdateSong',
          ($1.UpdateSongRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.UpdateSongResponse.fromBuffer(value));
  static final _$deleteSong =
      $grpc.ClientMethod<$1.DeleteSongRequest, $1.DeleteSongResponse>(
          '/echo_vault.song.v1.SongService/DeleteSong',
          ($1.DeleteSongRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.DeleteSongResponse.fromBuffer(value));
  static final _$getSong =
      $grpc.ClientMethod<$1.GetSongRequest, $1.GetSongResponse>(
          '/echo_vault.song.v1.SongService/GetSong',
          ($1.GetSongRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.GetSongResponse.fromBuffer(value));
  static final _$listSongs =
      $grpc.ClientMethod<$1.ListSongsRequest, $1.ListSongsResponse>(
          '/echo_vault.song.v1.SongService/ListSongs',
          ($1.ListSongsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.ListSongsResponse.fromBuffer(value));
  static final _$searchSongs =
      $grpc.ClientMethod<$1.SearchSongsRequest, $1.SearchSongsResponse>(
          '/echo_vault.song.v1.SongService/SearchSongs',
          ($1.SearchSongsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.SearchSongsResponse.fromBuffer(value));
  static final _$listDeviceLocalSongs = $grpc.ClientMethod<
          $1.ListDeviceLocalSongsRequest, $1.ListDeviceLocalSongsResponse>(
      '/echo_vault.song.v1.SongService/ListDeviceLocalSongs',
      ($1.ListDeviceLocalSongsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.ListDeviceLocalSongsResponse.fromBuffer(value));

  SongServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$1.CheckSongsByHashResponse> checkSongsByHash(
      $1.CheckSongsByHashRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$checkSongsByHash, request, options: options);
  }

  $grpc.ResponseFuture<$1.PublishSongResponse> publishSong(
      $1.PublishSongRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$publishSong, request, options: options);
  }

  $grpc.ResponseFuture<$1.UpdateSongResponse> updateSong(
      $1.UpdateSongRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSong, request, options: options);
  }

  $grpc.ResponseFuture<$1.DeleteSongResponse> deleteSong(
      $1.DeleteSongRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSong, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetSongResponse> getSong($1.GetSongRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSong, request, options: options);
  }

  $grpc.ResponseFuture<$1.ListSongsResponse> listSongs(
      $1.ListSongsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSongs, request, options: options);
  }

  $grpc.ResponseFuture<$1.SearchSongsResponse> searchSongs(
      $1.SearchSongsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$searchSongs, request, options: options);
  }

  $grpc.ResponseFuture<$1.ListDeviceLocalSongsResponse> listDeviceLocalSongs(
      $1.ListDeviceLocalSongsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listDeviceLocalSongs, request, options: options);
  }
}

abstract class SongServiceBase extends $grpc.Service {
  $core.String get $name => 'echo_vault.song.v1.SongService';

  SongServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.CheckSongsByHashRequest,
            $1.CheckSongsByHashResponse>(
        'CheckSongsByHash',
        checkSongsByHash_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.CheckSongsByHashRequest.fromBuffer(value),
        ($1.CheckSongsByHashResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.PublishSongRequest, $1.PublishSongResponse>(
            'PublishSong',
            publishSong_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.PublishSongRequest.fromBuffer(value),
            ($1.PublishSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.UpdateSongRequest, $1.UpdateSongResponse>(
        'UpdateSong',
        updateSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.UpdateSongRequest.fromBuffer(value),
        ($1.UpdateSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.DeleteSongRequest, $1.DeleteSongResponse>(
        'DeleteSong',
        deleteSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.DeleteSongRequest.fromBuffer(value),
        ($1.DeleteSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetSongRequest, $1.GetSongResponse>(
        'GetSong',
        getSong_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetSongRequest.fromBuffer(value),
        ($1.GetSongResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.ListSongsRequest, $1.ListSongsResponse>(
        'ListSongs',
        listSongs_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.ListSongsRequest.fromBuffer(value),
        ($1.ListSongsResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.SearchSongsRequest, $1.SearchSongsResponse>(
            'SearchSongs',
            searchSongs_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.SearchSongsRequest.fromBuffer(value),
            ($1.SearchSongsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.ListDeviceLocalSongsRequest,
            $1.ListDeviceLocalSongsResponse>(
        'ListDeviceLocalSongs',
        listDeviceLocalSongs_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.ListDeviceLocalSongsRequest.fromBuffer(value),
        ($1.ListDeviceLocalSongsResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.CheckSongsByHashResponse> checkSongsByHash_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.CheckSongsByHashRequest> request) async {
    return checkSongsByHash(call, await request);
  }

  $async.Future<$1.PublishSongResponse> publishSong_Pre($grpc.ServiceCall call,
      $async.Future<$1.PublishSongRequest> request) async {
    return publishSong(call, await request);
  }

  $async.Future<$1.UpdateSongResponse> updateSong_Pre($grpc.ServiceCall call,
      $async.Future<$1.UpdateSongRequest> request) async {
    return updateSong(call, await request);
  }

  $async.Future<$1.DeleteSongResponse> deleteSong_Pre($grpc.ServiceCall call,
      $async.Future<$1.DeleteSongRequest> request) async {
    return deleteSong(call, await request);
  }

  $async.Future<$1.GetSongResponse> getSong_Pre(
      $grpc.ServiceCall call, $async.Future<$1.GetSongRequest> request) async {
    return getSong(call, await request);
  }

  $async.Future<$1.ListSongsResponse> listSongs_Pre($grpc.ServiceCall call,
      $async.Future<$1.ListSongsRequest> request) async {
    return listSongs(call, await request);
  }

  $async.Future<$1.SearchSongsResponse> searchSongs_Pre($grpc.ServiceCall call,
      $async.Future<$1.SearchSongsRequest> request) async {
    return searchSongs(call, await request);
  }

  $async.Future<$1.ListDeviceLocalSongsResponse> listDeviceLocalSongs_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.ListDeviceLocalSongsRequest> request) async {
    return listDeviceLocalSongs(call, await request);
  }

  $async.Future<$1.CheckSongsByHashResponse> checkSongsByHash(
      $grpc.ServiceCall call, $1.CheckSongsByHashRequest request);
  $async.Future<$1.PublishSongResponse> publishSong(
      $grpc.ServiceCall call, $1.PublishSongRequest request);
  $async.Future<$1.UpdateSongResponse> updateSong(
      $grpc.ServiceCall call, $1.UpdateSongRequest request);
  $async.Future<$1.DeleteSongResponse> deleteSong(
      $grpc.ServiceCall call, $1.DeleteSongRequest request);
  $async.Future<$1.GetSongResponse> getSong(
      $grpc.ServiceCall call, $1.GetSongRequest request);
  $async.Future<$1.ListSongsResponse> listSongs(
      $grpc.ServiceCall call, $1.ListSongsRequest request);
  $async.Future<$1.SearchSongsResponse> searchSongs(
      $grpc.ServiceCall call, $1.SearchSongsRequest request);
  $async.Future<$1.ListDeviceLocalSongsResponse> listDeviceLocalSongs(
      $grpc.ServiceCall call, $1.ListDeviceLocalSongsRequest request);
}
