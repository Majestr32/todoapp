import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todoapp/app/exception/exception.dart';

import '../../../domain/repositories/todo/todo_repository_contract.dart';

part 'add_todo_event.dart';

part 'add_todo_state.dart';

part 'add_todo_bloc.freezed.dart';

class AddTodoBloc extends Bloc<AddTodoEvent, AddTodoState> {
  final TodoRepository _todoRepository;
  AddTodoBloc({required TodoRepository todoRepository}) :
        _todoRepository = todoRepository,
        super(const AddTodoState.initial()) {
    on<AddTodoEvent>(_mapEventToState);
  }

  Future<void> _mapEventToState(
          AddTodoEvent event, Emitter<AddTodoState> emit) =>
      event.map(addTodo: (e) => _addTodo(e, emit));

  Future<void> _addTodo(_AddTodo event, Emitter<AddTodoState> emit) async {
    emit(const AddTodoState.loading());
    try{
      await _todoRepository.createTodo(userUid: event.userUid, title: event.title, subtitle: event.subtitle);
      emit(const AddTodoState.success());
      emit(const AddTodoState.initial());
    }on AppException catch(e){
      emit(AddTodoState.error(e: e));
      emit(const AddTodoState.initial());
    }
  }
}
