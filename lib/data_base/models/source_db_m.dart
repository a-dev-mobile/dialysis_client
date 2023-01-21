// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

import 'package:flutter/cupertino.dart';

@immutable
class SourceDbModel {
/*  */
  final int id;
  /*  */
  final int id_source;
  /*  */
  final String ru_name;
  /*  */
  final String en_name;
  /*  */
  final String ru_abbrev;
  /*  */
  final String en_abbrev;
  // end

  //  ******************************
  // GENERATED CODE BELOW - DO NOT MODIFY
  //  ******************************

  const SourceDbModel({
    required this.id,
    required this.id_source,
    required this.ru_name,
    required this.en_name,
    required this.ru_abbrev,
    required this.en_abbrev,
  });
  /*
   factory SourceDbModel.init() => SourceDbModel(
        id: 0,
        id_source: 0,
        ru_name: '',
        en_name: '',
        ru_abbrev: '',
        en_abbrev: '',
      ); 
  */

  SourceDbModel copyWith({
    int? id,
    int? id_source,
    String? ru_name,
    String? en_name,
    String? ru_abbrev,
    String? en_abbrev,
  }) {
    return SourceDbModel(
      id: id ?? this.id,
      id_source: id_source ?? this.id_source,
      ru_name: ru_name ?? this.ru_name,
      en_name: en_name ?? this.en_name,
      ru_abbrev: ru_abbrev ?? this.ru_abbrev,
      en_abbrev: en_abbrev ?? this.en_abbrev,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'id_source': id_source,
      'ru_name': ru_name,
      'en_name': en_name,
      'ru_abbrev': ru_abbrev,
      'en_abbrev': en_abbrev,
    };
  }

  factory SourceDbModel.fromMap(Map<String, dynamic> map) {
    return SourceDbModel(
      id: map['id'] as int,
      id_source: map['id_source'] as int,
      ru_name: map['ru_name'] as String,
      en_name: map['en_name'] as String,
      ru_abbrev: map['ru_abbrev'] as String,
      en_abbrev: map['en_abbrev'] as String,
    );
  }
  @override
  String toString() {
    return 'SourceDbModel(id: $id, id_source: $id_source, ru_name: $ru_name, en_name: $en_name, ru_abbrev: $ru_abbrev, en_abbrev: $en_abbrev, )';
  }

  String toJson() => json.encode(toMap());

  factory SourceDbModel.fromJson(String source) =>
      SourceDbModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SourceDbModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.id_source, id_source) ||
                other.id_source == id_source) &&
            (identical(other.ru_name, ru_name) || other.ru_name == ru_name) &&
            (identical(other.en_name, en_name) || other.en_name == en_name) &&
            (identical(other.ru_abbrev, ru_abbrev) ||
                other.ru_abbrev == ru_abbrev) &&
            (identical(other.en_abbrev, en_abbrev) ||
                other.en_abbrev == en_abbrev));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        id_source,
        ru_name,
        en_name,
        ru_abbrev,
        en_abbrev,
      ]);
}
