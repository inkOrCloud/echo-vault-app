import "package:flutter_riverpod/flutter_riverpod.dart";

final serverConfigProvider = StateProvider<({String host, int grpcPort, int restPort})?>(
  (ref) => null,
);
