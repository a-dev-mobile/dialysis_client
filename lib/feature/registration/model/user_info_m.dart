// ignore_for_file: public_member_api_docs, sort_constructors_first, lines_longer_than_80_chars
import 'dart:convert';

import 'package:dialysis/feature/registration/registration.dart';
import 'package:flutter/cupertino.dart';

@immutable
class UserInfoModel {
  final String name;
  // enum
  final GenderEnum gender;

  // enum
  final ActivityEnum activity;

  final DateTime birthday;

  final int height;
  final double weight;

  // enum
  final CkdEnum ckd;
  final double creatinin;
  final DateTime created;
  final DateTime? updated;
  const UserInfoModel({
    required this.name,
    required this.gender,
    required this.activity,
    required this.birthday,
    required this.height,
    required this.weight,
    required this.ckd,
    required this.creatinin,
    required this.created,
    this.updated,
  });

  UserInfoModel copyWith({
    String? name,
    GenderEnum? gender,
    ActivityEnum? activity,
    DateTime? birthday,
    int? height,
    double? weight,
    CkdEnum? ckd,
    double? creatinin,
    DateTime? created,
    DateTime? updated,
  }) {
    return UserInfoModel(
      name: name ?? this.name,
      gender: gender ?? this.gender,
      activity: activity ?? this.activity,
      birthday: birthday ?? this.birthday,
      height: height ?? this.height,
      weight: weight ?? this.weight,
      ckd: ckd ?? this.ckd,
      creatinin: creatinin ?? this.creatinin,
      created: created ?? this.created,
      updated: updated ?? this.updated,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'gender': gender.index,
      'activity': activity.index,
      'birthday': birthday.millisecondsSinceEpoch,
      'height': height,
      'weight': weight,
      'ckd': ckd.index,
      'creatinin': creatinin,
      'created': created.millisecondsSinceEpoch,
      'updated': updated?.millisecondsSinceEpoch,
    };
  }

  factory UserInfoModel.fromMap(Map<String, dynamic> map) {
    return UserInfoModel(
      name: (map['name'] ?? '') as String,
      gender: GenderEnum.values[(map['gender'] ?? 0) as int],
      activity: ActivityEnum.values[(map['activity'] ?? 0) as int],
      birthday:
          DateTime.fromMillisecondsSinceEpoch((map['birthday'] ?? 0) as int),
      height: (map['height'] ?? 0) as int,
      weight: (map['weight'] ?? 0.0) as double,
      ckd: CkdEnum.values[(map['ckd'] ?? 0) as int],
      creatinin: (map['creatinin'] ?? 0.0) as double,
      created:
          DateTime.fromMillisecondsSinceEpoch((map['created'] ?? 0) as int),
      updated: map['updated'] != null
          ? DateTime.fromMillisecondsSinceEpoch((map['updated'] ?? 0) as int)
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserInfoModel.fromJson(String source) =>
      UserInfoModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'UserInfo(name: $name, gender: $gender, activity: $activity, birthday: $birthday, height: $height, weight: $weight, ckd: $ckd, creatinin: $creatinin, created: $created, updated: $updated)';
  }

  @override
  bool operator ==(covariant UserInfoModel other) {
    if (identical(this, other)) return true;

    return other.name == name &&
        other.gender == gender &&
        other.activity == activity &&
        other.birthday == birthday &&
        other.height == height &&
        other.weight == weight &&
        other.ckd == ckd &&
        other.creatinin == creatinin &&
        other.created == created &&
        other.updated == updated;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        gender.hashCode ^
        activity.hashCode ^
        birthday.hashCode ^
        height.hashCode ^
        weight.hashCode ^
        ckd.hashCode ^
        creatinin.hashCode ^
        created.hashCode ^
        updated.hashCode;
  }
}
