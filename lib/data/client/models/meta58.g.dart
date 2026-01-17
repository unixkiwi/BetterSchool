// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meta58.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Meta58 _$Meta58FromJson(Map<String, dynamic> json) => Meta58(
  currentPage: (json['current_page'] as num).toInt(),
  from: (json['from'] as num?)?.toInt(),
  lastPage: (json['last_page'] as num).toInt(),
  links: (json['links'] as List<dynamic>)
      .map((e) => Links3.fromJson(e as Map<String, dynamic>))
      .toList(),
  path: json['path'] as String?,
  perPage: (json['per_page'] as num).toInt(),
  to: (json['to'] as num?)?.toInt(),
  total: (json['total'] as num).toInt(),
);

Map<String, dynamic> _$Meta58ToJson(Meta58 instance) => <String, dynamic>{
  'current_page': instance.currentPage,
  'from': instance.from,
  'last_page': instance.lastPage,
  'links': instance.links,
  'path': instance.path,
  'per_page': instance.perPage,
  'to': instance.to,
  'total': instance.total,
};
