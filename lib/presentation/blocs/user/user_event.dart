part of 'user_bloc.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.fetchOrCreateUser({required String uid, required String email}) = _FetchOrCreateUser;
  const factory UserEvent.reset() = _Reset;
}