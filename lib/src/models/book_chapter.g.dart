// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_chapter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookChapter _$BookChapterFromJson(Map<String, dynamic> json) => BookChapter(
      id: json['_id'] as String,
      chapterName: json['chapterName'] as String,
      bookId: json['book'] as String?,
    );

Map<String, dynamic> _$BookChapterToJson(BookChapter instance) {
  final val = <String, dynamic>{
    '_id': instance.id,
    'chapterName': instance.chapterName,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('book', instance.bookId);
  return val;
}
