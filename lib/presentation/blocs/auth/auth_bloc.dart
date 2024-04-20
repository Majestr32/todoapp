import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/repositories/auth/auth_repository_contract.dart';

part 'auth_event.dart';

part 'auth_state.dart';

part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _authRepository;
  late final StreamSubscription _subscription;

  AuthBloc({
    required AuthRepository authRepository,
  })  : _authRepository = authRepository,
        super(const AuthState.initial()) {
    _authRepository.currentUser.listen((event) {
      add(AuthEvent.initUser(user: event));
    });
    on<AuthEvent>(_mapEventToState);
  }

  Future<void> _mapEventToState(AuthEvent event, Emitter<AuthState> emit) =>
      event.map(
          logout: (e) => _logout(e, emit), initUser: (e) => _initUser(e, emit));

  Future<void> _logout(_LogoutEvent event, Emitter<AuthState> emit) async {
    _authRepository.logout();
  }

  Future<void> _initUser(_InitUserEvent event, Emitter<AuthState> emit) async {
    if (event.user != null) {
      emit(AuthState.authenticated(user: event.user!));
    } else {
      emit(const AuthState.notAuthenticated());
    }
  }

  @override
  Future<void> close() {
    _subscription.cancel();
    return super.close();
  }
}
