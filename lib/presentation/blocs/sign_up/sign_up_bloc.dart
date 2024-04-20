import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../app/exception/exception.dart';
import '../../../domain/repositories/auth/auth_repository_contract.dart';

part 'sign_up_event.dart';

part 'sign_up_state.dart';

part 'sign_up_bloc.freezed.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final AuthRepository _authRepository;

  SignUpBloc({required AuthRepository authRepository})
      : _authRepository = authRepository,
        super(const SignUpState.initial()) {
    on<SignUpEvent>(_mapEventToState);
  }

  Future<void> _mapEventToState(SignUpEvent event, Emitter<SignUpState> emit) =>
      event.map(signUp: (e) => _signUp(e, emit));

  Future<void> _signUp(_SignUp event, Emitter<SignUpState> emit) async {
    try {
      emit(const SignUpState.loading());
      await _authRepository.signUpWithEmailAndPassword(
          email: event.email, password: event.password);
      emit(const SignUpState.success());
    } on AppException catch (e) {
      emit(SignUpState.error(e: e));
      emit(const SignUpState.initial());
    }
  }
}
