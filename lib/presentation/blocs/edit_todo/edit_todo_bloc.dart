import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todoapp/domain/entities/todo/todo.dart';

import '../../../app/exception/exception.dart';
import '../../../domain/repositories/todo/todo_repository_contract.dart';

part 'edit_todo_event.dart';

part 'edit_todo_state.dart';

part 'edit_todo_bloc.freezed.dart';

class EditTodoBloc extends Bloc<EditTodoEvent, EditTodoState> {
  final TodoRepository _todoRepository;

  EditTodoBloc({required TodoRepository todoRepository})
      : _todoRepository = todoRepository,
        super(const EditTodoState.initial()) {
    on<EditTodoEvent>(_mapEventToState);
  }

  Future<void> _mapEventToState(
          EditTodoEvent event, Emitter<EditTodoState> emit) =>
      event.map(editTodo: (e) => _editTodo(e, emit));

  Future<void> _editTodo(_EditTodo event, Emitter<EditTodoState> emit) async {
    emit(const EditTodoState.loading());
    try {
      final newTodo = await _todoRepository.editTodo(
          userUid: event.userUid,
          todoUid: event.todoUid,
          title: event.title,
          subtitle: event.subtitle);
      emit(EditTodoState.success(newTodo: newTodo));
      emit(const EditTodoState.initial());
    } on AppException catch (e) {
      emit(EditTodoState.error(e: e));
      emit(const EditTodoState.initial());
    }
  }
}
