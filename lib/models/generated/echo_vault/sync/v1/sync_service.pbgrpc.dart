///
//  Generated code. Do not modify.
//  source: echo_vault/sync/v1/sync_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'sync_service.pb.dart' as $3;
export 'sync_service.pb.dart';

class SyncServiceClient extends $grpc.Client {
  static final _$pushChanges =
      $grpc.ClientMethod<$3.PushChangesRequest, $3.PushChangesResponse>(
          '/echo_vault.sync.v1.SyncService/PushChanges',
          ($3.PushChangesRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $3.PushChangesResponse.fromBuffer(value));
  static final _$pullChanges =
      $grpc.ClientMethod<$3.PullChangesRequest, $3.PullChangesResponse>(
          '/echo_vault.sync.v1.SyncService/PullChanges',
          ($3.PullChangesRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $3.PullChangesResponse.fromBuffer(value));
  static final _$subscribeChanges = $grpc.ClientMethod<
          $3.SubscribeChangesRequest, $3.SubscribeChangesResponse>(
      '/echo_vault.sync.v1.SyncService/SubscribeChanges',
      ($3.SubscribeChangesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $3.SubscribeChangesResponse.fromBuffer(value));
  static final _$ackChanges =
      $grpc.ClientMethod<$3.AckChangesRequest, $3.AckChangesResponse>(
          '/echo_vault.sync.v1.SyncService/AckChanges',
          ($3.AckChangesRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $3.AckChangesResponse.fromBuffer(value));

  SyncServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$3.PushChangesResponse> pushChanges(
      $3.PushChangesRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$pushChanges, request, options: options);
  }

  $grpc.ResponseStream<$3.PullChangesResponse> pullChanges(
      $3.PullChangesRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$pullChanges, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseStream<$3.SubscribeChangesResponse> subscribeChanges(
      $3.SubscribeChangesRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$subscribeChanges, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$3.AckChangesResponse> ackChanges(
      $3.AckChangesRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$ackChanges, request, options: options);
  }
}

abstract class SyncServiceBase extends $grpc.Service {
  $core.String get $name => 'echo_vault.sync.v1.SyncService';

  SyncServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$3.PushChangesRequest, $3.PushChangesResponse>(
            'PushChanges',
            pushChanges_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $3.PushChangesRequest.fromBuffer(value),
            ($3.PushChangesResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$3.PullChangesRequest, $3.PullChangesResponse>(
            'PullChanges',
            pullChanges_Pre,
            false,
            true,
            ($core.List<$core.int> value) =>
                $3.PullChangesRequest.fromBuffer(value),
            ($3.PullChangesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.SubscribeChangesRequest,
            $3.SubscribeChangesResponse>(
        'SubscribeChanges',
        subscribeChanges_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $3.SubscribeChangesRequest.fromBuffer(value),
        ($3.SubscribeChangesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.AckChangesRequest, $3.AckChangesResponse>(
        'AckChanges',
        ackChanges_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.AckChangesRequest.fromBuffer(value),
        ($3.AckChangesResponse value) => value.writeToBuffer()));
  }

  $async.Future<$3.PushChangesResponse> pushChanges_Pre($grpc.ServiceCall call,
      $async.Future<$3.PushChangesRequest> request) async {
    return pushChanges(call, await request);
  }

  $async.Stream<$3.PullChangesResponse> pullChanges_Pre($grpc.ServiceCall call,
      $async.Future<$3.PullChangesRequest> request) async* {
    yield* pullChanges(call, await request);
  }

  $async.Stream<$3.SubscribeChangesResponse> subscribeChanges_Pre(
      $grpc.ServiceCall call,
      $async.Future<$3.SubscribeChangesRequest> request) async* {
    yield* subscribeChanges(call, await request);
  }

  $async.Future<$3.AckChangesResponse> ackChanges_Pre($grpc.ServiceCall call,
      $async.Future<$3.AckChangesRequest> request) async {
    return ackChanges(call, await request);
  }

  $async.Future<$3.PushChangesResponse> pushChanges(
      $grpc.ServiceCall call, $3.PushChangesRequest request);
  $async.Stream<$3.PullChangesResponse> pullChanges(
      $grpc.ServiceCall call, $3.PullChangesRequest request);
  $async.Stream<$3.SubscribeChangesResponse> subscribeChanges(
      $grpc.ServiceCall call, $3.SubscribeChangesRequest request);
  $async.Future<$3.AckChangesResponse> ackChanges(
      $grpc.ServiceCall call, $3.AckChangesRequest request);
}
