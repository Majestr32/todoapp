part of 'todos_bloc.dart';

@freezed
class TodosEvent with _$TodosEvent {
  const factory TodosEvent.fetchTodos({required String userUid}) = _FetchTodos;
  const factory TodosEvent.setTodos({required List<TodoEntity> todos}) = _SetTodos;
  const factory TodosEvent.changeSearchTerm({required String searchTerm}) = _ChangeSearchTermTodos;
}
