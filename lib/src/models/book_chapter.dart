import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'book_chapter.g.dart';

@JsonSerializable(includeIfNull: false)
class BookChapter extends Equatable {
  @JsonKey(name: "_id")
  final String id;
  final String chapterName;
  @JsonKey(name: "book")
  final String? bookId;

  BookChapter(
      {required this.id, required this.chapterName, required this.bookId});

  factory BookChapter.fromJson(Map<String, dynamic> json) =>
      _$BookChapterFromJson(json);

  Map<String, dynamic> toJson() => _$BookChapterToJson(this);

  @override
  List<Object?> get props => [id, chapterName, bookId];
}
