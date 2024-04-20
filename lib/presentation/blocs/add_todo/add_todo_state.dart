part of 'add_todo_bloc.dart';

@freezed
class AddTodoState with _$AddTodoState {
  const factory AddTodoState.initial() = _InitialState;
  const factory AddTodoState.loading() = _LoadingState;
  const factory AddTodoState.success() = _SuccessState;
  const factory AddTodoState.error({required AppException e}) = _FailState;
}
