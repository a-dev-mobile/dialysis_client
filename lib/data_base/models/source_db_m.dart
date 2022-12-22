// ignore_for_file: public_member_api_docs, sort_constructors_first, lines_longer_than_80_chars
import 'dart:convert';

import 'package:flutter/foundation.dart';

@immutable
class SourceDbModel {
  final String name;
  final String abbrev;
  final int idSource;

  const SourceDbModel({
    this.name = '',
    this.abbrev = '',
    this.idSource = 0,
  });

  SourceDbModel copyWith({
    String? name,
    String? abbrev,
    int? idSource,
  }) {
    return SourceDbModel(
      name: name ?? this.name,
      abbrev: abbrev ?? this.abbrev,
      idSource: idSource ?? this.idSource,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'abbrev': abbrev,
      'idSource': idSource,
    };
  }

  factory SourceDbModel.fromMap(Map<String, dynamic> map) {
    return SourceDbModel(
      name: map['name'] as String,
      abbrev: map['abbrev'] as String,
      idSource: map['idSource'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory SourceDbModel.fromJson(String source) =>
      SourceDbModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'SourceModel(name: $name, abbrev: $abbrev, idSource: $idSource)';

  @override
  bool operator ==(covariant SourceDbModel other) {
    if (identical(this, other)) return true;

    return other.name == name &&
        other.abbrev == abbrev &&
        other.idSource == idSource;
  }

  @override
  int get hashCode => name.hashCode ^ abbrev.hashCode ^ idSource.hashCode;
}
