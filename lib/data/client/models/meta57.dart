// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'links.dart';

part 'meta57.g.dart';

@JsonSerializable()
class Meta57 {
  const Meta57({
    required this.currentPage,
    required this.from,
    required this.lastPage,
    required this.links,
    required this.path,
    required this.perPage,
    required this.to,
    required this.total,
  });
  
  factory Meta57.fromJson(Map<String, Object?> json) => _$Meta57FromJson(json);
  
  @JsonKey(name: 'current_page')
  final int currentPage;
  final int? from;
  @JsonKey(name: 'last_page')
  final int lastPage;

  /// Generated paginator links.
  final List<Links> links;

  /// Base path for paginator generated URLs.
  final String? path;

  /// Number of items shown per page.
  @JsonKey(name: 'per_page')
  final int perPage;

  /// Number of the last item in the slice.
  final int? to;

  /// Total number of items being paginated.
  final int total;

  Map<String, Object?> toJson() => _$Meta57ToJson(this);
}
