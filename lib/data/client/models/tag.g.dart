// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tag.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Tag _$TagFromJson(Map<String, dynamic> json) => Tag(
  id: (json['id'] as num).toInt(),
  localId: json['local_id'] as String,
  name: json['name'] as String,
  hideValue: (json['hide'] as num).toInt(),
  forValue: json['for'] as String,
  taggable: json['taggable'] as String,
);

Map<String, dynamic> _$TagToJson(Tag instance) => <String, dynamic>{
  'id': instance.id,
  'local_id': instance.localId,
  'name': instance.name,
  'hide': instance.hideValue,
  'for': instance.forValue,
  'taggable': instance.taggable,
};
