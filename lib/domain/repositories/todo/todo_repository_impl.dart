import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:todoapp/app/consts/firestore.dart';
import 'package:todoapp/app/consts/strings.dart';
import 'package:todoapp/app/exception/exception.dart';
import 'package:todoapp/app/exception/firebase_exception_mapper.dart';
import 'package:todoapp/domain/entities/todo/todo.dart';
import 'package:todoapp/domain/repositories/todo/todo_repository_contract.dart';

class TodoRepositoryImpl implements TodoRepository {
  final FirebaseFirestore _db;

  @override
  Future<TodoEntity> createTodo(
      {required String userUid,
      required String title,
      required String subtitle}) async {
    try {
      final doc = _db
          .collection(AppFirestoreCollections.users)
          .doc(userUid)
          .collection(AppFirestoreCollections.todos)
          .doc();
      await doc.set({
        'id': doc.id,
        'title': title,
        'subtitle': subtitle,
        'created_at': FieldValue.serverTimestamp()
      });
      final snapshot = await doc.get();
      return TodoEntity.fromJson(snapshot.data()!);
    } on FirebaseException catch (e) {
      throw FirebaseExceptionMapper(e).toAppException();
    } catch (e) {
      throw const AppException(message: "Failed to create todo");
    }
  }

  @override
  Stream<List<TodoEntity>> getTodosSnaps({required String userUid}) {
    return _db
        .collection(AppFirestoreCollections.users)
        .doc(userUid)
        .collection(AppFirestoreCollections.todos)
        .orderBy("created_at")
        .snapshots()
        .map((event) {
      return event.docs.map((e) => TodoEntity.fromJson(e.data())).toList();
    });
  }

  @override
  Future<TodoEntity> editTodo(
      {required String userUid,
      required String todoUid,
      required String title,
      required String subtitle}) async {
    try {
      final doc = _db
          .collection(AppFirestoreCollections.users)
          .doc(userUid)
          .collection(AppFirestoreCollections.todos)
          .doc(todoUid);
      await doc.update({
        'title': title,
        'subtitle': subtitle,
      });
      final snapshot = await doc.get();
      return TodoEntity.fromJson(snapshot.data()!);
    } on FirebaseException catch (e) {
      throw FirebaseExceptionMapper(e).toAppException();
    } catch (e) {
      throw const AppException(message: "Failed to update todo");
    }
  }

  @override
  Future<void> deleteTodo({required String userUid, required String todoUid}) {
    try {
      final doc = _db
          .collection(AppFirestoreCollections.users)
          .doc(userUid)
          .collection(AppFirestoreCollections.todos)
          .doc(todoUid);
      return doc.delete();
    } on FirebaseException catch (e) {
      throw FirebaseExceptionMapper(e).toAppException();
    } catch (e) {
      throw const AppException(message: "Failed to delete todo");
    }
  }

  const TodoRepositoryImpl({
    required FirebaseFirestore db,
  }) : _db = db;
}
