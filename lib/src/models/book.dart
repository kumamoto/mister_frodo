import 'package:equatable/equatable.dart';
import "package:json_annotation/json_annotation.dart";

part 'book.g.dart';

@JsonSerializable()
class Book extends Equatable {
  @JsonKey(name: "_id")
  final String id;
  final String name;

  Book({required this.id, required this.name});

  factory Book.fromJson(Map<String, dynamic> json) => _$BookFromJson(json);

  Map<String, dynamic> toJson() => _$BookToJson(this);

  @override
  List<Object?> get props => [id, name];
}
