part of 'delete_todo_bloc.dart';

@freezed
class DeleteTodoEvent with _$DeleteTodoEvent {
  const factory DeleteTodoEvent.deleteTodo(
      {required String userUid, required String todoUid}) = _DeleteTodo;
}
