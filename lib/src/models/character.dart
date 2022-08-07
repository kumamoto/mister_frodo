import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'character.g.dart';

@JsonSerializable(includeIfNull: false)
class Character extends Equatable {
  @JsonKey(name: "_id")
  final String id;
  final String name;
  final String? height;
  final String? race;
  final String? gender;
  final String? birth;
  final String? spouse;
  final String? death;
  final String? realm;
  final String? hair;
  final String? wikiUrl;

  Character(
      {required this.id,
      required this.height,
      required this.race,
      required this.gender,
      required this.birth,
      required this.spouse,
      required this.death,
      required this.realm,
      required this.hair,
      required this.name,
      required this.wikiUrl});

  factory Character.fromJson(Map<String, dynamic> json) =>
      _$CharacterFromJson(json);

  Map<String, dynamic> toJson() => _$CharacterToJson(this);

  @override
  List<Object?> get props => [
        id,
        height,
        race,
        gender,
        birth,
        spouse,
        death,
        realm,
        hair,
        name,
        wikiUrl,
      ];
}
