// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Movie _$MovieFromJson(Map<String, dynamic> json) => Movie(
      id: json['_id'] as String,
      name: json['name'] as String,
      runtimeInMinutes: json['runtimeInMinutes'] as int,
      budgetInMillions: json['budgetInMillions'] as int,
      boxOfficeRevenueInMillions:
          (json['boxOfficeRevenueInMillions'] as num).toDouble(),
      academyAwardNominations: json['academyAwardNominations'] as int,
      academyAwardWins: json['academyAwardWins'] as int,
      rottenTomatoesScore: (json['rottenTomatoesScore'] as num).toDouble(),
    );

Map<String, dynamic> _$MovieToJson(Movie instance) => <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'runtimeInMinutes': instance.runtimeInMinutes,
      'budgetInMillions': instance.budgetInMillions,
      'boxOfficeRevenueInMillions': instance.boxOfficeRevenueInMillions,
      'academyAwardNominations': instance.academyAwardNominations,
      'academyAwardWins': instance.academyAwardWins,
      'rottenTomatoesScore': instance.rottenTomatoesScore,
    };
