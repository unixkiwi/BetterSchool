// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_years_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostYearsResponse _$PostYearsResponseFromJson(Map<String, dynamic> json) =>
    PostYearsResponse(
      data: Year.fromJson(json['data'] as Map<String, dynamic>),
      meta: Meta159.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PostYearsResponseToJson(PostYearsResponse instance) =>
    <String, dynamic>{'data': instance.data, 'meta': instance.meta};
