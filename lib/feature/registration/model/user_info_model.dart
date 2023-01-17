

import 'package:dialysis/feature/registration/registration.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'user_info_model.freezed.dart';
part 'user_info_model.g.dart';

/// UserInfoModel data class
@freezed
class UserInfoModel with _$UserInfoModel {
  const factory UserInfoModel({
    
    required String name,
    required GenderEnum gender,
    required ActivityEnum activity,
    required DateTime birthday,
    required int height,
    required double weight,
    required CkdEnum ckd,
    required double creatinin,
    required DateTime created,
    DateTime? updated,
  
  
  
  
  }) = _UserInfoModel;
  


  factory UserInfoModel.fromJson(Map<String, Object?> json) => _$UserInfoModelFromJson(json);
}
