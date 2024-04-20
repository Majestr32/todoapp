// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todos_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TodosEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userUid) fetchTodos,
    required TResult Function(List<TodoEntity> todos) setTodos,
    required TResult Function(String searchTerm) changeSearchTerm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userUid)? fetchTodos,
    TResult? Function(List<TodoEntity> todos)? setTodos,
    TResult? Function(String searchTerm)? changeSearchTerm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userUid)? fetchTodos,
    TResult Function(List<TodoEntity> todos)? setTodos,
    TResult Function(String searchTerm)? changeSearchTerm,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchTodos value) fetchTodos,
    required TResult Function(_SetTodos value) setTodos,
    required TResult Function(_ChangeSearchTermTodos value) changeSearchTerm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchTodos value)? fetchTodos,
    TResult? Function(_SetTodos value)? setTodos,
    TResult? Function(_ChangeSearchTermTodos value)? changeSearchTerm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchTodos value)? fetchTodos,
    TResult Function(_SetTodos value)? setTodos,
    TResult Function(_ChangeSearchTermTodos value)? changeSearchTerm,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodosEventCopyWith<$Res> {
  factory $TodosEventCopyWith(
          TodosEvent value, $Res Function(TodosEvent) then) =
      _$TodosEventCopyWithImpl<$Res, TodosEvent>;
}

/// @nodoc
class _$TodosEventCopyWithImpl<$Res, $Val extends TodosEvent>
    implements $TodosEventCopyWith<$Res> {
  _$TodosEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchTodosImplCopyWith<$Res> {
  factory _$$FetchTodosImplCopyWith(
          _$FetchTodosImpl value, $Res Function(_$FetchTodosImpl) then) =
      __$$FetchTodosImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userUid});
}

/// @nodoc
class __$$FetchTodosImplCopyWithImpl<$Res>
    extends _$TodosEventCopyWithImpl<$Res, _$FetchTodosImpl>
    implements _$$FetchTodosImplCopyWith<$Res> {
  __$$FetchTodosImplCopyWithImpl(
      _$FetchTodosImpl _value, $Res Function(_$FetchTodosImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userUid = null,
  }) {
    return _then(_$FetchTodosImpl(
      userUid: null == userUid
          ? _value.userUid
          : userUid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchTodosImpl implements _FetchTodos {
  const _$FetchTodosImpl({required this.userUid});

  @override
  final String userUid;

  @override
  String toString() {
    return 'TodosEvent.fetchTodos(userUid: $userUid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchTodosImpl &&
            (identical(other.userUid, userUid) || other.userUid == userUid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userUid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchTodosImplCopyWith<_$FetchTodosImpl> get copyWith =>
      __$$FetchTodosImplCopyWithImpl<_$FetchTodosImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userUid) fetchTodos,
    required TResult Function(List<TodoEntity> todos) setTodos,
    required TResult Function(String searchTerm) changeSearchTerm,
  }) {
    return fetchTodos(userUid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userUid)? fetchTodos,
    TResult? Function(List<TodoEntity> todos)? setTodos,
    TResult? Function(String searchTerm)? changeSearchTerm,
  }) {
    return fetchTodos?.call(userUid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userUid)? fetchTodos,
    TResult Function(List<TodoEntity> todos)? setTodos,
    TResult Function(String searchTerm)? changeSearchTerm,
    required TResult orElse(),
  }) {
    if (fetchTodos != null) {
      return fetchTodos(userUid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchTodos value) fetchTodos,
    required TResult Function(_SetTodos value) setTodos,
    required TResult Function(_ChangeSearchTermTodos value) changeSearchTerm,
  }) {
    return fetchTodos(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchTodos value)? fetchTodos,
    TResult? Function(_SetTodos value)? setTodos,
    TResult? Function(_ChangeSearchTermTodos value)? changeSearchTerm,
  }) {
    return fetchTodos?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchTodos value)? fetchTodos,
    TResult Function(_SetTodos value)? setTodos,
    TResult Function(_ChangeSearchTermTodos value)? changeSearchTerm,
    required TResult orElse(),
  }) {
    if (fetchTodos != null) {
      return fetchTodos(this);
    }
    return orElse();
  }
}

abstract class _FetchTodos implements TodosEvent {
  const factory _FetchTodos({required final String userUid}) = _$FetchTodosImpl;

  String get userUid;
  @JsonKey(ignore: true)
  _$$FetchTodosImplCopyWith<_$FetchTodosImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetTodosImplCopyWith<$Res> {
  factory _$$SetTodosImplCopyWith(
          _$SetTodosImpl value, $Res Function(_$SetTodosImpl) then) =
      __$$SetTodosImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TodoEntity> todos});
}

/// @nodoc
class __$$SetTodosImplCopyWithImpl<$Res>
    extends _$TodosEventCopyWithImpl<$Res, _$SetTodosImpl>
    implements _$$SetTodosImplCopyWith<$Res> {
  __$$SetTodosImplCopyWithImpl(
      _$SetTodosImpl _value, $Res Function(_$SetTodosImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todos = null,
  }) {
    return _then(_$SetTodosImpl(
      todos: null == todos
          ? _value._todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<TodoEntity>,
    ));
  }
}

/// @nodoc

class _$SetTodosImpl implements _SetTodos {
  const _$SetTodosImpl({required final List<TodoEntity> todos})
      : _todos = todos;

  final List<TodoEntity> _todos;
  @override
  List<TodoEntity> get todos {
    if (_todos is EqualUnmodifiableListView) return _todos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todos);
  }

  @override
  String toString() {
    return 'TodosEvent.setTodos(todos: $todos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetTodosImpl &&
            const DeepCollectionEquality().equals(other._todos, _todos));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_todos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetTodosImplCopyWith<_$SetTodosImpl> get copyWith =>
      __$$SetTodosImplCopyWithImpl<_$SetTodosImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userUid) fetchTodos,
    required TResult Function(List<TodoEntity> todos) setTodos,
    required TResult Function(String searchTerm) changeSearchTerm,
  }) {
    return setTodos(todos);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userUid)? fetchTodos,
    TResult? Function(List<TodoEntity> todos)? setTodos,
    TResult? Function(String searchTerm)? changeSearchTerm,
  }) {
    return setTodos?.call(todos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userUid)? fetchTodos,
    TResult Function(List<TodoEntity> todos)? setTodos,
    TResult Function(String searchTerm)? changeSearchTerm,
    required TResult orElse(),
  }) {
    if (setTodos != null) {
      return setTodos(todos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchTodos value) fetchTodos,
    required TResult Function(_SetTodos value) setTodos,
    required TResult Function(_ChangeSearchTermTodos value) changeSearchTerm,
  }) {
    return setTodos(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchTodos value)? fetchTodos,
    TResult? Function(_SetTodos value)? setTodos,
    TResult? Function(_ChangeSearchTermTodos value)? changeSearchTerm,
  }) {
    return setTodos?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchTodos value)? fetchTodos,
    TResult Function(_SetTodos value)? setTodos,
    TResult Function(_ChangeSearchTermTodos value)? changeSearchTerm,
    required TResult orElse(),
  }) {
    if (setTodos != null) {
      return setTodos(this);
    }
    return orElse();
  }
}

abstract class _SetTodos implements TodosEvent {
  const factory _SetTodos({required final List<TodoEntity> todos}) =
      _$SetTodosImpl;

  List<TodoEntity> get todos;
  @JsonKey(ignore: true)
  _$$SetTodosImplCopyWith<_$SetTodosImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeSearchTermTodosImplCopyWith<$Res> {
  factory _$$ChangeSearchTermTodosImplCopyWith(
          _$ChangeSearchTermTodosImpl value,
          $Res Function(_$ChangeSearchTermTodosImpl) then) =
      __$$ChangeSearchTermTodosImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String searchTerm});
}

/// @nodoc
class __$$ChangeSearchTermTodosImplCopyWithImpl<$Res>
    extends _$TodosEventCopyWithImpl<$Res, _$ChangeSearchTermTodosImpl>
    implements _$$ChangeSearchTermTodosImplCopyWith<$Res> {
  __$$ChangeSearchTermTodosImplCopyWithImpl(_$ChangeSearchTermTodosImpl _value,
      $Res Function(_$ChangeSearchTermTodosImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchTerm = null,
  }) {
    return _then(_$ChangeSearchTermTodosImpl(
      searchTerm: null == searchTerm
          ? _value.searchTerm
          : searchTerm // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangeSearchTermTodosImpl implements _ChangeSearchTermTodos {
  const _$ChangeSearchTermTodosImpl({required this.searchTerm});

  @override
  final String searchTerm;

  @override
  String toString() {
    return 'TodosEvent.changeSearchTerm(searchTerm: $searchTerm)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeSearchTermTodosImpl &&
            (identical(other.searchTerm, searchTerm) ||
                other.searchTerm == searchTerm));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchTerm);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeSearchTermTodosImplCopyWith<_$ChangeSearchTermTodosImpl>
      get copyWith => __$$ChangeSearchTermTodosImplCopyWithImpl<
          _$ChangeSearchTermTodosImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userUid) fetchTodos,
    required TResult Function(List<TodoEntity> todos) setTodos,
    required TResult Function(String searchTerm) changeSearchTerm,
  }) {
    return changeSearchTerm(searchTerm);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userUid)? fetchTodos,
    TResult? Function(List<TodoEntity> todos)? setTodos,
    TResult? Function(String searchTerm)? changeSearchTerm,
  }) {
    return changeSearchTerm?.call(searchTerm);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userUid)? fetchTodos,
    TResult Function(List<TodoEntity> todos)? setTodos,
    TResult Function(String searchTerm)? changeSearchTerm,
    required TResult orElse(),
  }) {
    if (changeSearchTerm != null) {
      return changeSearchTerm(searchTerm);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchTodos value) fetchTodos,
    required TResult Function(_SetTodos value) setTodos,
    required TResult Function(_ChangeSearchTermTodos value) changeSearchTerm,
  }) {
    return changeSearchTerm(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchTodos value)? fetchTodos,
    TResult? Function(_SetTodos value)? setTodos,
    TResult? Function(_ChangeSearchTermTodos value)? changeSearchTerm,
  }) {
    return changeSearchTerm?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchTodos value)? fetchTodos,
    TResult Function(_SetTodos value)? setTodos,
    TResult Function(_ChangeSearchTermTodos value)? changeSearchTerm,
    required TResult orElse(),
  }) {
    if (changeSearchTerm != null) {
      return changeSearchTerm(this);
    }
    return orElse();
  }
}

abstract class _ChangeSearchTermTodos implements TodosEvent {
  const factory _ChangeSearchTermTodos({required final String searchTerm}) =
      _$ChangeSearchTermTodosImpl;

  String get searchTerm;
  @JsonKey(ignore: true)
  _$$ChangeSearchTermTodosImplCopyWith<_$ChangeSearchTermTodosImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TodosState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<TodoEntity> todos) loaded,
    required TResult Function(
            List<TodoEntity> allTodos, List<TodoEntity> filteredTodos)
        filtered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<TodoEntity> todos)? loaded,
    TResult? Function(
            List<TodoEntity> allTodos, List<TodoEntity> filteredTodos)?
        filtered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<TodoEntity> todos)? loaded,
    TResult Function(List<TodoEntity> allTodos, List<TodoEntity> filteredTodos)?
        filtered,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadedState value) loaded,
    required TResult Function(_FilteredState value) filtered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadedState value)? loaded,
    TResult? Function(_FilteredState value)? filtered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadedState value)? loaded,
    TResult Function(_FilteredState value)? filtered,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodosStateCopyWith<$Res> {
  factory $TodosStateCopyWith(
          TodosState value, $Res Function(TodosState) then) =
      _$TodosStateCopyWithImpl<$Res, TodosState>;
}

/// @nodoc
class _$TodosStateCopyWithImpl<$Res, $Val extends TodosState>
    implements $TodosStateCopyWith<$Res> {
  _$TodosStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialStateImplCopyWith<$Res> {
  factory _$$InitialStateImplCopyWith(
          _$InitialStateImpl value, $Res Function(_$InitialStateImpl) then) =
      __$$InitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialStateImplCopyWithImpl<$Res>
    extends _$TodosStateCopyWithImpl<$Res, _$InitialStateImpl>
    implements _$$InitialStateImplCopyWith<$Res> {
  __$$InitialStateImplCopyWithImpl(
      _$InitialStateImpl _value, $Res Function(_$InitialStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialStateImpl extends _InitialState {
  const _$InitialStateImpl() : super._();

  @override
  String toString() {
    return 'TodosState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<TodoEntity> todos) loaded,
    required TResult Function(
            List<TodoEntity> allTodos, List<TodoEntity> filteredTodos)
        filtered,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<TodoEntity> todos)? loaded,
    TResult? Function(
            List<TodoEntity> allTodos, List<TodoEntity> filteredTodos)?
        filtered,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<TodoEntity> todos)? loaded,
    TResult Function(List<TodoEntity> allTodos, List<TodoEntity> filteredTodos)?
        filtered,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadedState value) loaded,
    required TResult Function(_FilteredState value) filtered,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadedState value)? loaded,
    TResult? Function(_FilteredState value)? filtered,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadedState value)? loaded,
    TResult Function(_FilteredState value)? filtered,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialState extends TodosState {
  const factory _InitialState() = _$InitialStateImpl;
  const _InitialState._() : super._();
}

/// @nodoc
abstract class _$$LoadedStateImplCopyWith<$Res> {
  factory _$$LoadedStateImplCopyWith(
          _$LoadedStateImpl value, $Res Function(_$LoadedStateImpl) then) =
      __$$LoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TodoEntity> todos});
}

/// @nodoc
class __$$LoadedStateImplCopyWithImpl<$Res>
    extends _$TodosStateCopyWithImpl<$Res, _$LoadedStateImpl>
    implements _$$LoadedStateImplCopyWith<$Res> {
  __$$LoadedStateImplCopyWithImpl(
      _$LoadedStateImpl _value, $Res Function(_$LoadedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todos = null,
  }) {
    return _then(_$LoadedStateImpl(
      todos: null == todos
          ? _value._todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<TodoEntity>,
    ));
  }
}

/// @nodoc

class _$LoadedStateImpl extends _LoadedState {
  const _$LoadedStateImpl({required final List<TodoEntity> todos})
      : _todos = todos,
        super._();

  final List<TodoEntity> _todos;
  @override
  List<TodoEntity> get todos {
    if (_todos is EqualUnmodifiableListView) return _todos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todos);
  }

  @override
  String toString() {
    return 'TodosState.loaded(todos: $todos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedStateImpl &&
            const DeepCollectionEquality().equals(other._todos, _todos));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_todos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedStateImplCopyWith<_$LoadedStateImpl> get copyWith =>
      __$$LoadedStateImplCopyWithImpl<_$LoadedStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<TodoEntity> todos) loaded,
    required TResult Function(
            List<TodoEntity> allTodos, List<TodoEntity> filteredTodos)
        filtered,
  }) {
    return loaded(todos);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<TodoEntity> todos)? loaded,
    TResult? Function(
            List<TodoEntity> allTodos, List<TodoEntity> filteredTodos)?
        filtered,
  }) {
    return loaded?.call(todos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<TodoEntity> todos)? loaded,
    TResult Function(List<TodoEntity> allTodos, List<TodoEntity> filteredTodos)?
        filtered,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(todos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadedState value) loaded,
    required TResult Function(_FilteredState value) filtered,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadedState value)? loaded,
    TResult? Function(_FilteredState value)? filtered,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadedState value)? loaded,
    TResult Function(_FilteredState value)? filtered,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _LoadedState extends TodosState {
  const factory _LoadedState({required final List<TodoEntity> todos}) =
      _$LoadedStateImpl;
  const _LoadedState._() : super._();

  List<TodoEntity> get todos;
  @JsonKey(ignore: true)
  _$$LoadedStateImplCopyWith<_$LoadedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FilteredStateImplCopyWith<$Res> {
  factory _$$FilteredStateImplCopyWith(
          _$FilteredStateImpl value, $Res Function(_$FilteredStateImpl) then) =
      __$$FilteredStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TodoEntity> allTodos, List<TodoEntity> filteredTodos});
}

/// @nodoc
class __$$FilteredStateImplCopyWithImpl<$Res>
    extends _$TodosStateCopyWithImpl<$Res, _$FilteredStateImpl>
    implements _$$FilteredStateImplCopyWith<$Res> {
  __$$FilteredStateImplCopyWithImpl(
      _$FilteredStateImpl _value, $Res Function(_$FilteredStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allTodos = null,
    Object? filteredTodos = null,
  }) {
    return _then(_$FilteredStateImpl(
      allTodos: null == allTodos
          ? _value._allTodos
          : allTodos // ignore: cast_nullable_to_non_nullable
              as List<TodoEntity>,
      filteredTodos: null == filteredTodos
          ? _value._filteredTodos
          : filteredTodos // ignore: cast_nullable_to_non_nullable
              as List<TodoEntity>,
    ));
  }
}

/// @nodoc

class _$FilteredStateImpl extends _FilteredState {
  const _$FilteredStateImpl(
      {required final List<TodoEntity> allTodos,
      required final List<TodoEntity> filteredTodos})
      : _allTodos = allTodos,
        _filteredTodos = filteredTodos,
        super._();

  final List<TodoEntity> _allTodos;
  @override
  List<TodoEntity> get allTodos {
    if (_allTodos is EqualUnmodifiableListView) return _allTodos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allTodos);
  }

  final List<TodoEntity> _filteredTodos;
  @override
  List<TodoEntity> get filteredTodos {
    if (_filteredTodos is EqualUnmodifiableListView) return _filteredTodos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredTodos);
  }

  @override
  String toString() {
    return 'TodosState.filtered(allTodos: $allTodos, filteredTodos: $filteredTodos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilteredStateImpl &&
            const DeepCollectionEquality().equals(other._allTodos, _allTodos) &&
            const DeepCollectionEquality()
                .equals(other._filteredTodos, _filteredTodos));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_allTodos),
      const DeepCollectionEquality().hash(_filteredTodos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilteredStateImplCopyWith<_$FilteredStateImpl> get copyWith =>
      __$$FilteredStateImplCopyWithImpl<_$FilteredStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<TodoEntity> todos) loaded,
    required TResult Function(
            List<TodoEntity> allTodos, List<TodoEntity> filteredTodos)
        filtered,
  }) {
    return filtered(allTodos, filteredTodos);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<TodoEntity> todos)? loaded,
    TResult? Function(
            List<TodoEntity> allTodos, List<TodoEntity> filteredTodos)?
        filtered,
  }) {
    return filtered?.call(allTodos, filteredTodos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<TodoEntity> todos)? loaded,
    TResult Function(List<TodoEntity> allTodos, List<TodoEntity> filteredTodos)?
        filtered,
    required TResult orElse(),
  }) {
    if (filtered != null) {
      return filtered(allTodos, filteredTodos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadedState value) loaded,
    required TResult Function(_FilteredState value) filtered,
  }) {
    return filtered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadedState value)? loaded,
    TResult? Function(_FilteredState value)? filtered,
  }) {
    return filtered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadedState value)? loaded,
    TResult Function(_FilteredState value)? filtered,
    required TResult orElse(),
  }) {
    if (filtered != null) {
      return filtered(this);
    }
    return orElse();
  }
}

abstract class _FilteredState extends TodosState {
  const factory _FilteredState(
      {required final List<TodoEntity> allTodos,
      required final List<TodoEntity> filteredTodos}) = _$FilteredStateImpl;
  const _FilteredState._() : super._();

  List<TodoEntity> get allTodos;
  List<TodoEntity> get filteredTodos;
  @JsonKey(ignore: true)
  _$$FilteredStateImplCopyWith<_$FilteredStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
