part of 'todos_bloc.dart';

@freezed
class TodosState with _$TodosState {
  const TodosState._();

  bool get isLoaded =>
      maybeMap(loaded: (_) => true, filtered: (_) => true, orElse: () => false);

  List<TodoEntity> get filteredTodos => maybeMap(
      loaded: (state) => state.todos,
      filtered: (state) => state.filteredTodos,
      orElse: () => []);

  List<TodoEntity> get allTodos => maybeMap(
      loaded: (state) => state.todos,
      filtered: (state) => state.allTodos,
      orElse: () => []);

  const factory TodosState.initial() = _InitialState;

  const factory TodosState.loaded({required List<TodoEntity> todos}) =
      _LoadedState;

  const factory TodosState.filtered(
      {required List<TodoEntity> allTodos,
      required List<TodoEntity> filteredTodos}) = _FilteredState;
}
