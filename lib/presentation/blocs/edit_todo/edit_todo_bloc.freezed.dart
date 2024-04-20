// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_todo_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EditTodoEvent {
  String get userUid => throw _privateConstructorUsedError;
  String get todoUid => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get subtitle => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String userUid, String todoUid, String title, String subtitle)
        editTodo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String userUid, String todoUid, String title, String subtitle)?
        editTodo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String userUid, String todoUid, String title, String subtitle)?
        editTodo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EditTodo value) editTodo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EditTodo value)? editTodo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditTodo value)? editTodo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditTodoEventCopyWith<EditTodoEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditTodoEventCopyWith<$Res> {
  factory $EditTodoEventCopyWith(
          EditTodoEvent value, $Res Function(EditTodoEvent) then) =
      _$EditTodoEventCopyWithImpl<$Res, EditTodoEvent>;
  @useResult
  $Res call({String userUid, String todoUid, String title, String subtitle});
}

/// @nodoc
class _$EditTodoEventCopyWithImpl<$Res, $Val extends EditTodoEvent>
    implements $EditTodoEventCopyWith<$Res> {
  _$EditTodoEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userUid = null,
    Object? todoUid = null,
    Object? title = null,
    Object? subtitle = null,
  }) {
    return _then(_value.copyWith(
      userUid: null == userUid
          ? _value.userUid
          : userUid // ignore: cast_nullable_to_non_nullable
              as String,
      todoUid: null == todoUid
          ? _value.todoUid
          : todoUid // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: null == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EditTodoImplCopyWith<$Res>
    implements $EditTodoEventCopyWith<$Res> {
  factory _$$EditTodoImplCopyWith(
          _$EditTodoImpl value, $Res Function(_$EditTodoImpl) then) =
      __$$EditTodoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userUid, String todoUid, String title, String subtitle});
}

/// @nodoc
class __$$EditTodoImplCopyWithImpl<$Res>
    extends _$EditTodoEventCopyWithImpl<$Res, _$EditTodoImpl>
    implements _$$EditTodoImplCopyWith<$Res> {
  __$$EditTodoImplCopyWithImpl(
      _$EditTodoImpl _value, $Res Function(_$EditTodoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userUid = null,
    Object? todoUid = null,
    Object? title = null,
    Object? subtitle = null,
  }) {
    return _then(_$EditTodoImpl(
      userUid: null == userUid
          ? _value.userUid
          : userUid // ignore: cast_nullable_to_non_nullable
              as String,
      todoUid: null == todoUid
          ? _value.todoUid
          : todoUid // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: null == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EditTodoImpl implements _EditTodo {
  const _$EditTodoImpl(
      {required this.userUid,
      required this.todoUid,
      required this.title,
      required this.subtitle});

  @override
  final String userUid;
  @override
  final String todoUid;
  @override
  final String title;
  @override
  final String subtitle;

  @override
  String toString() {
    return 'EditTodoEvent.editTodo(userUid: $userUid, todoUid: $todoUid, title: $title, subtitle: $subtitle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditTodoImpl &&
            (identical(other.userUid, userUid) || other.userUid == userUid) &&
            (identical(other.todoUid, todoUid) || other.todoUid == todoUid) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, userUid, todoUid, title, subtitle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditTodoImplCopyWith<_$EditTodoImpl> get copyWith =>
      __$$EditTodoImplCopyWithImpl<_$EditTodoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String userUid, String todoUid, String title, String subtitle)
        editTodo,
  }) {
    return editTodo(userUid, todoUid, title, subtitle);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String userUid, String todoUid, String title, String subtitle)?
        editTodo,
  }) {
    return editTodo?.call(userUid, todoUid, title, subtitle);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String userUid, String todoUid, String title, String subtitle)?
        editTodo,
    required TResult orElse(),
  }) {
    if (editTodo != null) {
      return editTodo(userUid, todoUid, title, subtitle);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EditTodo value) editTodo,
  }) {
    return editTodo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EditTodo value)? editTodo,
  }) {
    return editTodo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditTodo value)? editTodo,
    required TResult orElse(),
  }) {
    if (editTodo != null) {
      return editTodo(this);
    }
    return orElse();
  }
}

abstract class _EditTodo implements EditTodoEvent {
  const factory _EditTodo(
      {required final String userUid,
      required final String todoUid,
      required final String title,
      required final String subtitle}) = _$EditTodoImpl;

  @override
  String get userUid;
  @override
  String get todoUid;
  @override
  String get title;
  @override
  String get subtitle;
  @override
  @JsonKey(ignore: true)
  _$$EditTodoImplCopyWith<_$EditTodoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EditTodoState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(TodoEntity newTodo) success,
    required TResult Function(AppException e) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(TodoEntity newTodo)? success,
    TResult? Function(AppException e)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TodoEntity newTodo)? success,
    TResult Function(AppException e)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_FailState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_FailState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessState value)? success,
    TResult Function(_FailState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditTodoStateCopyWith<$Res> {
  factory $EditTodoStateCopyWith(
          EditTodoState value, $Res Function(EditTodoState) then) =
      _$EditTodoStateCopyWithImpl<$Res, EditTodoState>;
}

/// @nodoc
class _$EditTodoStateCopyWithImpl<$Res, $Val extends EditTodoState>
    implements $EditTodoStateCopyWith<$Res> {
  _$EditTodoStateCopyWithImpl(this._value, this._then);

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
    extends _$EditTodoStateCopyWithImpl<$Res, _$InitialStateImpl>
    implements _$$InitialStateImplCopyWith<$Res> {
  __$$InitialStateImplCopyWithImpl(
      _$InitialStateImpl _value, $Res Function(_$InitialStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialStateImpl implements _InitialState {
  const _$InitialStateImpl();

  @override
  String toString() {
    return 'EditTodoState.initial()';
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
    required TResult Function() loading,
    required TResult Function(TodoEntity newTodo) success,
    required TResult Function(AppException e) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(TodoEntity newTodo)? success,
    TResult? Function(AppException e)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TodoEntity newTodo)? success,
    TResult Function(AppException e)? error,
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
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_FailState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_FailState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessState value)? success,
    TResult Function(_FailState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialState implements EditTodoState {
  const factory _InitialState() = _$InitialStateImpl;
}

/// @nodoc
abstract class _$$LoadingStateImplCopyWith<$Res> {
  factory _$$LoadingStateImplCopyWith(
          _$LoadingStateImpl value, $Res Function(_$LoadingStateImpl) then) =
      __$$LoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingStateImplCopyWithImpl<$Res>
    extends _$EditTodoStateCopyWithImpl<$Res, _$LoadingStateImpl>
    implements _$$LoadingStateImplCopyWith<$Res> {
  __$$LoadingStateImplCopyWithImpl(
      _$LoadingStateImpl _value, $Res Function(_$LoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingStateImpl implements _LoadingState {
  const _$LoadingStateImpl();

  @override
  String toString() {
    return 'EditTodoState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(TodoEntity newTodo) success,
    required TResult Function(AppException e) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(TodoEntity newTodo)? success,
    TResult? Function(AppException e)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TodoEntity newTodo)? success,
    TResult Function(AppException e)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_FailState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_FailState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessState value)? success,
    TResult Function(_FailState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingState implements EditTodoState {
  const factory _LoadingState() = _$LoadingStateImpl;
}

/// @nodoc
abstract class _$$SuccessStateImplCopyWith<$Res> {
  factory _$$SuccessStateImplCopyWith(
          _$SuccessStateImpl value, $Res Function(_$SuccessStateImpl) then) =
      __$$SuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TodoEntity newTodo});

  $TodoEntityCopyWith<$Res> get newTodo;
}

/// @nodoc
class __$$SuccessStateImplCopyWithImpl<$Res>
    extends _$EditTodoStateCopyWithImpl<$Res, _$SuccessStateImpl>
    implements _$$SuccessStateImplCopyWith<$Res> {
  __$$SuccessStateImplCopyWithImpl(
      _$SuccessStateImpl _value, $Res Function(_$SuccessStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newTodo = null,
  }) {
    return _then(_$SuccessStateImpl(
      newTodo: null == newTodo
          ? _value.newTodo
          : newTodo // ignore: cast_nullable_to_non_nullable
              as TodoEntity,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TodoEntityCopyWith<$Res> get newTodo {
    return $TodoEntityCopyWith<$Res>(_value.newTodo, (value) {
      return _then(_value.copyWith(newTodo: value));
    });
  }
}

/// @nodoc

class _$SuccessStateImpl implements _SuccessState {
  const _$SuccessStateImpl({required this.newTodo});

  @override
  final TodoEntity newTodo;

  @override
  String toString() {
    return 'EditTodoState.success(newTodo: $newTodo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessStateImpl &&
            (identical(other.newTodo, newTodo) || other.newTodo == newTodo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newTodo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessStateImplCopyWith<_$SuccessStateImpl> get copyWith =>
      __$$SuccessStateImplCopyWithImpl<_$SuccessStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(TodoEntity newTodo) success,
    required TResult Function(AppException e) error,
  }) {
    return success(newTodo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(TodoEntity newTodo)? success,
    TResult? Function(AppException e)? error,
  }) {
    return success?.call(newTodo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TodoEntity newTodo)? success,
    TResult Function(AppException e)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(newTodo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_FailState value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_FailState value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessState value)? success,
    TResult Function(_FailState value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _SuccessState implements EditTodoState {
  const factory _SuccessState({required final TodoEntity newTodo}) =
      _$SuccessStateImpl;

  TodoEntity get newTodo;
  @JsonKey(ignore: true)
  _$$SuccessStateImplCopyWith<_$SuccessStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailStateImplCopyWith<$Res> {
  factory _$$FailStateImplCopyWith(
          _$FailStateImpl value, $Res Function(_$FailStateImpl) then) =
      __$$FailStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppException e});
}

/// @nodoc
class __$$FailStateImplCopyWithImpl<$Res>
    extends _$EditTodoStateCopyWithImpl<$Res, _$FailStateImpl>
    implements _$$FailStateImplCopyWith<$Res> {
  __$$FailStateImplCopyWithImpl(
      _$FailStateImpl _value, $Res Function(_$FailStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? e = null,
  }) {
    return _then(_$FailStateImpl(
      e: null == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as AppException,
    ));
  }
}

/// @nodoc

class _$FailStateImpl implements _FailState {
  const _$FailStateImpl({required this.e});

  @override
  final AppException e;

  @override
  String toString() {
    return 'EditTodoState.error(e: $e)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailStateImpl &&
            (identical(other.e, e) || other.e == e));
  }

  @override
  int get hashCode => Object.hash(runtimeType, e);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailStateImplCopyWith<_$FailStateImpl> get copyWith =>
      __$$FailStateImplCopyWithImpl<_$FailStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(TodoEntity newTodo) success,
    required TResult Function(AppException e) error,
  }) {
    return error(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(TodoEntity newTodo)? success,
    TResult? Function(AppException e)? error,
  }) {
    return error?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TodoEntity newTodo)? success,
    TResult Function(AppException e)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(e);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_FailState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_FailState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessState value)? success,
    TResult Function(_FailState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _FailState implements EditTodoState {
  const factory _FailState({required final AppException e}) = _$FailStateImpl;

  AppException get e;
  @JsonKey(ignore: true)
  _$$FailStateImplCopyWith<_$FailStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
