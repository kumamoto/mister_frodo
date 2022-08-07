import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'movie.g.dart';

@JsonSerializable()
class Movie extends Equatable {
  @JsonKey(name: "_id")
  final String id;
  final String name;
  final int runtimeInMinutes;
  final int budgetInMillions;
  final double boxOfficeRevenueInMillions;
  final int academyAwardNominations;
  final int academyAwardWins;
  final double rottenTomatoesScore;

  Movie(
      {required this.id,
      required this.name,
      required this.runtimeInMinutes,
      required this.budgetInMillions,
      required this.boxOfficeRevenueInMillions,
      required this.academyAwardNominations,
      required this.academyAwardWins,
      required this.rottenTomatoesScore});

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);

  Map<String, dynamic> toJson() => _$MovieToJson(this);

  @override
  List<Object?> get props => [
        id,
        name,
        runtimeInMinutes,
        budgetInMillions,
        boxOfficeRevenueInMillions,
        academyAwardNominations,
        academyAwardWins,
        rottenTomatoesScore,
      ];
}
