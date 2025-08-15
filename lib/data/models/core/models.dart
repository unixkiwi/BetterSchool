import 'package:json_annotation/json_annotation.dart';

part 'models.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class BesteSchuleApiResponse<T> {
  final T? data;

  BesteSchuleApiResponse({required this.data});

  factory BesteSchuleApiResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) => _$BesteSchuleApiResponseFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(Object Function(T value) toJsonT) =>
      _$BesteSchuleApiResponseToJson(this, toJsonT);
}
