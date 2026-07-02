///
//  Generated code. Do not modify.
//  source: echo_vault/lyric/v1/lyric_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'lyric_service.pb.dart' as $0;
export 'lyric_service.pb.dart';

class LyricServiceClient extends $grpc.Client {
  static final _$getLyric =
      $grpc.ClientMethod<$0.GetLyricRequest, $0.GetLyricResponse>(
          '/echo_vault.lyric.v1.LyricService/GetLyric',
          ($0.GetLyricRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetLyricResponse.fromBuffer(value));
  static final _$saveLyric =
      $grpc.ClientMethod<$0.SaveLyricRequest, $0.SaveLyricResponse>(
          '/echo_vault.lyric.v1.LyricService/SaveLyric',
          ($0.SaveLyricRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.SaveLyricResponse.fromBuffer(value));
  static final _$deleteLyric =
      $grpc.ClientMethod<$0.DeleteLyricRequest, $0.DeleteLyricResponse>(
          '/echo_vault.lyric.v1.LyricService/DeleteLyric',
          ($0.DeleteLyricRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.DeleteLyricResponse.fromBuffer(value));
  static final _$searchLyric =
      $grpc.ClientMethod<$0.SearchLyricRequest, $0.SearchLyricResponse>(
          '/echo_vault.lyric.v1.LyricService/SearchLyric',
          ($0.SearchLyricRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.SearchLyricResponse.fromBuffer(value));

  LyricServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.GetLyricResponse> getLyric($0.GetLyricRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getLyric, request, options: options);
  }

  $grpc.ResponseFuture<$0.SaveLyricResponse> saveLyric(
      $0.SaveLyricRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$saveLyric, request, options: options);
  }

  $grpc.ResponseFuture<$0.DeleteLyricResponse> deleteLyric(
      $0.DeleteLyricRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteLyric, request, options: options);
  }

  $grpc.ResponseFuture<$0.SearchLyricResponse> searchLyric(
      $0.SearchLyricRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$searchLyric, request, options: options);
  }
}

abstract class LyricServiceBase extends $grpc.Service {
  $core.String get $name => 'echo_vault.lyric.v1.LyricService';

  LyricServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.GetLyricRequest, $0.GetLyricResponse>(
        'GetLyric',
        getLyric_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetLyricRequest.fromBuffer(value),
        ($0.GetLyricResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SaveLyricRequest, $0.SaveLyricResponse>(
        'SaveLyric',
        saveLyric_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SaveLyricRequest.fromBuffer(value),
        ($0.SaveLyricResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.DeleteLyricRequest, $0.DeleteLyricResponse>(
            'DeleteLyric',
            deleteLyric_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.DeleteLyricRequest.fromBuffer(value),
            ($0.DeleteLyricResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.SearchLyricRequest, $0.SearchLyricResponse>(
            'SearchLyric',
            searchLyric_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.SearchLyricRequest.fromBuffer(value),
            ($0.SearchLyricResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.GetLyricResponse> getLyric_Pre(
      $grpc.ServiceCall call, $async.Future<$0.GetLyricRequest> request) async {
    return getLyric(call, await request);
  }

  $async.Future<$0.SaveLyricResponse> saveLyric_Pre($grpc.ServiceCall call,
      $async.Future<$0.SaveLyricRequest> request) async {
    return saveLyric(call, await request);
  }

  $async.Future<$0.DeleteLyricResponse> deleteLyric_Pre($grpc.ServiceCall call,
      $async.Future<$0.DeleteLyricRequest> request) async {
    return deleteLyric(call, await request);
  }

  $async.Future<$0.SearchLyricResponse> searchLyric_Pre($grpc.ServiceCall call,
      $async.Future<$0.SearchLyricRequest> request) async {
    return searchLyric(call, await request);
  }

  $async.Future<$0.GetLyricResponse> getLyric(
      $grpc.ServiceCall call, $0.GetLyricRequest request);
  $async.Future<$0.SaveLyricResponse> saveLyric(
      $grpc.ServiceCall call, $0.SaveLyricRequest request);
  $async.Future<$0.DeleteLyricResponse> deleteLyric(
      $grpc.ServiceCall call, $0.DeleteLyricRequest request);
  $async.Future<$0.SearchLyricResponse> searchLyric(
      $grpc.ServiceCall call, $0.SearchLyricRequest request);
}
