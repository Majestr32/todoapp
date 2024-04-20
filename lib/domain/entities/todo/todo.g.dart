// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TodoEntityImpl _$$TodoEntityImplFromJson(Map<String, dynamic> json) =>
    _$TodoEntityImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      subtitle: json['subtitle'] as String,
      createdAt: FirebaseTimestampConverter.fromTimestamp(
          json['created_at'] as Timestamp),
    );

Map<String, dynamic> _$$TodoEntityImplToJson(_$TodoEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'subtitle': instance.subtitle,
    };
