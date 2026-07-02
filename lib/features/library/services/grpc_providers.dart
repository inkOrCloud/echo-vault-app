import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dio/dio.dart';
import 'package:echo_vault_app/core/grpc/client.dart';
import 'package:echo_vault_app/features/library/services/song_repository.dart';
import 'package:echo_vault_app/features/library/services/rest_client.dart';

final grpcClientProvider = Provider<GrpcClientManager>((ref) => GrpcClientManager());
final dioProvider = Provider<Dio>((ref) => Dio(BaseOptions(connectTimeout: const Duration(seconds: 10), receiveTimeout: const Duration(seconds: 30))));
final songRepositoryProvider = Provider<SongRepository>((ref) => SongRepository(manager: ref.watch(grpcClientProvider)));
final restClientProvider = Provider.family<RestClient, String>((ref, baseUrl) => RestClient(dio: ref.watch(dioProvider), baseUrl: baseUrl));
