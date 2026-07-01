import 'package:flutter_riverpod/flutter_riverpod.dart';

enum AuthStatus { unknown, authenticated, unauthenticated }

class AuthState {
  final AuthStatus status;
  final String? userId;
  final String? username;
  final String? token;

  const AuthState({
    this.status = AuthStatus.unknown,
    this.userId,
    this.username,
    this.token,
  });

  AuthState copyWith({
    AuthStatus? status,
    String? userId,
    String? username,
    String? token,
  }) {
    return AuthState(
      status: status ?? this.status,
      userId: userId ?? this.userId,
      username: username ?? this.username,
      token: token ?? this.token,
    );
  }
}

final authProvider = StateNotifierProvider<AuthNotifier, AuthState>((ref) {
  return AuthNotifier();
});

class AuthNotifier extends StateNotifier<AuthState> {
  AuthNotifier() : super(const AuthState());

  void setAuthenticated({required String userId, required String username, required String token}) {
    state = AuthState(
      status: AuthStatus.authenticated,
      userId: userId,
      username: username,
      token: token,
    );
  }

  void logout() {
    state = const AuthState(status: AuthStatus.unauthenticated);
  }
}
