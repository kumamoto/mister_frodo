import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'quote.g.dart';

@JsonSerializable()
class Quote extends Equatable {
  @JsonKey(name: "_id")
  final String id;
  final String dialog;
  @JsonKey(name: "movie")
  final String movieId;
  @JsonKey(name: "character")
  final String characterId;

  Quote(
      {required this.id,
      required this.dialog,
      required this.movieId,
      required this.characterId});

  factory Quote.fromJson(Map<String, dynamic> json) => _$QuoteFromJson(json);

  Map<String, dynamic> toJson() => _$QuoteToJson(this);

  @override
  List<Object?> get props => [id, dialog, movieId, characterId];
}
