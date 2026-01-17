// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'school.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

School _$SchoolFromJson(Map<String, dynamic> json) => School(
  id: (json['id'] as num).toInt(),
  customer: json['customer'] as bool,
  name: json['name'] as String,
  email: json['email'] as String,
  type: json['type'] as String?,
  street: json['street'] as String,
  streetNr: json['street_nr'] as String,
  postalCode: json['postal_code'] as String,
  city: json['city'] as String,
  state: json['state'] as String,
  logoUrl: json['logo_url'] as String,
  modules: json['modules'] as List<dynamic>,
  postalSecondLine: json['postal_second_line'] as String?,
);

Map<String, dynamic> _$SchoolToJson(School instance) => <String, dynamic>{
  'id': instance.id,
  'customer': instance.customer,
  'name': instance.name,
  'email': instance.email,
  'type': instance.type,
  'postal_second_line': instance.postalSecondLine,
  'street': instance.street,
  'street_nr': instance.streetNr,
  'postal_code': instance.postalCode,
  'city': instance.city,
  'state': instance.state,
  'logo_url': instance.logoUrl,
  'modules': instance.modules,
};
