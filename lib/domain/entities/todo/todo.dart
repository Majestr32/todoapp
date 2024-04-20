import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todoapp/app/utils/firebase_timestamp_converter.dart';

part 'todo.freezed.dart';

part 'todo.g.dart';

@freezed
class TodoEntity with _$TodoEntity {
  const factory TodoEntity({
    required String id,
    required String title,
    required String subtitle,
    @JsonKey(
        name: 'created_at',
        fromJson: FirebaseTimestampConverter.fromTimestamp,
        includeToJson: false)
    required DateTime createdAt,
  }) = _TodoEntity;

  factory TodoEntity.fromJson(Map<String, Object?> json) =>
      _$TodoEntityFromJson(json);
}
