// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) => Data(
  collectionTypeOrder: json['collection_type_order'] as String,
  sortByMainGroup: json['sort_by_main_group'] as String,
  sortByGender: json['sort_by_gender'] as String,
  collectionLabel: json['collection_label'] as String,
);

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
  'collection_type_order': instance.collectionTypeOrder,
  'sort_by_main_group': instance.sortByMainGroup,
  'sort_by_gender': instance.sortByGender,
  'collection_label': instance.collectionLabel,
};
