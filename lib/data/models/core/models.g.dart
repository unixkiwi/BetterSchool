// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BesteSchuleApiResponse<T> _$BesteSchuleApiResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) => BesteSchuleApiResponse<T>(
  data: _$nullableGenericFromJson(json['data'], fromJsonT),
);

Map<String, dynamic> _$BesteSchuleApiResponseToJson<T>(
  BesteSchuleApiResponse<T> instance,
  Object? Function(T value) toJsonT,
) => <String, dynamic>{'data': _$nullableGenericToJson(instance.data, toJsonT)};

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) => input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) => input == null ? null : toJson(input);
