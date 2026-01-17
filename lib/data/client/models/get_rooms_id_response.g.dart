// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_rooms_id_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetRoomsIdResponse _$GetRoomsIdResponseFromJson(Map<String, dynamic> json) =>
    GetRoomsIdResponse(
      data: Room.fromJson(json['data'] as Map<String, dynamic>),
      meta: Meta104.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GetRoomsIdResponseToJson(GetRoomsIdResponse instance) =>
    <String, dynamic>{'data': instance.data, 'meta': instance.meta};
