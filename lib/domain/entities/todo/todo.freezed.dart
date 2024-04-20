// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TodoEntity _$TodoEntityFromJson(Map<String, dynamic> json) {
  return _TodoEntity.fromJson(json);
}

/// @nodoc
mixin _$TodoEntity {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get subtitle => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'created_at',
      fromJson: FirebaseTimestampConverter.fromTimestamp,
      includeToJson: false)
  DateTime get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TodoEntityCopyWith<TodoEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoEntityCopyWith<$Res> {
  factory $TodoEntityCopyWith(
          TodoEntity value, $Res Function(TodoEntity) then) =
      _$TodoEntityCopyWithImpl<$Res, TodoEntity>;
  @useResult
  $Res call(
      {String id,
      String title,
      String subtitle,
      @JsonKey(
          name: 'created_at',
          fromJson: FirebaseTimestampConverter.fromTimestamp,
          includeToJson: false)
      DateTime createdAt});
}

/// @nodoc
class _$TodoEntityCopyWithImpl<$Res, $Val extends TodoEntity>
    implements $TodoEntityCopyWith<$Res> {
  _$TodoEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? subtitle = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: null == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TodoEntityImplCopyWith<$Res>
    implements $TodoEntityCopyWith<$Res> {
  factory _$$TodoEntityImplCopyWith(
          _$TodoEntityImpl value, $Res Function(_$TodoEntityImpl) then) =
      __$$TodoEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String subtitle,
      @JsonKey(
          name: 'created_at',
          fromJson: FirebaseTimestampConverter.fromTimestamp,
          includeToJson: false)
      DateTime createdAt});
}

/// @nodoc
class __$$TodoEntityImplCopyWithImpl<$Res>
    extends _$TodoEntityCopyWithImpl<$Res, _$TodoEntityImpl>
    implements _$$TodoEntityImplCopyWith<$Res> {
  __$$TodoEntityImplCopyWithImpl(
      _$TodoEntityImpl _value, $Res Function(_$TodoEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? subtitle = null,
    Object? createdAt = null,
  }) {
    return _then(_$TodoEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: null == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TodoEntityImpl implements _TodoEntity {
  const _$TodoEntityImpl(
      {required this.id,
      required this.title,
      required this.subtitle,
      @JsonKey(
          name: 'created_at',
          fromJson: FirebaseTimestampConverter.fromTimestamp,
          includeToJson: false)
      required this.createdAt});

  factory _$TodoEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$TodoEntityImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String subtitle;
  @override
  @JsonKey(
      name: 'created_at',
      fromJson: FirebaseTimestampConverter.fromTimestamp,
      includeToJson: false)
  final DateTime createdAt;

  @override
  String toString() {
    return 'TodoEntity(id: $id, title: $title, subtitle: $subtitle, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, subtitle, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoEntityImplCopyWith<_$TodoEntityImpl> get copyWith =>
      __$$TodoEntityImplCopyWithImpl<_$TodoEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TodoEntityImplToJson(
      this,
    );
  }
}

abstract class _TodoEntity implements TodoEntity {
  const factory _TodoEntity(
      {required final String id,
      required final String title,
      required final String subtitle,
      @JsonKey(
          name: 'created_at',
          fromJson: FirebaseTimestampConverter.fromTimestamp,
          includeToJson: false)
      required final DateTime createdAt}) = _$TodoEntityImpl;

  factory _TodoEntity.fromJson(Map<String, dynamic> json) =
      _$TodoEntityImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get subtitle;
  @override
  @JsonKey(
      name: 'created_at',
      fromJson: FirebaseTimestampConverter.fromTimestamp,
      includeToJson: false)
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$TodoEntityImplCopyWith<_$TodoEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
