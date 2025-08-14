import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';

part 'beste_schule_api_client_impl.g.dart';

@RestApi(baseUrl: "https://5d42a6e2bc64f90014a56ca0.mockapi.io/api/v1")
abstract class BesteSchuleApiClientImpl {
  factory BesteSchuleApiClientImpl(Dio dio, {String? baseUrl}) =
      _BesteSchuleApiClientImpl;

  @GET('/tasks')
  Future<List<Task>> getTasks();
}

@JsonSerializable()
class Task {
  const Task({this.id, this.name, this.avatar, this.createdAt});

  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);

  final String? id;
  final String? name;
  final String? avatar;
  final String? createdAt;

  Map<String, dynamic> toJson() => _$TaskToJson(this);
}
