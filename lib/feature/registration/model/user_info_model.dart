import 'dart:convert';

import 'package:dialysis/feature/registration/registration.dart';
import 'package:flutter/foundation.dart';

@immutable
class UserInfoModel {
  /*  */
  final String name;
  /* 
  type:enum
  init: GenderEnum.none
   */
  final EnumGender gender;
  /* 
  type:enum
  init: ActivityEnum.none
   */
  final ActivityEnum activity;
  /*  */
  final DateTime birthday;
  /*  */
  final int height;
  /*  */
  final double weight;
/* 
  type:enum
  init: CkdEnum.none
   */
  final CkdEnum ckd;
  /*  */
  final double creatinin;
  /*  */
  final DateTime created;
  /*  */
  final DateTime? updated;

  // end

  // GENERATED CODE BELOW - DO NOT MODIFY

  const UserInfoModel({
    required this.name,
    this.gender = EnumGender.none,
    this.activity = ActivityEnum.none,
    required this.birthday,
    required this.height,
    required this.weight,
    this.ckd = CkdEnum.none,
    required this.creatinin,
    required this.created,
    this.updated,
  });
  /*
   factory UserInfoModel.init() => UserInfoModel(
        name: '',
        birthday: DateTime.now(),
        height: 0,
        weight: 0,
        creatinin: 0,
        created: DateTime.now(),
      ); 
  */

  UserInfoModel copyWith({
    String? name,
    EnumGender? gender,
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
      'birthday': birthday.toIso8601String(),
      'height': height,
      'weight': weight,
      'ckd': ckd.index,
      'creatinin': creatinin,
      'created': created.toIso8601String(),
      'updated': updated?.toIso8601String(),
    };
  }

  factory UserInfoModel.fromMap(Map<String, dynamic> map) {
    return UserInfoModel(
      name: map['name'] as String,
      gender: EnumGender.values[map['gender'] as int],
      activity: ActivityEnum.values[map['activity'] as int],
      birthday: DateTime.parse(map['birthday'] as String),
      height: map['height'] as int,
      weight: (map['weight'] as num).toDouble(),
      ckd: CkdEnum.values[map['ckd'] as int],
      creatinin: (map['creatinin'] as num).toDouble(),
      created: DateTime.parse(map['created'] as String),
      updated: map['updated'] == null
          ? null
          : DateTime.parse(map['updated'] as String),
    );
  }
  @override
  String toString() {
    return 'UserInfoModel(name: $name, gender: $gender, activity: $activity, birthday: $birthday, height: $height, weight: $weight, ckd: $ckd, creatinin: $creatinin, created: $created, updated: $updated, )';
  }

  String toJson() => json.encode(toMap());

  factory UserInfoModel.fromJson(String source) =>
      UserInfoModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserInfoModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.activity, activity) ||
                other.activity == activity) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.ckd, ckd) || other.ckd == ckd) &&
            (identical(other.creatinin, creatinin) ||
                other.creatinin == creatinin) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        name,
        gender,
        activity,
        birthday,
        height,
        weight,
        ckd,
        creatinin,
        created,
        updated,
      ]);
}
