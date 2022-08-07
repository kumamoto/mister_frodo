// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Character _$CharacterFromJson(Map<String, dynamic> json) => Character(
      id: json['_id'] as String,
      height: json['height'] as String?,
      race: json['race'] as String?,
      gender: json['gender'] as String?,
      birth: json['birth'] as String?,
      spouse: json['spouse'] as String?,
      death: json['death'] as String?,
      realm: json['realm'] as String?,
      hair: json['hair'] as String?,
      name: json['name'] as String,
      wikiUrl: json['wikiUrl'] as String?,
    );

Map<String, dynamic> _$CharacterToJson(Character instance) {
  final val = <String, dynamic>{
    '_id': instance.id,
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('height', instance.height);
  writeNotNull('race', instance.race);
  writeNotNull('gender', instance.gender);
  writeNotNull('birth', instance.birth);
  writeNotNull('spouse', instance.spouse);
  writeNotNull('death', instance.death);
  writeNotNull('realm', instance.realm);
  writeNotNull('hair', instance.hair);
  writeNotNull('wikiUrl', instance.wikiUrl);
  return val;
}
