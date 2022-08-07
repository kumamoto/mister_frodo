// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_wrapper.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResponseWrapper<T> _$ResponseWrapperFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    ResponseWrapper<T>(
      (json['docs'] as List<dynamic>).map(fromJsonT).toList(),
      json['total'] as int,
      json['limit'] as int,
      json['offset'] as int,
      json['page'] as int?,
      json['pages'] as int?,
    );

Map<String, dynamic> _$ResponseWrapperToJson<T>(
  ResponseWrapper<T> instance,
  Object? Function(T value) toJsonT,
) {
  final val = <String, dynamic>{
    'docs': instance.docs.map(toJsonT).toList(),
    'total': instance.total,
    'limit': instance.limit,
    'offset': instance.offset,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('page', instance.page);
  writeNotNull('pages', instance.pages);
  return val;
}
