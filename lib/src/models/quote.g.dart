// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quote.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Quote _$QuoteFromJson(Map<String, dynamic> json) => Quote(
      id: json['_id'] as String,
      dialog: json['dialog'] as String,
      movieId: json['movie'] as String,
      characterId: json['character'] as String,
    );

Map<String, dynamic> _$QuoteToJson(Quote instance) => <String, dynamic>{
      '_id': instance.id,
      'dialog': instance.dialog,
      'movie': instance.movieId,
      'character': instance.characterId,
    };
