import 'package:json_annotation/json_annotation.dart';

part 'response_wrapper.g.dart';

@JsonSerializable(genericArgumentFactories: true, includeIfNull: false)
class ResponseWrapper<T> {
  final List<T> docs;
  final int total;
  final int limit;
  final int offset;
  final int? page;
  final int? pages;

  ResponseWrapper(
      this.docs, this.total, this.limit, this.offset, this.page, this.pages);

  factory ResponseWrapper.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) fromJsonT,
  ) =>
      _$ResponseWrapperFromJson<T>(json, fromJsonT);

  Map<String, dynamic> toJson() => _$ResponseWrapperToJson(
        this,
        (value) => value,
      );
}
