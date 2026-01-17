// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'links.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Links _$LinksFromJson(Map<String, dynamic> json) => Links(
  url: json['url'] as String?,
  label: json['label'] as String,
  active: json['active'] as bool,
);

Map<String, dynamic> _$LinksToJson(Links instance) => <String, dynamic>{
  'url': instance.url,
  'label': instance.label,
  'active': instance.active,
};
