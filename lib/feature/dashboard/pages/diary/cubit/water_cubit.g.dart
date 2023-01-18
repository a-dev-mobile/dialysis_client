// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'water_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WaterState _$$_WaterStateFromJson(Map<String, dynamic> json) =>
    _$_WaterState(
      isLoadPage: json['isLoadPage'] as bool? ?? false,
      isNextPage: json['isNextPage'] as bool? ?? false,
      sumFullGlass: json['sumFullGlass'] as int,
      sumRecomendGlass: json['sumRecomendGlass'] as int,
      maxWater: (json['maxWater'] as num).toDouble(),
      currentWater: (json['currentWater'] as num).toDouble(),
      volumeGlass: (json['volumeGlass'] as num).toDouble(),
      glassList: (json['glassList'] as List<dynamic>)
          .map((e) => GlassState.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_WaterStateToJson(_$_WaterState instance) =>
    <String, dynamic>{
      'isLoadPage': instance.isLoadPage,
      'isNextPage': instance.isNextPage,
      'sumFullGlass': instance.sumFullGlass,
      'sumRecomendGlass': instance.sumRecomendGlass,
      'maxWater': instance.maxWater,
      'currentWater': instance.currentWater,
      'volumeGlass': instance.volumeGlass,
      'glassList': instance.glassList.map((e) => e.toJson()).toList(),
    };

_$_GlassState _$$_GlassStateFromJson(Map<String, dynamic> json) =>
    _$_GlassState(
      glassStatus: $enumDecode(_$GlassStatusEnumEnumMap, json['glassStatus']),
      idGlass: json['idGlass'] as int,
    );

Map<String, dynamic> _$$_GlassStateToJson(_$_GlassState instance) =>
    <String, dynamic>{
      'glassStatus': _$GlassStatusEnumEnumMap[instance.glassStatus]!,
      'idGlass': instance.idGlass,
    };

const _$GlassStatusEnumEnumMap = {
  GlassStatusEnum.isSimple: 'isSimple',
  GlassStatusEnum.isGood: 'isGood',
  GlassStatusEnum.isBad: 'isBad',
};
