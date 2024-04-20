part of 'edit_todo_bloc.dart';

@freezed
class EditTodoState with _$EditTodoState {
  const factory EditTodoState.initial() = _InitialState;
  const factory EditTodoState.loading() = _LoadingState;
  const factory EditTodoState.success({required TodoEntity newTodo}) = _SuccessState;
  const factory EditTodoState.error({required AppException e}) = _FailState;
}
