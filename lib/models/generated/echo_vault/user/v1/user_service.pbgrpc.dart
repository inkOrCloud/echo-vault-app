///
//  Generated code. Do not modify.
//  source: echo_vault/user/v1/user_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'user_service.pb.dart' as $4;
export 'user_service.pb.dart';

class UserServiceClient extends $grpc.Client {
  static final _$register =
      $grpc.ClientMethod<$4.RegisterRequest, $4.RegisterResponse>(
          '/echo_vault.user.v1.UserService/Register',
          ($4.RegisterRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $4.RegisterResponse.fromBuffer(value));
  static final _$login = $grpc.ClientMethod<$4.LoginRequest, $4.LoginResponse>(
      '/echo_vault.user.v1.UserService/Login',
      ($4.LoginRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.LoginResponse.fromBuffer(value));
  static final _$refreshToken =
      $grpc.ClientMethod<$4.RefreshTokenRequest, $4.RefreshTokenResponse>(
          '/echo_vault.user.v1.UserService/RefreshToken',
          ($4.RefreshTokenRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $4.RefreshTokenResponse.fromBuffer(value));
  static final _$getCurrentUser =
      $grpc.ClientMethod<$4.GetCurrentUserRequest, $4.GetCurrentUserResponse>(
          '/echo_vault.user.v1.UserService/GetCurrentUser',
          ($4.GetCurrentUserRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $4.GetCurrentUserResponse.fromBuffer(value));
  static final _$updateUser =
      $grpc.ClientMethod<$4.UpdateUserRequest, $4.UpdateUserResponse>(
          '/echo_vault.user.v1.UserService/UpdateUser',
          ($4.UpdateUserRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $4.UpdateUserResponse.fromBuffer(value));
  static final _$getServerInfo =
      $grpc.ClientMethod<$4.GetServerInfoRequest, $4.GetServerInfoResponse>(
          '/echo_vault.user.v1.UserService/GetServerInfo',
          ($4.GetServerInfoRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $4.GetServerInfoResponse.fromBuffer(value));
  static final _$registerDevice =
      $grpc.ClientMethod<$4.RegisterDeviceRequest, $4.RegisterDeviceResponse>(
          '/echo_vault.user.v1.UserService/RegisterDevice',
          ($4.RegisterDeviceRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $4.RegisterDeviceResponse.fromBuffer(value));
  static final _$listDevices =
      $grpc.ClientMethod<$4.ListDevicesRequest, $4.ListDevicesResponse>(
          '/echo_vault.user.v1.UserService/ListDevices',
          ($4.ListDevicesRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $4.ListDevicesResponse.fromBuffer(value));
  static final _$removeDevice =
      $grpc.ClientMethod<$4.RemoveDeviceRequest, $4.RemoveDeviceResponse>(
          '/echo_vault.user.v1.UserService/RemoveDevice',
          ($4.RemoveDeviceRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $4.RemoveDeviceResponse.fromBuffer(value));
  static final _$updateDevice =
      $grpc.ClientMethod<$4.UpdateDeviceRequest, $4.UpdateDeviceResponse>(
          '/echo_vault.user.v1.UserService/UpdateDevice',
          ($4.UpdateDeviceRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $4.UpdateDeviceResponse.fromBuffer(value));

  UserServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$4.RegisterResponse> register($4.RegisterRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$register, request, options: options);
  }

  $grpc.ResponseFuture<$4.LoginResponse> login($4.LoginRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$login, request, options: options);
  }

  $grpc.ResponseFuture<$4.RefreshTokenResponse> refreshToken(
      $4.RefreshTokenRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$refreshToken, request, options: options);
  }

  $grpc.ResponseFuture<$4.GetCurrentUserResponse> getCurrentUser(
      $4.GetCurrentUserRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getCurrentUser, request, options: options);
  }

  $grpc.ResponseFuture<$4.UpdateUserResponse> updateUser(
      $4.UpdateUserRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateUser, request, options: options);
  }

  $grpc.ResponseFuture<$4.GetServerInfoResponse> getServerInfo(
      $4.GetServerInfoRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getServerInfo, request, options: options);
  }

  $grpc.ResponseFuture<$4.RegisterDeviceResponse> registerDevice(
      $4.RegisterDeviceRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$registerDevice, request, options: options);
  }

  $grpc.ResponseFuture<$4.ListDevicesResponse> listDevices(
      $4.ListDevicesRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listDevices, request, options: options);
  }

  $grpc.ResponseFuture<$4.RemoveDeviceResponse> removeDevice(
      $4.RemoveDeviceRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$removeDevice, request, options: options);
  }

  $grpc.ResponseFuture<$4.UpdateDeviceResponse> updateDevice(
      $4.UpdateDeviceRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateDevice, request, options: options);
  }
}

abstract class UserServiceBase extends $grpc.Service {
  $core.String get $name => 'echo_vault.user.v1.UserService';

  UserServiceBase() {
    $addMethod($grpc.ServiceMethod<$4.RegisterRequest, $4.RegisterResponse>(
        'Register',
        register_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.RegisterRequest.fromBuffer(value),
        ($4.RegisterResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.LoginRequest, $4.LoginResponse>(
        'Login',
        login_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.LoginRequest.fromBuffer(value),
        ($4.LoginResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$4.RefreshTokenRequest, $4.RefreshTokenResponse>(
            'RefreshToken',
            refreshToken_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $4.RefreshTokenRequest.fromBuffer(value),
            ($4.RefreshTokenResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.GetCurrentUserRequest,
            $4.GetCurrentUserResponse>(
        'GetCurrentUser',
        getCurrentUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.GetCurrentUserRequest.fromBuffer(value),
        ($4.GetCurrentUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.UpdateUserRequest, $4.UpdateUserResponse>(
        'UpdateUser',
        updateUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.UpdateUserRequest.fromBuffer(value),
        ($4.UpdateUserResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$4.GetServerInfoRequest, $4.GetServerInfoResponse>(
            'GetServerInfo',
            getServerInfo_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $4.GetServerInfoRequest.fromBuffer(value),
            ($4.GetServerInfoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.RegisterDeviceRequest,
            $4.RegisterDeviceResponse>(
        'RegisterDevice',
        registerDevice_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.RegisterDeviceRequest.fromBuffer(value),
        ($4.RegisterDeviceResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$4.ListDevicesRequest, $4.ListDevicesResponse>(
            'ListDevices',
            listDevices_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $4.ListDevicesRequest.fromBuffer(value),
            ($4.ListDevicesResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$4.RemoveDeviceRequest, $4.RemoveDeviceResponse>(
            'RemoveDevice',
            removeDevice_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $4.RemoveDeviceRequest.fromBuffer(value),
            ($4.RemoveDeviceResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$4.UpdateDeviceRequest, $4.UpdateDeviceResponse>(
            'UpdateDevice',
            updateDevice_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $4.UpdateDeviceRequest.fromBuffer(value),
            ($4.UpdateDeviceResponse value) => value.writeToBuffer()));
  }

  $async.Future<$4.RegisterResponse> register_Pre(
      $grpc.ServiceCall call, $async.Future<$4.RegisterRequest> request) async {
    return register(call, await request);
  }

  $async.Future<$4.LoginResponse> login_Pre(
      $grpc.ServiceCall call, $async.Future<$4.LoginRequest> request) async {
    return login(call, await request);
  }

  $async.Future<$4.RefreshTokenResponse> refreshToken_Pre(
      $grpc.ServiceCall call,
      $async.Future<$4.RefreshTokenRequest> request) async {
    return refreshToken(call, await request);
  }

  $async.Future<$4.GetCurrentUserResponse> getCurrentUser_Pre(
      $grpc.ServiceCall call,
      $async.Future<$4.GetCurrentUserRequest> request) async {
    return getCurrentUser(call, await request);
  }

  $async.Future<$4.UpdateUserResponse> updateUser_Pre($grpc.ServiceCall call,
      $async.Future<$4.UpdateUserRequest> request) async {
    return updateUser(call, await request);
  }

  $async.Future<$4.GetServerInfoResponse> getServerInfo_Pre(
      $grpc.ServiceCall call,
      $async.Future<$4.GetServerInfoRequest> request) async {
    return getServerInfo(call, await request);
  }

  $async.Future<$4.RegisterDeviceResponse> registerDevice_Pre(
      $grpc.ServiceCall call,
      $async.Future<$4.RegisterDeviceRequest> request) async {
    return registerDevice(call, await request);
  }

  $async.Future<$4.ListDevicesResponse> listDevices_Pre($grpc.ServiceCall call,
      $async.Future<$4.ListDevicesRequest> request) async {
    return listDevices(call, await request);
  }

  $async.Future<$4.RemoveDeviceResponse> removeDevice_Pre(
      $grpc.ServiceCall call,
      $async.Future<$4.RemoveDeviceRequest> request) async {
    return removeDevice(call, await request);
  }

  $async.Future<$4.UpdateDeviceResponse> updateDevice_Pre(
      $grpc.ServiceCall call,
      $async.Future<$4.UpdateDeviceRequest> request) async {
    return updateDevice(call, await request);
  }

  $async.Future<$4.RegisterResponse> register(
      $grpc.ServiceCall call, $4.RegisterRequest request);
  $async.Future<$4.LoginResponse> login(
      $grpc.ServiceCall call, $4.LoginRequest request);
  $async.Future<$4.RefreshTokenResponse> refreshToken(
      $grpc.ServiceCall call, $4.RefreshTokenRequest request);
  $async.Future<$4.GetCurrentUserResponse> getCurrentUser(
      $grpc.ServiceCall call, $4.GetCurrentUserRequest request);
  $async.Future<$4.UpdateUserResponse> updateUser(
      $grpc.ServiceCall call, $4.UpdateUserRequest request);
  $async.Future<$4.GetServerInfoResponse> getServerInfo(
      $grpc.ServiceCall call, $4.GetServerInfoRequest request);
  $async.Future<$4.RegisterDeviceResponse> registerDevice(
      $grpc.ServiceCall call, $4.RegisterDeviceRequest request);
  $async.Future<$4.ListDevicesResponse> listDevices(
      $grpc.ServiceCall call, $4.ListDevicesRequest request);
  $async.Future<$4.RemoveDeviceResponse> removeDevice(
      $grpc.ServiceCall call, $4.RemoveDeviceRequest request);
  $async.Future<$4.UpdateDeviceResponse> updateDevice(
      $grpc.ServiceCall call, $4.UpdateDeviceRequest request);
}
