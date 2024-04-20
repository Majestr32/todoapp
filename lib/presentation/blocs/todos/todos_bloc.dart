import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todoapp/domain/entities/todo/todo.dart';
import 'package:todoapp/domain/repositories/todo/todo_repository_contract.dart';

part 'todos_event.dart';

part 'todos_state.dart';

part 'todos_bloc.freezed.dart';

class TodosBloc extends Bloc<TodosEvent, TodosState> {
  final TodoRepository _todoRepository;

  StreamSubscription? _subscription;

  TodosBloc({required TodoRepository todoRepository})
      : _todoRepository = todoRepository,
        super(const TodosState.initial()) {
    on<TodosEvent>(_mapEventToState);
  }

  Future<void> _mapEventToState(TodosEvent event, Emitter<TodosState> emit) =>
      event.map(
          fetchTodos: (e) => _fetchTodos(e, emit),
          setTodos: (e) => _setTodos(e, emit),
          changeSearchTerm: (e) => _changeSearchTerm(e, emit));

  Future<void> _fetchTodos(_FetchTodos event, Emitter<TodosState> emit) async {
    final snaps = _todoRepository.getTodosSnaps(userUid: event.userUid);
    _subscription = snaps.listen((event) {
      add(TodosEvent.setTodos(todos: event));
    });
  }

  Future<void> _changeSearchTerm(
      _ChangeSearchTermTodos event, Emitter<TodosState> emit) async {
    final searchTerm = event.searchTerm.toLowerCase();
    if (searchTerm.isEmpty) {
      emit(TodosState.loaded(todos: state.allTodos));
    }
    final filteredTodos = state.allTodos
        .where((e) =>
            e.title.toLowerCase().contains(searchTerm) ||
            e.subtitle.toLowerCase().contains(searchTerm))
        .toList();
    emit(TodosState.filtered(
        allTodos: state.allTodos, filteredTodos: filteredTodos));
  }

  Future<void> _setTodos(_SetTodos event, Emitter<TodosState> emit) async {
    emit(TodosState.loaded(todos: event.todos));
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }
}
