import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todoapp/app/utils/firebase_timestamp_converter.dart';

part 'user.freezed.dart';

part 'user.g.dart';

@freezed
class UserEntity with _$UserEntity {
  const factory UserEntity(
      {required String id,
      required String email,
      @JsonKey(
          name: 'created_at',
          fromJson: FirebaseTimestampConverter.fromTimestamp,
          includeToJson: true)
      required DateTime createdAt}) = _UserEntity;

  factory UserEntity.fromJson(Map<String, Object?> json) =>
      _$UserEntityFromJson(json);
}
