part of 'delete_todo_bloc.dart';

@freezed
class DeleteTodoState with _$DeleteTodoState {
  const factory DeleteTodoState.initial() = _InitialState;
  const factory DeleteTodoState.loading() = _LoadingState;
  const factory DeleteTodoState.success() = _SuccessState;
  const factory DeleteTodoState.error({required AppException e}) = _ErrorState;
}
