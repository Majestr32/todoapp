import 'package:todoapp/domain/entities/todo/todo.dart';

abstract class TodoRepository {
  Future<TodoEntity> createTodo(
      {required String userUid,
      required String title,
      required String subtitle});

  Future<TodoEntity> editTodo(
      {required String userUid,
      required String todoUid,
      required String title,
      required String subtitle});

  Future<void> deleteTodo({required String userUid, required String todoUid});

  Stream<List<TodoEntity>> getTodosSnaps({required String userUid});
}
