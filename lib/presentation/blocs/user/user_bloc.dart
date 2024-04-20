import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todoapp/domain/entities/user/user.dart';

import '../../../domain/repositories/user/user_repository_contract.dart';

part 'user_event.dart';

part 'user_state.dart';

part 'user_bloc.freezed.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UserRepository _userRepository;

  UserBloc({required UserRepository userRepository})
      : _userRepository = userRepository,
        super(const UserState.initial()) {
    on<UserEvent>(_mapEventToState);
  }

  Future<void> _mapEventToState(UserEvent event, Emitter<UserState> emit) =>
      event.map(
          fetchOrCreateUser: (e) => _fetchOrCreateUser(e, emit),
          reset: (e) => _reset(e, emit));

  Future<void> _fetchOrCreateUser(
      _FetchOrCreateUser event, Emitter<UserState> emit) async {
    final user = await _userRepository.getOrCreateUser(
        uid: event.uid, email: event.email);
    emit(UserState.authenticated(user: user));
  }

  Future<void> _reset(_Reset event, Emitter<UserState> emit) async {
    emit(const UserState.initial());
  }
}
