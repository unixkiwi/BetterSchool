// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_reports_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostReportsResponse _$PostReportsResponseFromJson(Map<String, dynamic> json) =>
    PostReportsResponse(
      data: Report.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PostReportsResponseToJson(
  PostReportsResponse instance,
) => <String, dynamic>{'data': instance.data};
