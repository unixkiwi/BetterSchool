// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

part 'data2.g.dart';

@JsonSerializable()
class Data2 {
  const Data2({
    required this.messageText,
    required this.messageUrl,
  });
  
  factory Data2.fromJson(Map<String, Object?> json) => _$Data2FromJson(json);
  
  @JsonKey(name: 'message_text')
  final String messageText;
  @JsonKey(name: 'message_url')
  final String messageUrl;

  Map<String, Object?> toJson() => _$Data2ToJson(this);
}
