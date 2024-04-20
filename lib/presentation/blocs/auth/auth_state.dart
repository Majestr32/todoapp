part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const AuthState._();

  bool get isAuthenticated => maybeMap(
      authenticated: (_) => true,
      orElse: () => false);

  User? get user => maybeMap(
      authenticated: (state) => state.user,
      orElse: () => null);

  const factory AuthState.initial() = _InitialState;
  const factory AuthState.authenticated({required User user}) = _AuthenticatedState;
  const factory AuthState.notAuthenticated() = _NotAuthenticatedState;
}
