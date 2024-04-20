part of 'edit_todo_bloc.dart';

@freezed
class EditTodoEvent with _$EditTodoEvent {
  const factory EditTodoEvent.editTodo(
      {required String userUid,
        required String todoUid,
        required String title,
        required String subtitle}) = _EditTodo;
}
