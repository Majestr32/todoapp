import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todoapp/app/exception/exception.dart';

import '../../../domain/repositories/auth/auth_repository_contract.dart';

part 'sign_in_event.dart';

part 'sign_in_state.dart';

part 'sign_in_bloc.freezed.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final AuthRepository _authRepository;

  SignInBloc({required AuthRepository authRepository})
      : _authRepository = authRepository,
        super(const SignInState.initial()) {
    on<SignInEvent>(_mapEventToState);
  }

  Future<void> _mapEventToState(SignInEvent event, Emitter<SignInState> emit) =>
      event.map(signIn: (e) => _signIn(e, emit));

  Future<void> _signIn(_SignIn event, Emitter<SignInState> emit) async {
    try {
      emit(const SignInState.loading());
      await _authRepository.signInWithEmailAndPassword(
          email: event.email, password: event.password);
      emit(const SignInState.success());
    } on AppException catch (e) {
      emit(SignInState.error(e: e));
      emit(const SignInState.initial());
    }
  }
}
