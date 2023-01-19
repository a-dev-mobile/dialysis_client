// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserInfoModel _$$_UserInfoModelFromJson(Map<String, dynamic> json) => _$_UserInfoModel(
      s: json['s'] as String,
      s_can_null: json['s_can_null'] as String?,
      b: json['b'] as bool,
      b_can_null: json['b_can_null'] as bool?,
      i: json['i'] as int,
      i_can_null: json['i_can_null'] as int?,
      d: (json['d'] as num).toDouble(),
      d_can_null: (json['d_can_null'] as num?)?.toDouble(),
      n: json['n'] as num,
      n_can_null: json['n_can_null'] as num?,
      l: json['l'] as List<dynamic>,
      l_can_null: json['l_can_null'] as List<dynamic>?,
      lb: (json['lb'] as List<dynamic>).map((e) => e as bool).toList(),
      lb_null: (json['lb_null'] as List<dynamic>).map((e) => e as bool?).toList(),
      lb_can_null: (json['lb_can_null'] as List<dynamic>?)?.map((e) => e as bool).toList(),
      lb_null_can_null: (json['lb_null_can_null'] as List<dynamic>?)?.map((e) => e as bool?).toList(),
      li: (json['li'] as List<dynamic>).map((e) => e as int).toList(),
      li_null: (json['li_null'] as List<dynamic>).map((e) => e as int?).toList(),
      li_can_null: (json['li_can_null'] as List<dynamic>?)?.map((e) => e as int).toList(),
      li_null_can_null: (json['li_null_can_null'] as List<dynamic>?)?.map((e) => e as int?).toList(),
      ls: (json['ls'] as List<dynamic>).map((e) => e as String).toList(),
      ls_null: (json['ls_null'] as List<dynamic>).map((e) => e as String?).toList(),
      ls_can_null: (json['ls_can_null'] as List<dynamic>?)?.map((e) => e as String).toList(),
      ls_null_can_null: (json['ls_null_can_null'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      ld: (json['ld'] as List<dynamic>).map((e) => (e as num).toDouble()).toList(),
      ld_null: (json['ld_null'] as List<dynamic>).map((e) => (e as num?)?.toDouble()).toList(),
      ld_can_null: (json['ld_can_null'] as List<dynamic>?)?.map((e) => (e as num).toDouble()).toList(),
      ld_null_can_null: (json['ld_null_can_null'] as List<dynamic>?)?.map((e) => (e as num?)?.toDouble()).toList(),
      l_map_i_s: (json['l_map_i_s'] as List<dynamic>)
          .map((e) => (e as Map<String, dynamic>).map(
                (k, e) => MapEntry(int.parse(k), e as String),
              ))
          .toList(),
      l_map_i_s_null: (json['l_map_i_s_null'] as List<dynamic>)
          .map((e) => (e as Map<String, dynamic>).map(
                (k, e) => MapEntry(int.parse(k), e as String?),
              ))
          .toList(),
      l_map_i_dyn: (json['l_map_i_dyn'] as List<dynamic>)
          .map((e) => (e as Map<String, dynamic>).map(
                (k, e) => MapEntry(int.parse(k), e),
              ))
          .toList(),
      l_map_i_dyn_can_null: (json['l_map_i_dyn_can_null'] as List<dynamic>?)
          ?.map((e) => (e as Map<String, dynamic>).map(
                (k, e) => MapEntry(int.parse(k), e),
              ))
          .toList(),
      set: (json['set'] as List<dynamic>).toSet(),
      set_can_null: (json['set_can_null'] as List<dynamic>?)?.toSet(),
      set_s: (json['set_s'] as List<dynamic>).map((e) => e as String).toSet(),
      set_s_null: (json['set_s_null'] as List<dynamic>).map((e) => e as String?).toSet(),
      set_s_can_null: (json['set_s_can_null'] as List<dynamic>?)?.map((e) => e as String).toSet(),
      set_s_null_can_null: (json['set_s_null_can_null'] as List<dynamic>?)?.map((e) => e as String?).toSet(),
      set_i: (json['set_i'] as List<dynamic>).map((e) => e as int).toSet(),
      set_i_null: (json['set_i_null'] as List<dynamic>).map((e) => e as int?).toSet(),
      set_i_can_null: (json['set_i_can_null'] as List<dynamic>?)?.map((e) => e as int).toSet(),
      set_i_null_can_null: (json['set_i_null_can_null'] as List<dynamic>?)?.map((e) => e as int?).toSet(),
      set_bool: (json['set_bool'] as List<dynamic>).map((e) => e as bool).toSet(),
      set_bool_null: (json['set_bool_null'] as List<dynamic>).map((e) => e as bool?).toSet(),
      set_bool_can_null: (json['set_bool_can_null'] as List<dynamic>?)?.map((e) => e as bool).toSet(),
      set_bool_null_can_null: (json['set_bool_null_can_null'] as List<dynamic>?)?.map((e) => e as bool?).toSet(),
      set_d: (json['set_d'] as List<dynamic>).map((e) => (e as num).toDouble()).toSet(),
      set_d_null: (json['set_d_null'] as List<dynamic>).map((e) => (e as num?)?.toDouble()).toSet(),
      set_d_can_null: (json['set_d_can_null'] as List<dynamic>?)?.map((e) => (e as num).toDouble()).toSet(),
      set_d_null_can_null: (json['set_d_null_can_null'] as List<dynamic>?)?.map((e) => (e as num?)?.toDouble()).toSet(),
      m: json['m'] as Map<String, dynamic>,
      m_can_null: json['m_can_null'] as Map<String, dynamic>?,
      m_s_dyn: json['m_s_dyn'] as Map<String, dynamic>,
      m_s_dyn_can_null: json['m_s_dyn_can_null'] as Map<String, dynamic>?,
      m_s_b: Map<String, bool>.from(json['m_s_b'] as Map),
      m_s_b_null: Map<String, bool?>.from(json['m_s_b_null'] as Map),
      m_s_b_can_null: (json['m_s_b_can_null'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as bool),
      ),
      m_s_b_null_can_null: (json['m_s_b_null_can_null'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as bool?),
      ),
      m_s_i: Map<String, int>.from(json['m_s_i'] as Map),
      m_s_i_null: Map<String, int?>.from(json['m_s_i_null'] as Map),
      m_s_i_can_null: (json['m_s_i_can_null'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as int),
      ),
      m_s_i_null_can_null: (json['m_s_i_null_can_null'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as int?),
      ),
      m_s_s: Map<String, String>.from(json['m_s_s'] as Map),
      m_s_s_null: Map<String, String?>.from(json['m_s_s_null'] as Map),
      m_s_s_can_null: (json['m_s_s_can_null'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      m_s_s_null_can_null: (json['m_s_s_null_can_null'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String?),
      ),
      m_s_d: (json['m_s_d'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
      m_s_d_null: (json['m_s_d_null'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num?)?.toDouble()),
      ),
      m_s_d_can_null: (json['m_s_d_can_null'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
      m_s_d_null_can_null: (json['m_s_d_null_can_null'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, (e as num?)?.toDouble()),
      ),
      m_i_d: (json['m_i_d'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(int.parse(k), (e as num).toDouble()),
      ),
      m_i_d_null: (json['m_i_d_null'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(int.parse(k), (e as num?)?.toDouble()),
      ),
      m_i_d_can_null: (json['m_i_d_can_null'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(int.parse(k), (e as num).toDouble()),
      ),
      m_i_d_null_can_null: (json['m_i_d_null_can_null'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(int.parse(k), (e as num?)?.toDouble()),
      ),
      m_i_s: (json['m_i_s'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(int.parse(k), e as String),
      ),
      m_i_s_null: (json['m_i_s_null'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(int.parse(k), e as String?),
      ),
      m_i_s_can_null: (json['m_i_s_can_null'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(int.parse(k), e as String),
      ),
      m_i_s_null_can_null: (json['m_i_s_null_can_null'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(int.parse(k), e as String?),
      ),
      m_i_b: (json['m_i_b'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(int.parse(k), e as bool),
      ),
      m_i_b_null: (json['m_i_b_null'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(int.parse(k), e as bool?),
      ),
      m_i_b_can_null: (json['m_i_b_can_null'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(int.parse(k), e as bool),
      ),
      m_i_b_null_can_null: (json['m_i_b_null_can_null'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(int.parse(k), e as bool?),
      ),
      m_i_dyn: (json['m_i_dyn'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(int.parse(k), e),
      ),
      m_i_dyn_can_null: (json['m_i_dyn_can_null'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(int.parse(k), e),
      ),
      m_dyn_dyn: json['m_dyn_dyn'] as Map<String, dynamic>,
      m_dyn_dyn_can_null: json['m_dyn_dyn_can_null'] as Map<String, dynamic>?,
      ldyn_canNull: json['ldyn_canNull'] as List<dynamic>?,
      l_map_i_s_can_null: (json['l_map_i_s_can_null'] as List<dynamic>?)
          ?.map((e) => (e as Map<String, dynamic>).map(
                (k, e) => MapEntry(int.parse(k), e as String),
              ))
          .toList(),
      l_map_i_s_null_can_null: (json['l_map_i_s_null_can_null'] as List<dynamic>?)
          ?.map((e) => (e as Map<String, dynamic>).map(
                (k, e) => MapEntry(int.parse(k), e as String?),
              ))
          .toList(),
      date_time: DateTime.parse(json['date_time'] as String),
      date_time_canNull: json['date_time_canNull'] == null ? null : DateTime.parse(json['date_time_canNull'] as String),
    );

Map<String, dynamic> _$$_UserInfoModelToJson(_$_UserInfoModel instance) {
  final val = <String, dynamic>{
    's': instance.s,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('s_can_null', instance.s_can_null);
  val['b'] = instance.b;
  writeNotNull('b_can_null', instance.b_can_null);
  val['i'] = instance.i;
  writeNotNull('i_can_null', instance.i_can_null);
  val['d'] = instance.d;
  writeNotNull('d_can_null', instance.d_can_null);
  val['n'] = instance.n;
  writeNotNull('n_can_null', instance.n_can_null);
  val['l'] = instance.l;
  writeNotNull('l_can_null', instance.l_can_null);
  val['lb'] = instance.lb;
  val['lb_null'] = instance.lb_null;
  writeNotNull('lb_can_null', instance.lb_can_null);
  writeNotNull('lb_null_can_null', instance.lb_null_can_null);
  val['li'] = instance.li;
  val['li_null'] = instance.li_null;
  writeNotNull('li_can_null', instance.li_can_null);
  writeNotNull('li_null_can_null', instance.li_null_can_null);
  val['ls'] = instance.ls;
  val['ls_null'] = instance.ls_null;
  writeNotNull('ls_can_null', instance.ls_can_null);
  writeNotNull('ls_null_can_null', instance.ls_null_can_null);
  val['ld'] = instance.ld;
  val['ld_null'] = instance.ld_null;
  writeNotNull('ld_can_null', instance.ld_can_null);
  writeNotNull('ld_null_can_null', instance.ld_null_can_null);
  val['l_map_i_s'] = instance.l_map_i_s.map((e) => e.map((k, e) => MapEntry(k.toString(), e))).toList();
  val['l_map_i_s_null'] = instance.l_map_i_s_null.map((e) => e.map((k, e) => MapEntry(k.toString(), e))).toList();
  val['l_map_i_dyn'] = instance.l_map_i_dyn.map((e) => e.map((k, e) => MapEntry(k.toString(), e))).toList();
  writeNotNull('l_map_i_dyn_can_null', instance.l_map_i_dyn_can_null?.map((e) => e.map((k, e) => MapEntry(k.toString(), e))).toList());
  val['set'] = instance.set.toList();
  writeNotNull('set_can_null', instance.set_can_null?.toList());
  val['set_s'] = instance.set_s.toList();
  val['set_s_null'] = instance.set_s_null.toList();
  writeNotNull('set_s_can_null', instance.set_s_can_null?.toList());
  writeNotNull('set_s_null_can_null', instance.set_s_null_can_null?.toList());
  val['set_i'] = instance.set_i.toList();
  val['set_i_null'] = instance.set_i_null.toList();
  writeNotNull('set_i_can_null', instance.set_i_can_null?.toList());
  writeNotNull('set_i_null_can_null', instance.set_i_null_can_null?.toList());
  val['set_bool'] = instance.set_bool.toList();
  val['set_bool_null'] = instance.set_bool_null.toList();
  writeNotNull('set_bool_can_null', instance.set_bool_can_null?.toList());
  writeNotNull('set_bool_null_can_null', instance.set_bool_null_can_null?.toList());
  val['set_d'] = instance.set_d.toList();
  val['set_d_null'] = instance.set_d_null.toList();
  writeNotNull('set_d_can_null', instance.set_d_can_null?.toList());
  writeNotNull('set_d_null_can_null', instance.set_d_null_can_null?.toList());
  val['m'] = instance.m;
  writeNotNull('m_can_null', instance.m_can_null);
  val['m_s_dyn'] = instance.m_s_dyn;
  writeNotNull('m_s_dyn_can_null', instance.m_s_dyn_can_null);
  val['m_s_b'] = instance.m_s_b;
  val['m_s_b_null'] = instance.m_s_b_null;
  writeNotNull('m_s_b_can_null', instance.m_s_b_can_null);
  writeNotNull('m_s_b_null_can_null', instance.m_s_b_null_can_null);
  val['m_s_i'] = instance.m_s_i;
  val['m_s_i_null'] = instance.m_s_i_null;
  writeNotNull('m_s_i_can_null', instance.m_s_i_can_null);
  writeNotNull('m_s_i_null_can_null', instance.m_s_i_null_can_null);
  val['m_s_s'] = instance.m_s_s;
  val['m_s_s_null'] = instance.m_s_s_null;
  writeNotNull('m_s_s_can_null', instance.m_s_s_can_null);
  writeNotNull('m_s_s_null_can_null', instance.m_s_s_null_can_null);
  val['m_s_d'] = instance.m_s_d;
  val['m_s_d_null'] = instance.m_s_d_null;
  writeNotNull('m_s_d_can_null', instance.m_s_d_can_null);
  writeNotNull('m_s_d_null_can_null', instance.m_s_d_null_can_null);
  val['m_i_d'] = instance.m_i_d.map((k, e) => MapEntry(k.toString(), e));
  val['m_i_d_null'] = instance.m_i_d_null.map((k, e) => MapEntry(k.toString(), e));
  writeNotNull('m_i_d_can_null', instance.m_i_d_can_null?.map((k, e) => MapEntry(k.toString(), e)));
  writeNotNull('m_i_d_null_can_null', instance.m_i_d_null_can_null?.map((k, e) => MapEntry(k.toString(), e)));
  val['m_i_s'] = instance.m_i_s.map((k, e) => MapEntry(k.toString(), e));
  val['m_i_s_null'] = instance.m_i_s_null.map((k, e) => MapEntry(k.toString(), e));
  writeNotNull('m_i_s_can_null', instance.m_i_s_can_null?.map((k, e) => MapEntry(k.toString(), e)));
  writeNotNull('m_i_s_null_can_null', instance.m_i_s_null_can_null?.map((k, e) => MapEntry(k.toString(), e)));
  val['m_i_b'] = instance.m_i_b.map((k, e) => MapEntry(k.toString(), e));
  val['m_i_b_null'] = instance.m_i_b_null.map((k, e) => MapEntry(k.toString(), e));
  writeNotNull('m_i_b_can_null', instance.m_i_b_can_null?.map((k, e) => MapEntry(k.toString(), e)));
  writeNotNull('m_i_b_null_can_null', instance.m_i_b_null_can_null?.map((k, e) => MapEntry(k.toString(), e)));
  val['m_i_dyn'] = instance.m_i_dyn.map((k, e) => MapEntry(k.toString(), e));
  writeNotNull('m_i_dyn_can_null', instance.m_i_dyn_can_null?.map((k, e) => MapEntry(k.toString(), e)));
  val['m_dyn_dyn'] = instance.m_dyn_dyn;
  writeNotNull('m_dyn_dyn_can_null', instance.m_dyn_dyn_can_null);
  writeNotNull('ldyn_canNull', instance.ldyn_canNull);
  writeNotNull('l_map_i_s_can_null', instance.l_map_i_s_can_null?.map((e) => e.map((k, e) => MapEntry(k.toString(), e))).toList());
  writeNotNull('l_map_i_s_null_can_null', instance.l_map_i_s_null_can_null?.map((e) => e.map((k, e) => MapEntry(k.toString(), e))).toList());
  val['date_time'] = instance.date_time.toIso8601String();
  writeNotNull('date_time_canNull', instance.date_time_canNull?.toIso8601String());
  return val;
}
