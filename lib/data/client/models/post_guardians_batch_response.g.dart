// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_guardians_batch_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostGuardiansBatchResponse _$PostGuardiansBatchResponseFromJson(
  Map<String, dynamic> json,
) => PostGuardiansBatchResponse(
  data: (json['data'] as List<dynamic>)
      .map((e) => Guardian.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$PostGuardiansBatchResponseToJson(
  PostGuardiansBatchResponse instance,
) => <String, dynamic>{'data': instance.data};
