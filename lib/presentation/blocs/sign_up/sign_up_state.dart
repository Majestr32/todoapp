part of 'sign_up_bloc.dart';

@freezed
class SignUpState with _$SignUpState {
  const SignUpState._();

  bool get isLoading => maybeMap(
      loading: (_) => true,
      orElse: () => false);

  const factory SignUpState.initial() = _InitialState;
  const factory SignUpState.loading() = _LoadingState;
  const factory SignUpState.error({required AppException e}) = _ErrorState;
  const factory SignUpState.success() = _SuccessState;
}
