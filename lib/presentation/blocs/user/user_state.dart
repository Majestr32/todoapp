part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const UserState._();

  bool get isAuthenticated => maybeMap(
      authenticated: (_) => true,
      orElse: () => false);

  UserEntity? get user => maybeMap(
      authenticated: (state) => state.user,
      orElse: () => null);

  const factory UserState.initial() = _InitialState;
  const factory UserState.authenticated({required UserEntity user}) = _AuthenticatedState;
}
