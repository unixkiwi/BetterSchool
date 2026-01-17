// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:json_annotation/json_annotation.dart';

import 'links9.dart';

part 'meta70.g.dart';

@JsonSerializable()
class Meta70 {
  const Meta70({
    required this.currentPage,
    required this.from,
    required this.lastPage,
    required this.links,
    required this.path,
    required this.perPage,
    required this.to,
    required this.total,
  });
  
  factory Meta70.fromJson(Map<String, Object?> json) => _$Meta70FromJson(json);
  
  @JsonKey(name: 'current_page')
  final int currentPage;
  final int? from;
  @JsonKey(name: 'last_page')
  final int lastPage;

  /// Generated paginator links.
  final List<Links9> links;

  /// Base path for paginator generated URLs.
  final String? path;

  /// Number of items shown per page.
  @JsonKey(name: 'per_page')
  final int perPage;

  /// Number of the last item in the slice.
  final int? to;

  /// Total number of items being paginated.
  final int total;

  Map<String, Object?> toJson() => _$Meta70ToJson(this);
}
