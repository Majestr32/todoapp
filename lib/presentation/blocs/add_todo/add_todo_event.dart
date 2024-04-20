part of 'add_todo_bloc.dart';

@freezed
class AddTodoEvent with _$AddTodoEvent {
  const factory AddTodoEvent.addTodo(
      {required String userUid,
      required String title,
      required String subtitle}) = _AddTodo;
}
