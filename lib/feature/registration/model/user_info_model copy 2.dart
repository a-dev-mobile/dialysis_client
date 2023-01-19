// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

import 'package:collection/collection.dart';

import 'package:flutter/cupertino.dart';

@immutable
class TypeVarable2  {                    
  /*  */
  final String s;
  /*  */
  final String? s_can_null;
  /*  */
  final bool b;
  /*  */
  final bool? b_can_null;
  /*  */
  final int i;
  /*  */
  final int? i_can_null;
  /*  */
  final double d;
  /*  */
  final double? d_can_null;
  /*  */
  final num n;
  /*  */
  final num? n_can_null;
  /*  */
  final List l;
  /*  */
  final List? l_can_null;
  /*  */
  final List<bool> lb;
  /*  */
  final List<bool?> lb_null;
  /*  */
  final List<bool>? lb_can_null;
  /*  */
  final List<bool?>? lb_null_can_null;
  /*  */
  final List<int> li;
  /*  */
  final List<int?> li_null;
  /*  */
  final List<int>? li_can_null;
  /*  */
  final List<int?>? li_null_can_null;
  /*  */
  final List<String> ls;
  /*  */
  final List<String?> ls_null;
  /*  */
  final List<String>? ls_can_null;
  /*  */
  final List<String?>? ls_null_can_null;
  /*  */
  final List<double> ld;
  /*  */
  final List<double?> ld_null;
  /*  */
  final List<double>? ld_can_null;
  /*  */
  final List<double?>? ld_null_can_null;
  /*  */
  final List<Map<int, String>> l_map_i_s;
  /*  */
  final List<Map<int, String?>> l_map_i_s_null;
  /*  */
  final List<Map<int, dynamic>> l_map_i_dyn;
  /*  */
  final List<Map<int, dynamic>>? l_map_i_dyn_can_null;
  /*  */
  final Set set;
  /*  */
  final Set? set_can_null;
  /*  */
  final Set<String> set_s;
  /*  */
  final Set<String?> set_s_null;
  /*  */
  final Set<String>? set_s_can_null;
  /*  */
  final Set<String?>? set_s_null_can_null;
  /*  */
  final Set<int> set_i;
  /*  */
  final Set<int?> set_i_null;
  /*  */
  final Set<int>? set_i_can_null;
  /*  */
  final Set<int?>? set_i_null_can_null;
  /*  */
  final Set<bool> set_bool;
  /*  */
  final Set<bool?> set_bool_null;
  /*  */
  final Set<bool>? set_bool_can_null;
  /*  */
  final Set<bool?>? set_bool_null_can_null;
  /*  */
  final Set<double> set_d;
  /*  */
  final Set<double?> set_d_null;
  /*  */
  final Set<double>? set_d_can_null;
  /*  */
  final Set<double?>? set_d_null_can_null;
  /*  */
  final Map m;
  /*  */
  final Map? m_can_null;
  /*  */
  final Map<String, dynamic> m_s_dyn;
  /*  */
  final Map<String, dynamic>? m_s_dyn_can_null;
  /*  */
  final Map<String, bool> m_s_b;
  /*  */
  final Map<String, bool?> m_s_b_null;
  /*  */
  final Map<String, bool>? m_s_b_can_null;
  /*  */
  final Map<String, bool?>? m_s_b_null_can_null;
  /*  */
  final Map<String, int> m_s_i;
  /*  */
  final Map<String, int?> m_s_i_null;
  /*  */
  final Map<String, int>? m_s_i_can_null;
  /*  */
  final Map<String, int?>? m_s_i_null_can_null;
  /*  */
  final Map<String, String> m_s_s;
  /*  */
  final Map<String, String?> m_s_s_null;
  /*  */
  final Map<String, String>? m_s_s_can_null;
  /*  */
  final Map<String, String?>? m_s_s_null_can_null;
  /*  */
  final Map<String, double> m_s_d;
  /*  */
  final Map<String, double?> m_s_d_null;
  /*  */
  final Map<String, double>? m_s_d_can_null;
  /*  */
  final Map<String, double?>? m_s_d_null_can_null;
  /*  */
  final Map<int, double> m_i_d;
  /*  */
  final Map<int, double?> m_i_d_null;
  /*  */
  final Map<int, double>? m_i_d_can_null;
  /*  */
  final Map<int, double?>? m_i_d_null_can_null;
  /*  */
  final Map<int, String> m_i_s;
  /*  */
  final Map<int, String?> m_i_s_null;
  /*  */
  final Map<int, String>? m_i_s_can_null;
  /*  */
  final Map<int, String?>? m_i_s_null_can_null;
  /*  */
  final Map<int, bool> m_i_b;
  /*  */
  final Map<int, bool?> m_i_b_null;
  /*  */
  final Map<int, bool>? m_i_b_can_null;
  /*  */
  final Map<int, bool?>? m_i_b_null_can_null;
  /*  */
  final Map<int, dynamic> m_i_dyn;
  /*  */
  final Map<int, dynamic>? m_i_dyn_can_null;
  /*  */
  final Map<dynamic, dynamic> m_dyn_dyn;
  /*  */
  final Map<dynamic, dynamic>? m_dyn_dyn_can_null;
  /*  */
  final List<dynamic>? ldyn_canNull;
  /*  */
  final List<Map<int, String>>? l_map_i_s_can_null;
  /*  */
  final List<Map<int, String?>>? l_map_i_s_null_can_null;
  /*  */
  final DateTime date_time;
  /*  */
  final DateTime? date_time_canNull;

// end
 
  // GENERATED CODE BELOW - DO NOT MODIFY

  const TypeVarable2({
    required this.s,
    this.s_can_null,
    required this.b,
    this.b_can_null,
    required this.i,
    this.i_can_null,
    required this.d,
    this.d_can_null,
    required this.n,
    this.n_can_null,
    required this.l,
    this.l_can_null,
    required this.lb,
    required this.lb_null,
    this.lb_can_null,
    this.lb_null_can_null,
    required this.li,
    required this.li_null,
    this.li_can_null,
    this.li_null_can_null,
    required this.ls,
    required this.ls_null,
    this.ls_can_null,
    this.ls_null_can_null,
    required this.ld,
    required this.ld_null,
    this.ld_can_null,
    this.ld_null_can_null,
    required this.l_map_i_s,
    required this.l_map_i_s_null,
    required this.l_map_i_dyn,
    this.l_map_i_dyn_can_null,
    required this.set,
    this.set_can_null,
    required this.set_s,
    required this.set_s_null,
    this.set_s_can_null,
    this.set_s_null_can_null,
    required this.set_i,
    required this.set_i_null,
    this.set_i_can_null,
    this.set_i_null_can_null,
    required this.set_bool,
    required this.set_bool_null,
    this.set_bool_can_null,
    this.set_bool_null_can_null,
    required this.set_d,
    required this.set_d_null,
    this.set_d_can_null,
    this.set_d_null_can_null,
    required this.m,
    this.m_can_null,
    required this.m_s_dyn,
    this.m_s_dyn_can_null,
    required this.m_s_b,
    required this.m_s_b_null,
    this.m_s_b_can_null,
    this.m_s_b_null_can_null,
    required this.m_s_i,
    required this.m_s_i_null,
    this.m_s_i_can_null,
    this.m_s_i_null_can_null,
    required this.m_s_s,
    required this.m_s_s_null,
    this.m_s_s_can_null,
    this.m_s_s_null_can_null,
    required this.m_s_d,
    required this.m_s_d_null,
    this.m_s_d_can_null,
    this.m_s_d_null_can_null,
    required this.m_i_d,
    required this.m_i_d_null,
    this.m_i_d_can_null,
    this.m_i_d_null_can_null,
    required this.m_i_s,
    required this.m_i_s_null,
    this.m_i_s_can_null,
    this.m_i_s_null_can_null,
    required this.m_i_b,
    required this.m_i_b_null,
    this.m_i_b_can_null,
    this.m_i_b_null_can_null,
    required this.m_i_dyn,
    this.m_i_dyn_can_null,
    required this.m_dyn_dyn,
    this.m_dyn_dyn_can_null,
    this.ldyn_canNull,
    this.l_map_i_s_can_null,
    this.l_map_i_s_null_can_null,
    required this.date_time,
    this.date_time_canNull,
  });

   factory TypeVarable2.init() => TypeVarable2(
        s: '',
        b: false,
        i: 0,
        d: 0,
        n: 0,
        l: const [],
        lb: const [],
        lb_null: const [],
        li: const [],
        li_null: const [],
        ls: const [],
        ls_null: const [],
        ld: const [],
        ld_null: const [],
        l_map_i_s: const [],
        l_map_i_s_null: const [],
        l_map_i_dyn: const [],
        set: const {},
        set_s: const {},
        set_s_null: const {},
        set_i: const {},
        set_i_null: const {},
        set_bool: const {},
        set_bool_null: const {},
        set_d: const {},
        set_d_null: const {},
        m: const {},
        m_s_dyn: const {},
        m_s_b: const {},
        m_s_b_null: const {},
        m_s_i: const {},
        m_s_i_null: const {},
        m_s_s: const {},
        m_s_s_null: const {},
        m_s_d: const {},
        m_s_d_null: const {},
        m_i_d: const {},
        m_i_d_null: const {},
        m_i_s: const {},
        m_i_s_null: const {},
        m_i_b: const {},
        m_i_b_null: const {},
        m_i_dyn: const {},
        m_dyn_dyn: const {},
        date_time: DateTime.now(),
      ); 


  TypeVarable2 copyWith({
    String? s,
    String? s_can_null,
    bool? b,
    bool? b_can_null,
    int? i,
    int? i_can_null,
    double? d,
    double? d_can_null,
    num? n,
    num? n_can_null,
    List? l,
    List? l_can_null,
    List<bool>? lb,
    List<bool?>? lb_null,
    List<bool>? lb_can_null,
    List<bool?>? lb_null_can_null,
    List<int>? li,
    List<int?>? li_null,
    List<int>? li_can_null,
    List<int?>? li_null_can_null,
    List<String>? ls,
    List<String?>? ls_null,
    List<String>? ls_can_null,
    List<String?>? ls_null_can_null,
    List<double>? ld,
    List<double?>? ld_null,
    List<double>? ld_can_null,
    List<double?>? ld_null_can_null,
    List<Map<int, String>>? l_map_i_s,
    List<Map<int, String?>>? l_map_i_s_null,
    List<Map<int, dynamic>>? l_map_i_dyn,
    List<Map<int, dynamic>>? l_map_i_dyn_can_null,
    Set? set,
    Set? set_can_null,
    Set<String>? set_s,
    Set<String?>? set_s_null,
    Set<String>? set_s_can_null,
    Set<String?>? set_s_null_can_null,
    Set<int>? set_i,
    Set<int?>? set_i_null,
    Set<int>? set_i_can_null,
    Set<int?>? set_i_null_can_null,
    Set<bool>? set_bool,
    Set<bool?>? set_bool_null,
    Set<bool>? set_bool_can_null,
    Set<bool?>? set_bool_null_can_null,
    Set<double>? set_d,
    Set<double?>? set_d_null,
    Set<double>? set_d_can_null,
    Set<double?>? set_d_null_can_null,
    Map? m,
    Map? m_can_null,
    Map<String, dynamic>? m_s_dyn,
    Map<String, dynamic>? m_s_dyn_can_null,
    Map<String, bool>? m_s_b,
    Map<String, bool?>? m_s_b_null,
    Map<String, bool>? m_s_b_can_null,
    Map<String, bool?>? m_s_b_null_can_null,
    Map<String, int>? m_s_i,
    Map<String, int?>? m_s_i_null,
    Map<String, int>? m_s_i_can_null,
    Map<String, int?>? m_s_i_null_can_null,
    Map<String, String>? m_s_s,
    Map<String, String?>? m_s_s_null,
    Map<String, String>? m_s_s_can_null,
    Map<String, String?>? m_s_s_null_can_null,
    Map<String, double>? m_s_d,
    Map<String, double?>? m_s_d_null,
    Map<String, double>? m_s_d_can_null,
    Map<String, double?>? m_s_d_null_can_null,
    Map<int, double>? m_i_d,
    Map<int, double?>? m_i_d_null,
    Map<int, double>? m_i_d_can_null,
    Map<int, double?>? m_i_d_null_can_null,
    Map<int, String>? m_i_s,
    Map<int, String?>? m_i_s_null,
    Map<int, String>? m_i_s_can_null,
    Map<int, String?>? m_i_s_null_can_null,
    Map<int, bool>? m_i_b,
    Map<int, bool?>? m_i_b_null,
    Map<int, bool>? m_i_b_can_null,
    Map<int, bool?>? m_i_b_null_can_null,
    Map<int, dynamic>? m_i_dyn,
    Map<int, dynamic>? m_i_dyn_can_null,
    Map<dynamic, dynamic>? m_dyn_dyn,
    Map<dynamic, dynamic>? m_dyn_dyn_can_null,
    List<dynamic>? ldyn_canNull,
    List<Map<int, String>>? l_map_i_s_can_null,
    List<Map<int, String?>>? l_map_i_s_null_can_null,
    DateTime? date_time,
    DateTime? date_time_canNull,
  }) {
    return TypeVarable2(
      s: s ?? this.s, 
      s_can_null: s_can_null ?? this.s_can_null, 
      b: b ?? this.b, 
      b_can_null: b_can_null ?? this.b_can_null, 
      i: i ?? this.i, 
      i_can_null: i_can_null ?? this.i_can_null, 
      d: d ?? this.d, 
      d_can_null: d_can_null ?? this.d_can_null, 
      n: n ?? this.n, 
      n_can_null: n_can_null ?? this.n_can_null, 
      l: l ?? this.l, 
      l_can_null: l_can_null ?? this.l_can_null, 
      lb: lb ?? this.lb, 
      lb_null: lb_null ?? this.lb_null, 
      lb_can_null: lb_can_null ?? this.lb_can_null, 
      lb_null_can_null: lb_null_can_null ?? this.lb_null_can_null, 
      li: li ?? this.li, 
      li_null: li_null ?? this.li_null, 
      li_can_null: li_can_null ?? this.li_can_null, 
      li_null_can_null: li_null_can_null ?? this.li_null_can_null, 
      ls: ls ?? this.ls, 
      ls_null: ls_null ?? this.ls_null, 
      ls_can_null: ls_can_null ?? this.ls_can_null, 
      ls_null_can_null: ls_null_can_null ?? this.ls_null_can_null, 
      ld: ld ?? this.ld, 
      ld_null: ld_null ?? this.ld_null, 
      ld_can_null: ld_can_null ?? this.ld_can_null, 
      ld_null_can_null: ld_null_can_null ?? this.ld_null_can_null, 
      l_map_i_s: l_map_i_s ?? this.l_map_i_s, 
      l_map_i_s_null: l_map_i_s_null ?? this.l_map_i_s_null, 
      l_map_i_dyn: l_map_i_dyn ?? this.l_map_i_dyn, 
      l_map_i_dyn_can_null: l_map_i_dyn_can_null ?? this.l_map_i_dyn_can_null, 
      set: set ?? this.set, 
      set_can_null: set_can_null ?? this.set_can_null, 
      set_s: set_s ?? this.set_s, 
      set_s_null: set_s_null ?? this.set_s_null, 
      set_s_can_null: set_s_can_null ?? this.set_s_can_null, 
      set_s_null_can_null: set_s_null_can_null ?? this.set_s_null_can_null, 
      set_i: set_i ?? this.set_i, 
      set_i_null: set_i_null ?? this.set_i_null, 
      set_i_can_null: set_i_can_null ?? this.set_i_can_null, 
      set_i_null_can_null: set_i_null_can_null ?? this.set_i_null_can_null, 
      set_bool: set_bool ?? this.set_bool, 
      set_bool_null: set_bool_null ?? this.set_bool_null, 
      set_bool_can_null: set_bool_can_null ?? this.set_bool_can_null, 
      set_bool_null_can_null: set_bool_null_can_null ?? this.set_bool_null_can_null, 
      set_d: set_d ?? this.set_d, 
      set_d_null: set_d_null ?? this.set_d_null, 
      set_d_can_null: set_d_can_null ?? this.set_d_can_null, 
      set_d_null_can_null: set_d_null_can_null ?? this.set_d_null_can_null, 
      m: m ?? this.m, 
      m_can_null: m_can_null ?? this.m_can_null, 
      m_s_dyn: m_s_dyn ?? this.m_s_dyn, 
      m_s_dyn_can_null: m_s_dyn_can_null ?? this.m_s_dyn_can_null, 
      m_s_b: m_s_b ?? this.m_s_b, 
      m_s_b_null: m_s_b_null ?? this.m_s_b_null, 
      m_s_b_can_null: m_s_b_can_null ?? this.m_s_b_can_null, 
      m_s_b_null_can_null: m_s_b_null_can_null ?? this.m_s_b_null_can_null, 
      m_s_i: m_s_i ?? this.m_s_i, 
      m_s_i_null: m_s_i_null ?? this.m_s_i_null, 
      m_s_i_can_null: m_s_i_can_null ?? this.m_s_i_can_null, 
      m_s_i_null_can_null: m_s_i_null_can_null ?? this.m_s_i_null_can_null, 
      m_s_s: m_s_s ?? this.m_s_s, 
      m_s_s_null: m_s_s_null ?? this.m_s_s_null, 
      m_s_s_can_null: m_s_s_can_null ?? this.m_s_s_can_null, 
      m_s_s_null_can_null: m_s_s_null_can_null ?? this.m_s_s_null_can_null, 
      m_s_d: m_s_d ?? this.m_s_d, 
      m_s_d_null: m_s_d_null ?? this.m_s_d_null, 
      m_s_d_can_null: m_s_d_can_null ?? this.m_s_d_can_null, 
      m_s_d_null_can_null: m_s_d_null_can_null ?? this.m_s_d_null_can_null, 
      m_i_d: m_i_d ?? this.m_i_d, 
      m_i_d_null: m_i_d_null ?? this.m_i_d_null, 
      m_i_d_can_null: m_i_d_can_null ?? this.m_i_d_can_null, 
      m_i_d_null_can_null: m_i_d_null_can_null ?? this.m_i_d_null_can_null, 
      m_i_s: m_i_s ?? this.m_i_s, 
      m_i_s_null: m_i_s_null ?? this.m_i_s_null, 
      m_i_s_can_null: m_i_s_can_null ?? this.m_i_s_can_null, 
      m_i_s_null_can_null: m_i_s_null_can_null ?? this.m_i_s_null_can_null, 
      m_i_b: m_i_b ?? this.m_i_b, 
      m_i_b_null: m_i_b_null ?? this.m_i_b_null, 
      m_i_b_can_null: m_i_b_can_null ?? this.m_i_b_can_null, 
      m_i_b_null_can_null: m_i_b_null_can_null ?? this.m_i_b_null_can_null, 
      m_i_dyn: m_i_dyn ?? this.m_i_dyn, 
      m_i_dyn_can_null: m_i_dyn_can_null ?? this.m_i_dyn_can_null, 
      m_dyn_dyn: m_dyn_dyn ?? this.m_dyn_dyn, 
      m_dyn_dyn_can_null: m_dyn_dyn_can_null ?? this.m_dyn_dyn_can_null, 
      ldyn_canNull: ldyn_canNull ?? this.ldyn_canNull, 
      l_map_i_s_can_null: l_map_i_s_can_null ?? this.l_map_i_s_can_null, 
      l_map_i_s_null_can_null: l_map_i_s_null_can_null ?? this.l_map_i_s_null_can_null, 
      date_time: date_time ?? this.date_time, 
      date_time_canNull: date_time_canNull ?? this.date_time_canNull, 
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's': s, 
      's_can_null': s_can_null, 
      'b': b, 
      'b_can_null': b_can_null, 
      'i': i, 
      'i_can_null': i_can_null, 
      'd': d, 
      'd_can_null': d_can_null, 
      'n': n, 
      'n_can_null': n_can_null, 
      'l': l, 
      'l_can_null': l_can_null, 
      'lb': lb, 
      'lb_null': lb_null, 
      'lb_can_null': lb_can_null, 
      'lb_null_can_null': lb_null_can_null, 
      'li': li, 
      'li_null': li_null, 
      'li_can_null': li_can_null, 
      'li_null_can_null': li_null_can_null, 
      'ls': ls, 
      'ls_null': ls_null, 
      'ls_can_null': ls_can_null, 
      'ls_null_can_null': ls_null_can_null, 
      'ld': ld, 
      'ld_null': ld_null, 
      'ld_can_null': ld_can_null, 
      'ld_null_can_null': ld_null_can_null, 
      'l_map_i_s': l_map_i_s.map((e) => e.map((k, e) => MapEntry(k.toString(), e))).toList(), 
      'l_map_i_s_null': l_map_i_s_null.map((e) => e.map((k, e) => MapEntry(k.toString(), e))).toList(), 
      'l_map_i_dyn': l_map_i_dyn.map((e) => e.map((k, e) => MapEntry(k.toString(), e))).toList(), 
      'l_map_i_dyn_can_null': l_map_i_dyn_can_null?.map((e) => e.map((k, e) => MapEntry(k.toString(), e))).toList(), 
      'set': set.toList(), 
      'set_can_null': set_can_null?.toList(), 
      'set_s': set_s.toList(), 
      'set_s_null': set_s_null.toList(), 
      'set_s_can_null': set_s_can_null?.toList(), 
      'set_s_null_can_null': set_s_null_can_null?.toList(), 
      'set_i': set_i.toList(), 
      'set_i_null': set_i_null.toList(), 
      'set_i_can_null': set_i_can_null?.toList(), 
      'set_i_null_can_null': set_i_null_can_null?.toList(), 
      'set_bool': set_bool.toList(), 
      'set_bool_null': set_bool_null.toList(), 
      'set_bool_can_null': set_bool_can_null?.toList(), 
      'set_bool_null_can_null': set_bool_null_can_null?.toList(), 
      'set_d': set_d.toList(), 
      'set_d_null': set_d_null.toList(), 
      'set_d_can_null': set_d_can_null?.toList(), 
      'set_d_null_can_null': set_d_null_can_null?.toList(), 
      'm': m.map((k, e) => MapEntry(k.toString(), e)), 
      'm_can_null': m_can_null?.map((k, e) => MapEntry(k.toString(), e)), 
      'm_s_dyn': m_s_dyn.map(MapEntry.new), 
      'm_s_dyn_can_null': m_s_dyn_can_null?.map(MapEntry.new), 
      'm_s_b': m_s_b.map(MapEntry.new), 
      'm_s_b_null': m_s_b_null.map(MapEntry.new), 
      'm_s_b_can_null': m_s_b_can_null?.map(MapEntry.new), 
      'm_s_b_null_can_null': m_s_b_null_can_null?.map(MapEntry.new), 
      'm_s_i': m_s_i.map(MapEntry.new), 
      'm_s_i_null': m_s_i_null.map(MapEntry.new), 
      'm_s_i_can_null': m_s_i_can_null?.map(MapEntry.new), 
      'm_s_i_null_can_null': m_s_i_null_can_null?.map(MapEntry.new), 
      'm_s_s': m_s_s.map(MapEntry.new), 
      'm_s_s_null': m_s_s_null.map(MapEntry.new), 
      'm_s_s_can_null': m_s_s_can_null?.map(MapEntry.new), 
      'm_s_s_null_can_null': m_s_s_null_can_null?.map(MapEntry.new), 
      'm_s_d': m_s_d.map(MapEntry.new), 
      'm_s_d_null': m_s_d_null.map(MapEntry.new), 
      'm_s_d_can_null': m_s_d_can_null?.map(MapEntry.new), 
      'm_s_d_null_can_null': m_s_d_null_can_null?.map(MapEntry.new), 
      'm_i_d': m_i_d.map((k, e) => MapEntry(k.toString(), e)), 
      'm_i_d_null': m_i_d_null.map((k, e) => MapEntry(k.toString(), e)), 
      'm_i_d_can_null': m_i_d_can_null?.map((k, e) => MapEntry(k.toString(), e)), 
      'm_i_d_null_can_null': m_i_d_null_can_null?.map((k, e) => MapEntry(k.toString(), e)), 
      'm_i_s': m_i_s.map((k, e) => MapEntry(k.toString(), e)), 
      'm_i_s_null': m_i_s_null.map((k, e) => MapEntry(k.toString(), e)), 
      'm_i_s_can_null': m_i_s_can_null?.map((k, e) => MapEntry(k.toString(), e)), 
      'm_i_s_null_can_null': m_i_s_null_can_null?.map((k, e) => MapEntry(k.toString(), e)), 
      'm_i_b': m_i_b.map((k, e) => MapEntry(k.toString(), e)), 
      'm_i_b_null': m_i_b_null.map((k, e) => MapEntry(k.toString(), e)), 
      'm_i_b_can_null': m_i_b_can_null?.map((k, e) => MapEntry(k.toString(), e)), 
      'm_i_b_null_can_null': m_i_b_null_can_null?.map((k, e) => MapEntry(k.toString(), e)), 
      'm_i_dyn': m_i_dyn.map((k, e) => MapEntry(k.toString(), e)), 
      'm_i_dyn_can_null': m_i_dyn_can_null?.map((k, e) => MapEntry(k.toString(), e)), 
      'm_dyn_dyn': m_dyn_dyn.map((k, e) => MapEntry(k.toString(), e)), 
      'm_dyn_dyn_can_null': m_dyn_dyn_can_null?.map((k, e) => MapEntry(k.toString(), e)), 
      'ldyn_canNull': ldyn_canNull, 
      'l_map_i_s_can_null': l_map_i_s_can_null?.map((e) => e.map((k, e) => MapEntry(k.toString(), e))).toList(), 
      'l_map_i_s_null_can_null': l_map_i_s_null_can_null?.map((e) => e.map((k, e) => MapEntry(k.toString(), e))).toList(), 
      'date_time': date_time.toIso8601String(), 
      'date_time_canNull': date_time_canNull?.toIso8601String(), 
    };
  }

  factory TypeVarable2.fromMap(Map<String, dynamic> map) {
    return TypeVarable2(
      s: map['s'] as String, 
      s_can_null: map['s_can_null'] as String?, 
      b: map['b'] as bool, 
      b_can_null: map['b_can_null'] as bool?, 
      i: map['i'] as int, 
      i_can_null: map['i_can_null'] as int?, 
      d: (map['d'] as num).toDouble(), 
      d_can_null: (map['d_can_null'] as num?)?.toDouble(), 
      n: map['n'] as num, 
      n_can_null: map['n_can_null'] as num?, 
      l: map['l'] as List<dynamic>, 
      l_can_null: map['l_can_null'] as List<dynamic>, 
      lb: (map['lb'] as List<dynamic>).map((e) => e as bool).toList(), 
      lb_null: (map['lb_null'] as List<dynamic>).map((e) => e as bool?).toList(), 
      lb_can_null: (map['lb_can_null'] as List<dynamic>?)?.map((e) => e as bool).toList(), 
      lb_null_can_null: (map['lb_null_can_null'] as List<dynamic>?)?.map((e) => e as bool?).toList(), 
      li: (map['li'] as List<dynamic>).map((e) => e as int).toList(), 
      li_null: (map['li_null'] as List<dynamic>).map((e) => e as int).toList(), 
      li_can_null: (map['li_can_null'] as List<dynamic>?)?.map((e) => e as int).toList(), 
      li_null_can_null: (map['li_null_can_null'] as List<dynamic>?)?.map((e) => e as int?).toList(), 
      ls: (map['ls'] as List<dynamic>).map((e) => e as String).toList(), 
      ls_null: (map['ls_null'] as List<dynamic>).map((e) => e as String).toList(), 
      ls_can_null: (map['ls_can_null'] as List<dynamic>?)?.map((e) => e as String).toList(), 
      ls_null_can_null: (map['ls_null_can_null'] as List<dynamic>?)?.map((e) => e as String?).toList(), 
      ld: (map['ld'] as List<dynamic>).map((e) => (e as num).toDouble()).toList(), 
      ld_null: (map['ld_null'] as List<dynamic>).map((e) => (e as num?)?.toDouble()).toList(), 
      ld_can_null: (map['ld_can_null'] as List<dynamic>?)?.map((e) => (e as num).toDouble()).toList(), 
      ld_null_can_null: (map['ld_null_can_null'] as List<dynamic>?)?.map((e) => (e as num?)?.toDouble()).toList(), 
      l_map_i_s: (map['l_map_i_s'] as List<dynamic>).map((e) => (e as Map<String, dynamic>).map((k, e) => MapEntry(int.parse(k), e as String))).toList(), 
      l_map_i_s_null: (map['l_map_i_s_null'] as List<dynamic>) .map((e) => (e as Map<String, dynamic>).map((k, e) => MapEntry(int.parse(k), e as String))).toList(), 
      l_map_i_dyn: (map['l_map_i_dyn'] as List<dynamic>).map((e) => (e as Map<String, dynamic>).map((k, e) => MapEntry(int.parse(k), e))).toList(), 
      l_map_i_dyn_can_null: (map['l_map_i_dyn_can_null'] as List<dynamic>?)?.map((e) => (e as Map<String, dynamic>).map((k, e) => MapEntry(int.parse(k), e))).toList(), 
      set: (map['set'] as List<dynamic>).toSet(), 
      set_can_null: (map['set_can_null'] as List<dynamic>?)?.toSet(), 
      set_s: (map['set_s'] as List<dynamic>).map((e) => e as String).toSet(), 
      set_s_null: (map['set_s_null'] as List<dynamic>).map((e) => e as String?).toSet(), 
      set_s_can_null: (map['set_s_can_null'] as List<dynamic>?)?.map((e) => e as String).toSet(), 
      set_s_null_can_null: (map['set_s_null_can_null'] as List<dynamic>?)?.map((e) => e as String?).toSet(), 
      set_i: (map['set_i'] as List<dynamic>).map((e) => e as int).toSet(), 
      set_i_null: (map['set_i_null'] as List<dynamic>).map((e) => e as int?).toSet(), 
      set_i_can_null: (map['set_i_can_null'] as List<dynamic>?)?.map((e) => e as int).toSet(), 
      set_i_null_can_null: (map['set_i_null_can_null'] as List<dynamic>?)?.map((e) => e as int?).toSet(), 
      set_bool: (map['set_bool'] as List<dynamic>).map((e) => e as bool).toSet(), 
      set_bool_null: (map['set_bool_null'] as List<dynamic>).map((e) => e as bool?).toSet(), 
      set_bool_can_null: (map['set_bool_can_null'] as List<dynamic>?)?.map((e) => e as bool).toSet(), 
      set_bool_null_can_null: (map['set_bool_null_can_null'] as List<dynamic>?)?.map((e) => e as bool?).toSet(), 
      set_d: (map['set_d'] as List<dynamic>).map((e) => (e as num).toDouble()).toSet(), 
      set_d_null: (map['set_d_null'] as List<dynamic>).map((e) => (e as num?)?.toDouble()).toSet(), 
      set_d_can_null: (map['set_d_can_null'] as List<dynamic>?)?.map((e) => (e as num).toDouble()).toSet(), 
      set_d_null_can_null: (map['set_d_null_can_null'] as List<dynamic>?)?.map((e) => (e as num?)?.toDouble()).toSet(), 
      m: map['m'] as Map<String, dynamic>, 
      m_can_null: map['m_can_null'] as Map<String, dynamic>?, 
      m_s_dyn: map['m_s_dyn'] as Map<String, dynamic>, 
      m_s_dyn_can_null: map['m_s_dyn_can_null'] as Map<String, dynamic>?, 
      m_s_b: Map<String, bool>.from(map['m_s_b'] as Map), 
      m_s_b_null: Map<String, bool>.from(map['m_s_b_null'] as Map), 
      m_s_b_can_null: (map['m_s_b_can_null'] as Map<String, dynamic>?)?.map((k, e) => MapEntry(k, e as bool)), 
      m_s_b_null_can_null: (map['m_s_b_null_can_null'] as Map<String, dynamic>?)?.map((k, e) => MapEntry(k, e as bool?)), 
      m_s_i:  Map<String, int>.from(map['m_s_i'] as Map), 
      m_s_i_null: Map<String, int>.from(map['m_s_i_null'] as Map), 
      m_s_i_can_null: (map['m_s_i_can_null'] as Map<String, dynamic>?)?.map( (k, e) => MapEntry(k, e as int)), 
      m_s_i_null_can_null: (map['m_s_i_null_can_null'] as Map<String, dynamic>?)?.map( (k, e) => MapEntry(k, e as int?)), 
      m_s_s: Map<String, String>.from(map['m_s_s'] as Map), 
      m_s_s_null: Map<String, String>.from(map['m_s_s_null'] as Map), 
      m_s_s_can_null: error, 
      m_s_s_null_can_null: error, 
      m_s_d: (map['m_s_d'] as Map<String, dynamic>).map((k, e) => MapEntry(k, (e as num).toDouble())), 
      m_s_d_null: (map['m_s_d_null'] as Map<String, dynamic>).map((k, e) => MapEntry(k, (e as num?)?.toDouble())), 
      m_s_d_can_null: error, 
      m_s_d_null_can_null: error, 
      m_i_d: (map['m_i_d'] as Map<String, dynamic>).map((k, e) => MapEntry(int.parse(k), (e as num).toDouble())), 
      m_i_d_null: (map['m_i_d_null'] as Map<String, dynamic>).map((k, e) => MapEntry(int.parse(k), (e as num?)?.toDouble())), 
      m_i_d_can_null: error, 
      m_i_d_null_can_null: error, 
      m_i_s: (map['m_i_s'] as Map<String, dynamic>).map((k, e) => MapEntry(int.parse(k), e as String)), 
      m_i_s_null: (map['m_i_s_null'] as Map<String, dynamic>).map((k, e) => MapEntry(int.parse(k), e as String?)), 
      m_i_s_can_null: error, 
      m_i_s_null_can_null: error, 
      m_i_b: (map['m_i_b'] as Map<String, dynamic>).map((k, e) => MapEntry(int.parse(k), e as bool)), 
      m_i_b_null: (map['m_i_b_null'] as Map<String, dynamic>).map((k, e) => MapEntry(int.parse(k), e as bool?)), 
      m_i_b_can_null: error, 
      m_i_b_null_can_null: error, 
      m_i_dyn: (map['m_i_dyn'] as Map<String, dynamic>).map( (k, e) => MapEntry(int.parse(k), e)), 
      m_i_dyn_can_null: error, 
      m_dyn_dyn: map['m_dyn_dyn'] as Map<String, dynamic>, 
      m_dyn_dyn_can_null: error, 
      ldyn_canNull: map['ldyn_canNull'] as List<dynamic>?, 
      l_map_i_s_can_null: (map['l_map_i_s_can_null']  as List<dynamic>?)?.map((e) => (e as Map<String, dynamic>).map( (k, e) => MapEntry(int.parse(k), e as String), )) .toList(), 
      l_map_i_s_null_can_null: (map['l_map_i_s_null_can_null'] as List<dynamic>?)?.map((e) => (e as Map<String, dynamic>).map((k, e) => MapEntry(int.parse(k), e as String), )).toList(), 
      date_time: DateTime.parse(map['date_time'] as String), 
      date_time_canNull: map['date_time_canNull'] == null ? null : DateTime.parse(map['date_time_canNull'] as String), 
    );
  }
  @override
  String toString() {
    return 'TypeVarable2(s: $s, s_can_null: $s_can_null, b: $b, b_can_null: $b_can_null, i: $i, i_can_null: $i_can_null, d: $d, d_can_null: $d_can_null, n: $n, n_can_null: $n_can_null, l: $l, l_can_null: $l_can_null, lb: $lb, lb_null: $lb_null, lb_can_null: $lb_can_null, lb_null_can_null: $lb_null_can_null, li: $li, li_null: $li_null, li_can_null: $li_can_null, li_null_can_null: $li_null_can_null, ls: $ls, ls_null: $ls_null, ls_can_null: $ls_can_null, ls_null_can_null: $ls_null_can_null, ld: $ld, ld_null: $ld_null, ld_can_null: $ld_can_null, ld_null_can_null: $ld_null_can_null, l_map_i_s: $l_map_i_s, l_map_i_s_null: $l_map_i_s_null, l_map_i_dyn: $l_map_i_dyn, l_map_i_dyn_can_null: $l_map_i_dyn_can_null, set: $set, set_can_null: $set_can_null, set_s: $set_s, set_s_null: $set_s_null, set_s_can_null: $set_s_can_null, set_s_null_can_null: $set_s_null_can_null, set_i: $set_i, set_i_null: $set_i_null, set_i_can_null: $set_i_can_null, set_i_null_can_null: $set_i_null_can_null, set_bool: $set_bool, set_bool_null: $set_bool_null, set_bool_can_null: $set_bool_can_null, set_bool_null_can_null: $set_bool_null_can_null, set_d: $set_d, set_d_null: $set_d_null, set_d_can_null: $set_d_can_null, set_d_null_can_null: $set_d_null_can_null, m: $m, m_can_null: $m_can_null, m_s_dyn: $m_s_dyn, m_s_dyn_can_null: $m_s_dyn_can_null, m_s_b: $m_s_b, m_s_b_null: $m_s_b_null, m_s_b_can_null: $m_s_b_can_null, m_s_b_null_can_null: $m_s_b_null_can_null, m_s_i: $m_s_i, m_s_i_null: $m_s_i_null, m_s_i_can_null: $m_s_i_can_null, m_s_i_null_can_null: $m_s_i_null_can_null, m_s_s: $m_s_s, m_s_s_null: $m_s_s_null, m_s_s_can_null: $m_s_s_can_null, m_s_s_null_can_null: $m_s_s_null_can_null, m_s_d: $m_s_d, m_s_d_null: $m_s_d_null, m_s_d_can_null: $m_s_d_can_null, m_s_d_null_can_null: $m_s_d_null_can_null, m_i_d: $m_i_d, m_i_d_null: $m_i_d_null, m_i_d_can_null: $m_i_d_can_null, m_i_d_null_can_null: $m_i_d_null_can_null, m_i_s: $m_i_s, m_i_s_null: $m_i_s_null, m_i_s_can_null: $m_i_s_can_null, m_i_s_null_can_null: $m_i_s_null_can_null, m_i_b: $m_i_b, m_i_b_null: $m_i_b_null, m_i_b_can_null: $m_i_b_can_null, m_i_b_null_can_null: $m_i_b_null_can_null, m_i_dyn: $m_i_dyn, m_i_dyn_can_null: $m_i_dyn_can_null, m_dyn_dyn: $m_dyn_dyn, m_dyn_dyn_can_null: $m_dyn_dyn_can_null, ldyn_canNull: $ldyn_canNull, l_map_i_s_can_null: $l_map_i_s_can_null, l_map_i_s_null_can_null: $l_map_i_s_null_can_null, date_time: $date_time, date_time_canNull: $date_time_canNull, )';
  }
  String toJson() => json.encode(toMap());

  factory TypeVarable2.fromJson(String source) => TypeVarable2.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TypeVarable2 &&
            (identical(other.s, s) || other.s == s) && 
            (identical(other.s_can_null, s_can_null) || other.s_can_null == s_can_null) && 
            (identical(other.b, b) || other.b == b) && 
            (identical(other.b_can_null, b_can_null) || other.b_can_null == b_can_null) && 
            (identical(other.i, i) || other.i == i) && 
            (identical(other.i_can_null, i_can_null) || other.i_can_null == i_can_null) && 
            (identical(other.d, d) || other.d == d) && 
            (identical(other.d_can_null, d_can_null) || other.d_can_null == d_can_null) && 
            (identical(other.n, n) || other.n == n) && 
            (identical(other.n_can_null, n_can_null) || other.n_can_null == n_can_null) && 
            const DeepCollectionEquality().equals(other.l, l) && 
            const DeepCollectionEquality().equals(other.l_can_null, l_can_null) && 
            const DeepCollectionEquality().equals(other.lb, lb) && 
            const DeepCollectionEquality().equals(other.lb_null, lb_null) && 
            const DeepCollectionEquality().equals(other.lb_can_null, lb_can_null) && 
            const DeepCollectionEquality().equals(other.lb_null_can_null, lb_null_can_null) && 
            const DeepCollectionEquality().equals(other.li, li) && 
            const DeepCollectionEquality().equals(other.li_null, li_null) && 
            const DeepCollectionEquality().equals(other.li_can_null, li_can_null) && 
            const DeepCollectionEquality().equals(other.li_null_can_null, li_null_can_null) && 
            const DeepCollectionEquality().equals(other.ls, ls) && 
            const DeepCollectionEquality().equals(other.ls_null, ls_null) && 
            const DeepCollectionEquality().equals(other.ls_can_null, ls_can_null) && 
            const DeepCollectionEquality().equals(other.ls_null_can_null, ls_null_can_null) && 
            const DeepCollectionEquality().equals(other.ld, ld) && 
            const DeepCollectionEquality().equals(other.ld_null, ld_null) && 
            const DeepCollectionEquality().equals(other.ld_can_null, ld_can_null) && 
            const DeepCollectionEquality().equals(other.ld_null_can_null, ld_null_can_null) && 
            const DeepCollectionEquality().equals(other.l_map_i_s, l_map_i_s) && 
            const DeepCollectionEquality().equals(other.l_map_i_s_null, l_map_i_s_null) && 
            const DeepCollectionEquality().equals(other.l_map_i_dyn, l_map_i_dyn) && 
            const DeepCollectionEquality().equals(other.l_map_i_dyn_can_null, l_map_i_dyn_can_null) && 
            const DeepCollectionEquality().equals(other.set, set) && 
            const DeepCollectionEquality().equals(other.set_can_null, set_can_null) && 
            const DeepCollectionEquality().equals(other.set_s, set_s) && 
            const DeepCollectionEquality().equals(other.set_s_null, set_s_null) && 
            const DeepCollectionEquality().equals(other.set_s_can_null, set_s_can_null) && 
            const DeepCollectionEquality().equals(other.set_s_null_can_null, set_s_null_can_null) && 
            const DeepCollectionEquality().equals(other.set_i, set_i) && 
            const DeepCollectionEquality().equals(other.set_i_null, set_i_null) && 
            const DeepCollectionEquality().equals(other.set_i_can_null, set_i_can_null) && 
            const DeepCollectionEquality().equals(other.set_i_null_can_null, set_i_null_can_null) && 
            const DeepCollectionEquality().equals(other.set_bool, set_bool) && 
            const DeepCollectionEquality().equals(other.set_bool_null, set_bool_null) && 
            const DeepCollectionEquality().equals(other.set_bool_can_null, set_bool_can_null) && 
            const DeepCollectionEquality().equals(other.set_bool_null_can_null, set_bool_null_can_null) && 
            const DeepCollectionEquality().equals(other.set_d, set_d) && 
            const DeepCollectionEquality().equals(other.set_d_null, set_d_null) && 
            const DeepCollectionEquality().equals(other.set_d_can_null, set_d_can_null) && 
            const DeepCollectionEquality().equals(other.set_d_null_can_null, set_d_null_can_null) && 
            const DeepCollectionEquality().equals(other.m, m) && 
            const DeepCollectionEquality().equals(other.m_can_null, m_can_null) && 
            const DeepCollectionEquality().equals(other.m_s_dyn, m_s_dyn) && 
            const DeepCollectionEquality().equals(other.m_s_dyn_can_null, m_s_dyn_can_null) && 
            const DeepCollectionEquality().equals(other.m_s_b, m_s_b) && 
            const DeepCollectionEquality().equals(other.m_s_b_null, m_s_b_null) && 
            const DeepCollectionEquality().equals(other.m_s_b_can_null, m_s_b_can_null) && 
            const DeepCollectionEquality().equals(other.m_s_b_null_can_null, m_s_b_null_can_null) && 
            const DeepCollectionEquality().equals(other.m_s_i, m_s_i) && 
            const DeepCollectionEquality().equals(other.m_s_i_null, m_s_i_null) && 
            const DeepCollectionEquality().equals(other.m_s_i_can_null, m_s_i_can_null) && 
            const DeepCollectionEquality().equals(other.m_s_i_null_can_null, m_s_i_null_can_null) && 
            const DeepCollectionEquality().equals(other.m_s_s, m_s_s) && 
            const DeepCollectionEquality().equals(other.m_s_s_null, m_s_s_null) && 
            const DeepCollectionEquality().equals(other.m_s_s_can_null, m_s_s_can_null) && 
            const DeepCollectionEquality().equals(other.m_s_s_null_can_null, m_s_s_null_can_null) && 
            const DeepCollectionEquality().equals(other.m_s_d, m_s_d) && 
            const DeepCollectionEquality().equals(other.m_s_d_null, m_s_d_null) && 
            const DeepCollectionEquality().equals(other.m_s_d_can_null, m_s_d_can_null) && 
            const DeepCollectionEquality().equals(other.m_s_d_null_can_null, m_s_d_null_can_null) && 
            const DeepCollectionEquality().equals(other.m_i_d, m_i_d) && 
            const DeepCollectionEquality().equals(other.m_i_d_null, m_i_d_null) && 
            const DeepCollectionEquality().equals(other.m_i_d_can_null, m_i_d_can_null) && 
            const DeepCollectionEquality().equals(other.m_i_d_null_can_null, m_i_d_null_can_null) && 
            const DeepCollectionEquality().equals(other.m_i_s, m_i_s) && 
            const DeepCollectionEquality().equals(other.m_i_s_null, m_i_s_null) && 
            const DeepCollectionEquality().equals(other.m_i_s_can_null, m_i_s_can_null) && 
            const DeepCollectionEquality().equals(other.m_i_s_null_can_null, m_i_s_null_can_null) && 
            const DeepCollectionEquality().equals(other.m_i_b, m_i_b) && 
            const DeepCollectionEquality().equals(other.m_i_b_null, m_i_b_null) && 
            const DeepCollectionEquality().equals(other.m_i_b_can_null, m_i_b_can_null) && 
            const DeepCollectionEquality().equals(other.m_i_b_null_can_null, m_i_b_null_can_null) && 
            const DeepCollectionEquality().equals(other.m_i_dyn, m_i_dyn) && 
            const DeepCollectionEquality().equals(other.m_i_dyn_can_null, m_i_dyn_can_null) && 
            const DeepCollectionEquality().equals(other.m_dyn_dyn, m_dyn_dyn) && 
            const DeepCollectionEquality().equals(other.m_dyn_dyn_can_null, m_dyn_dyn_can_null) && 
            const DeepCollectionEquality().equals(other.ldyn_canNull, ldyn_canNull) && 
            const DeepCollectionEquality().equals(other.l_map_i_s_can_null, l_map_i_s_can_null) && 
            const DeepCollectionEquality().equals(other.l_map_i_s_null_can_null, l_map_i_s_null_can_null) && 
            (identical(other.date_time, date_time) || other.date_time == date_time) && 
            (identical(other.date_time_canNull, date_time_canNull) || other.date_time_canNull == date_time_canNull) );

  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        s,
        s_can_null,
        b,
        b_can_null,
        i,
        i_can_null,
        d,
        d_can_null,
        n,
        n_can_null,
        const DeepCollectionEquality().hash(l),
        const DeepCollectionEquality().hash(l_can_null),
        const DeepCollectionEquality().hash(lb),
        const DeepCollectionEquality().hash(lb_null),
        const DeepCollectionEquality().hash(lb_can_null),
        const DeepCollectionEquality().hash(lb_null_can_null),
        const DeepCollectionEquality().hash(li),
        const DeepCollectionEquality().hash(li_null),
        const DeepCollectionEquality().hash(li_can_null),
        const DeepCollectionEquality().hash(li_null_can_null),
        const DeepCollectionEquality().hash(ls),
        const DeepCollectionEquality().hash(ls_null),
        const DeepCollectionEquality().hash(ls_can_null),
        const DeepCollectionEquality().hash(ls_null_can_null),
        const DeepCollectionEquality().hash(ld),
        const DeepCollectionEquality().hash(ld_null),
        const DeepCollectionEquality().hash(ld_can_null),
        const DeepCollectionEquality().hash(ld_null_can_null),
        const DeepCollectionEquality().hash(l_map_i_s),
        const DeepCollectionEquality().hash(l_map_i_s_null),
        const DeepCollectionEquality().hash(l_map_i_dyn),
        const DeepCollectionEquality().hash(l_map_i_dyn_can_null),
        const DeepCollectionEquality().hash(set),
        const DeepCollectionEquality().hash(set_can_null),
        const DeepCollectionEquality().hash(set_s),
        const DeepCollectionEquality().hash(set_s_null),
        const DeepCollectionEquality().hash(set_s_can_null),
        const DeepCollectionEquality().hash(set_s_null_can_null),
        const DeepCollectionEquality().hash(set_i),
        const DeepCollectionEquality().hash(set_i_null),
        const DeepCollectionEquality().hash(set_i_can_null),
        const DeepCollectionEquality().hash(set_i_null_can_null),
        const DeepCollectionEquality().hash(set_bool),
        const DeepCollectionEquality().hash(set_bool_null),
        const DeepCollectionEquality().hash(set_bool_can_null),
        const DeepCollectionEquality().hash(set_bool_null_can_null),
        const DeepCollectionEquality().hash(set_d),
        const DeepCollectionEquality().hash(set_d_null),
        const DeepCollectionEquality().hash(set_d_can_null),
        const DeepCollectionEquality().hash(set_d_null_can_null),
        const DeepCollectionEquality().hash(m),
        const DeepCollectionEquality().hash(m_can_null),
        const DeepCollectionEquality().hash(m_s_dyn),
        const DeepCollectionEquality().hash(m_s_dyn_can_null),
        const DeepCollectionEquality().hash(m_s_b),
        const DeepCollectionEquality().hash(m_s_b_null),
        const DeepCollectionEquality().hash(m_s_b_can_null),
        const DeepCollectionEquality().hash(m_s_b_null_can_null),
        const DeepCollectionEquality().hash(m_s_i),
        const DeepCollectionEquality().hash(m_s_i_null),
        const DeepCollectionEquality().hash(m_s_i_can_null),
        const DeepCollectionEquality().hash(m_s_i_null_can_null),
        const DeepCollectionEquality().hash(m_s_s),
        const DeepCollectionEquality().hash(m_s_s_null),
        const DeepCollectionEquality().hash(m_s_s_can_null),
        const DeepCollectionEquality().hash(m_s_s_null_can_null),
        const DeepCollectionEquality().hash(m_s_d),
        const DeepCollectionEquality().hash(m_s_d_null),
        const DeepCollectionEquality().hash(m_s_d_can_null),
        const DeepCollectionEquality().hash(m_s_d_null_can_null),
        const DeepCollectionEquality().hash(m_i_d),
        const DeepCollectionEquality().hash(m_i_d_null),
        const DeepCollectionEquality().hash(m_i_d_can_null),
        const DeepCollectionEquality().hash(m_i_d_null_can_null),
        const DeepCollectionEquality().hash(m_i_s),
        const DeepCollectionEquality().hash(m_i_s_null),
        const DeepCollectionEquality().hash(m_i_s_can_null),
        const DeepCollectionEquality().hash(m_i_s_null_can_null),
        const DeepCollectionEquality().hash(m_i_b),
        const DeepCollectionEquality().hash(m_i_b_null),
        const DeepCollectionEquality().hash(m_i_b_can_null),
        const DeepCollectionEquality().hash(m_i_b_null_can_null),
        const DeepCollectionEquality().hash(m_i_dyn),
        const DeepCollectionEquality().hash(m_i_dyn_can_null),
        const DeepCollectionEquality().hash(m_dyn_dyn),
        const DeepCollectionEquality().hash(m_dyn_dyn_can_null),
        const DeepCollectionEquality().hash(ldyn_canNull),
        const DeepCollectionEquality().hash(l_map_i_s_can_null),
        const DeepCollectionEquality().hash(l_map_i_s_null_can_null),
        date_time,
        date_time_canNull,
]);
}
