// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/get_rooms_id_response.dart';
import '../models/get_rooms_response.dart';

part 'room_client.g.dart';

@RestApi()
abstract class RoomClient {
  factory RoomClient(Dio dio, {String? baseUrl}) = _RoomClient;

  /// Room: Index
  @GET('/rooms')
  Future<GetRoomsResponse> roomsIndex();

  /// Room: Show
  @GET('/rooms/{id}')
  Future<GetRoomsIdResponse> roomsShow({
    @Path('id') required String id,
  });
}
