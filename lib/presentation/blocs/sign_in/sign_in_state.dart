part of 'sign_in_bloc.dart';

@freezed
class SignInState with _$SignInState {
  const SignInState._();

  bool get isLoading => maybeMap(
      loading: (_) => true,
      orElse: () => false);

  const factory SignInState.initial() = _InitialState;
  const factory SignInState.loading() = _LoadingState;
  const factory SignInState.error({required AppException e}) = _ErrorState;
  const factory SignInState.success() = _SuccessState;
}
