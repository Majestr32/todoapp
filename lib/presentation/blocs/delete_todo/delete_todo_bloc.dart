import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todoapp/app/exception/exception.dart';

import '../../../domain/repositories/todo/todo_repository_contract.dart';

part 'delete_todo_event.dart';

part 'delete_todo_state.dart';

part 'delete_todo_bloc.freezed.dart';

class DeleteTodoBloc extends Bloc<DeleteTodoEvent, DeleteTodoState> {
  final TodoRepository _todoRepository;

  DeleteTodoBloc({required TodoRepository todoRepository})
      : _todoRepository = todoRepository,
        super(const DeleteTodoState.initial()) {
    on<DeleteTodoEvent>(_mapEventToState);
  }

  Future<void> _mapEventToState(
          DeleteTodoEvent event, Emitter<DeleteTodoState> emit) =>
      event.map(deleteTodo: (e) => _deleteTodo(e, emit));

  Future<void> _deleteTodo(
      _DeleteTodo event, Emitter<DeleteTodoState> emit) async {
    emit(const DeleteTodoState.loading());
    try {
      await _todoRepository.deleteTodo(
          userUid: event.userUid, todoUid: event.todoUid);
      emit(const DeleteTodoState.success());
      emit(const DeleteTodoState.initial());
    } on AppException catch (e) {
      emit(DeleteTodoState.error(e: e));
      emit(const DeleteTodoState.initial());
    }
  }
}
