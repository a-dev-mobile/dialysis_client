// import 'dart:convert';

// import 'package:dialysis/feature/registration/registration.dart';
// import 'package:flutter/cupertino.dart';

// @immutable
// class TypeVarable2  {                
// /*  */
//   final Map<String, int> msi1;
//   /*  */
//   final Map<String, int> msi2;
//   /*
//      init: const {'a': 1, 'b': 2}
//      */
//   final Map<String, int> msi3;
//   /*  */
//   final Map<String, int>? msi4;
//   /*
//     init: const {'a': 1, 'b': 2, 'c': null}
//      */
//   final Map<String, int?> msi5;
//   /*
//     init: const {'a': 1, 'b': 2, 'c': null}
//      */
//   final Map<String, int?> msi6;
//   /*
//     init: const {}
//      */
//   final Map<String, int?> msi7;
//   /*  */
//   final Map<String, int?>? msi8;
//   /*
//     init: const {'a': 1, 'b': 2, 'c': null}
//      */
//   final Map<String, int?>? msi9;

//   /* */
//   final DateTime date1;
//   /* 
//   init: CkdEnum.one 
//   type: enum 
//    */
//   final CkdEnum genPart;
//   /*     type: enum  */
//   final CkdEnum? genPartNull;

//   /*  */
//   final Map<String, int> msi55;
//   /*  */
//   final Map<String, double> msd;
//   /*  */
//   final Map<String, double>? msdn;
//   /*  */
//   final Map<String, dynamic> m;
//   /*  */
//   final Map<dynamic, dynamic> m5;
//   /*  */
//   final Map m6;

//   /*  */
//   final num? m3;
//   /*  */
//   final List m4;
//   /*  */
//   final int? id;
//   /*  */
//   final List<Map<int, String>> listId;
//   /*  */
//   final List<int> i1;
//   /* init: const ['a','b','c'] */
//   final List<String> s1;
//   /*  */
//   final List<dynamic> d2;
//   /*  */
//   final List<double>? d1;
//   /*  */
//   final Set<String> s2;

//   /*  */
//   final List<bool>? listbool;

//   /*  */
//   final int i4;

//   /*  */
//   final String s4;

//   /*  */
//   final String? s5;
// // end
 
//   // GENERATED CODE BELOW- DO NOT MODIFY

//   const TypeVarable2({
//     required this.msi1,
//     required this.msi2,
//     this.msi3 = const {'a': 1, 'b': 2},
//     this.msi4,
//     this.msi5 = const {'a': 1, 'b': 2, 'c': null},
//     this.msi6 = const {'a': 1, 'b': 2, 'c': null},
//     this.msi7 = const {},
//     this.msi8,
//     this.msi9 = const {'a': 1, 'b': 2, 'c': null},
//     required this.date1,
//     this.genPart = CkdEnum.one,
//     this.genPartNull,
//     required this.msi55,
//     required this.msd,
//     this.msdn,
//     required this.m,
//     required this.m5,
//     required this.m6,
//     this.m3,
//     required this.m4,
//     this.id,
//     required this.listId,
//     required this.i1,
//     this.s1 = const ['a','b','c'],
//     required this.d2,
//     this.d1,
//     required this.s2,
//     this.listbool,
//     required this.i4,
//     required this.s4,
//     this.s5,
//   });

//    factory TypeVarable2.init() => TypeVarable2(
//         msi1: const {},
//         msi2: const {},
//         date1: DateTime.now(),
//         msi55: const {},
//         msd: const {},
//         m: const {},
//         m5: const {},
//         m6: const {},
//         m4: const [],
//         listId: const [],
//         i1: const [],
//         d2: const [],
//         s2: const {},
//         i4: 0,
//         s4: '',
//       ); 


//   TypeVarable2 copyWith({
//     Map<String, int>? msi1,
//     Map<String, int>? msi2,
//     Map<String, int>? msi3,
//     Map<String, int>? msi4,
//     Map<String, int?>? msi5,
//     Map<String, int?>? msi6,
//     Map<String, int?>? msi7,
//     Map<String, int?>? msi8,
//     Map<String, int?>? msi9,
//     DateTime? date1,
//     CkdEnum? genPart,
//     CkdEnum? genPartNull,
//     Map<String, int>? msi55,
//     Map<String, double>? msd,
//     Map<String, double>? msdn,
//     Map<String, dynamic>? m,
//     Map<dynamic, dynamic>? m5,
//     Map? m6,
//     num? m3,
//     List? m4,
//     int? id,
//     List<Map<int, String>>? listId,
//     List<int>? i1,
//     List<String>? s1,
//     List<dynamic>? d2,
//     List<double>? d1,
//     Set<String>? s2,
//     List<bool>? listbool,
//     int? i4,
//     String? s4,
//     String? s5,
//   }) {
//     return TypeVarable2(
//       msi1: msi1 ?? this.msi1, 
//       msi2: msi2 ?? this.msi2, 
//       msi3: msi3 ?? this.msi3, 
//       msi4: msi4 ?? this.msi4, 
//       msi5: msi5 ?? this.msi5, 
//       msi6: msi6 ?? this.msi6, 
//       msi7: msi7 ?? this.msi7, 
//       msi8: msi8 ?? this.msi8, 
//       msi9: msi9 ?? this.msi9, 
//       date1: date1 ?? this.date1, 
//       genPart: genPart ?? this.genPart, 
//       genPartNull: genPartNull ?? this.genPartNull, 
//       msi55: msi55 ?? this.msi55, 
//       msd: msd ?? this.msd, 
//       msdn: msdn ?? this.msdn, 
//       m: m ?? this.m, 
//       m5: m5 ?? this.m5, 
//       m6: m6 ?? this.m6, 
//       m3: m3 ?? this.m3, 
//       m4: m4 ?? this.m4, 
//       id: id ?? this.id, 
//       listId: listId ?? this.listId, 
//       i1: i1 ?? this.i1, 
//       s1: s1 ?? this.s1, 
//       d2: d2 ?? this.d2, 
//       d1: d1 ?? this.d1, 
//       s2: s2 ?? this.s2, 
//       listbool: listbool ?? this.listbool, 
//       i4: i4 ?? this.i4, 
//       s4: s4 ?? this.s4, 
//       s5: s5 ?? this.s5, 
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'msi1': msi1.map(MapEntry.new), 
//       'msi2': msi2.map(MapEntry.new), 
//       'msi3': msi3.map(MapEntry.new), 
//       'msi4': msi4?.map(MapEntry.new), 
//       'msi5': msi5.map(MapEntry.new), 
//       'msi6': msi6.map(MapEntry.new), 
//       'msi7': msi7.map(MapEntry.new), 
//       'msi8': msi8?.map(MapEntry.new), 
//       'msi9': msi9?.map(MapEntry.new), 
//       'date1': date1.toIso8601String(), 
//       'genPart': genPart.index, 
//       'genPartNull': (genPartNull != null) ? genPartNull?.index : null, 
//       'msi55': msi55.map(MapEntry.new), 
//       'msd': msd.map(MapEntry.new), 
//       'msdn': msdn?.map(MapEntry.new), 
//       'm': m.map(MapEntry.new), 
//       'm5': m5.map((k, e) => MapEntry(k.toString(), e)), 
//       'm6': m6.map((k, e) => MapEntry(k.toString(), e)), 
//       'm3': m3, 
//       'm4': m4, 
//       'id': id, 
//       'listId': listId, 
//       'i1': i1, 
//       's1': s1, 
//       'd2': d2, 
//       'd1': d1, 
//       's2': s2.toList(), 
//       'listbool': listbool, 
//       'i4': i4, 
//       's4': s4, 
//       's5': s5, 
//     };
//   }

//   factory TypeVarable2.fromMap(Map<String, dynamic> map) {
//     return TypeVarable2(
//       msi1: (map['msi1'] as Map<String, dynamic>?)?.map((k, e) => MapEntry(k, e as int)) ?? {}, 
//       msi2: (map['msi2'] as Map<String, dynamic>?)?.map((k, e) => MapEntry(k, e as int)) ?? {}, 
//       msi3: (map['msi3'] as Map<String, dynamic>?)?.map((k, e) => MapEntry(k, e as int)) ?? const {'a': 1, 'b': 2}, 
//       msi4: (map['msi4'] as Map<String, dynamic>?)?.map((k, e) => MapEntry(k, e as int)), 
//       msi5: (map['msi5'] as Map<String, dynamic>?)?.map((k, e) => MapEntry(k, e as int)) ?? const {'a': 1, 'b': 2, 'c': null}, 
//       msi6: (map['msi6'] as Map<String, dynamic>?)?.map((k, e) => MapEntry(k, e as int)) ?? const {'a': 1, 'b': 2, 'c': null}, 
//       msi7: (map['msi7'] as Map<String, dynamic>?)?.map((k, e) => MapEntry(k, e as int)) ?? const {}, 
//       msi8: (map['msi8'] as Map<String, dynamic>?)?.map((k, e) => MapEntry(k, e as int)), 
//       msi9: (map['msi9'] as Map<String, dynamic>?)?.map((k, e) => MapEntry(k, e as int)) ?? const {'a': 1, 'b': 2, 'c': null}, 
//       date1: DateTime.parse(map['date1'] as String), 
//       genPart: CkdEnum.values[map['genPart'] as int], 
//       genPartNull: map['genPartNull'] != null ? CkdEnum.values[map['genPartNull'] as int] : null, 
//       msi55: (map['msi55'] as Map<String, dynamic>?)?.map((k, e) => MapEntry(k, e as int)) ?? {}, 
//       msd: (map['msd'] as Map<String, dynamic>?)?.map((k, e) => MapEntry(k, e as double)) ?? {}, 
//       msdn: (map['msdn'] as Map<String, dynamic>?)?.map((k, e) => MapEntry(k, e as double)), 
//       m: map['m'] as Map<String, dynamic>? ?? {}, 
//       m5: null, 
//       m6: null, 
//       m3: map['m3'] as num?, 
//       m4: null, 
//       id: map['id'] as int?, 
//       listId: null, 
//       i1: (map['i1'] as List<dynamic>?)?.map((e) => e as int).toList() ?? const [], 
//       s1: (map['s1'] as List<dynamic>?)?.map((e) => e as String).toList() ?? const const ['a','b','c'], 
//       d2: null, 
//       d1: null, 
//       s2: (map['s2'] as List<dynamic>?)?.map((e) => e as String).toSet() ?? const {}, 
//       listbool: map['listbool'] != null
//           ? List<bool>.of(map['listbool'] as List<bool>,)
//           : null, 
//       i4: map['i4'] as int? ?? 0, 
//       s4: map['s4'] as String? ?? '' , 
//       s5: map['s5'] as String?, 
//     );
//   }
//   @override
//   String toString() {
//     return 'TypeVarable2(msi1: $msi1, msi2: $msi2, msi3: $msi3, msi4: $msi4, msi5: $msi5, msi6: $msi6, msi7: $msi7, msi8: $msi8, msi9: $msi9, date1: $date1, genPart: $genPart, genPartNull: $genPartNull, msi55: $msi55, msd: $msd, msdn: $msdn, m: $m, m5: $m5, m6: $m6, m3: $m3, m4: $m4, id: $id, listId: $listId, i1: $i1, s1: $s1, d2: $d2, d1: $d1, s2: $s2, listbool: $listbool, i4: $i4, s4: $s4, s5: $s5, )';
//   }
//   String toJson() => json.encode(toMap());

//   factory TypeVarable2.fromJson(String source) => TypeVarable2.fromMap(json.decode(source) as Map<String, dynamic>);

//   @override
//   bool operator ==(dynamic other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is TypeVarable2 &&
//             const DeepCollectionEquality().equals(other.msi1, msi1) && 
//             const DeepCollectionEquality().equals(other.msi2, msi2) && 
//             const DeepCollectionEquality().equals(other.msi3, msi3) && 
//             const DeepCollectionEquality().equals(other.msi4, msi4) && 
//             const DeepCollectionEquality().equals(other.msi5, msi5) && 
//             const DeepCollectionEquality().equals(other.msi6, msi6) && 
//             const DeepCollectionEquality().equals(other.msi7, msi7) && 
//             const DeepCollectionEquality().equals(other.msi8, msi8) && 
//             const DeepCollectionEquality().equals(other.msi9, msi9) && 
//             (identical(other.date1, date1) || other.date1 == date1) && 
//             (identical(other.genPart, genPart) || other.genPart == genPart) && 
//             (identical(other.genPartNull, genPartNull) || other.genPartNull == genPartNull) && 
//             const DeepCollectionEquality().equals(other.msi55, msi55) && 
//             const DeepCollectionEquality().equals(other.msd, msd) && 
//             const DeepCollectionEquality().equals(other.msdn, msdn) && 
//             const DeepCollectionEquality().equals(other.m, m) && 
//             const DeepCollectionEquality().equals(other.m5, m5) && 
//             const DeepCollectionEquality().equals(other.m6, m6) && 
//             (identical(other.m3, m3) || other.m3 == m3) && 
//             const DeepCollectionEquality().equals(other.m4, m4) && 
//             (identical(other.id, id) || other.id == id) && 
//             const DeepCollectionEquality().equals(other.listId, listId) && 
//             const DeepCollectionEquality().equals(other.i1, i1) && 
//             const DeepCollectionEquality().equals(other.s1, s1) && 
//             const DeepCollectionEquality().equals(other.d2, d2) && 
//             const DeepCollectionEquality().equals(other.d1, d1) && 
//             const DeepCollectionEquality().equals(other.s2, s2) && 
//             const DeepCollectionEquality().equals(other.listbool, listbool) && 
//             (identical(other.i4, i4) || other.i4 == i4) && 
//             (identical(other.s4, s4) || other.s4 == s4) && 
//             (identical(other.s5, s5) || other.s5 == s5) );

//   }

//   @override
//   int get hashCode => Object.hashAll([
//         runtimeType,
//         const DeepCollectionEquality().hash(msi1),
//         const DeepCollectionEquality().hash(msi2),
//         const DeepCollectionEquality().hash(msi3),
//         const DeepCollectionEquality().hash(msi4),
//         const DeepCollectionEquality().hash(msi5),
//         const DeepCollectionEquality().hash(msi6),
//         const DeepCollectionEquality().hash(msi7),
//         const DeepCollectionEquality().hash(msi8),
//         const DeepCollectionEquality().hash(msi9),
//         date1,
//         genPart,
//         genPartNull,
//         const DeepCollectionEquality().hash(msi55),
//         const DeepCollectionEquality().hash(msd),
//         const DeepCollectionEquality().hash(msdn),
//         const DeepCollectionEquality().hash(m),
//         const DeepCollectionEquality().hash(m5),
//         const DeepCollectionEquality().hash(m6),
//         m3,
//         const DeepCollectionEquality().hash(m4),
//         id,
//         const DeepCollectionEquality().hash(listId),
//         const DeepCollectionEquality().hash(i1),
//         const DeepCollectionEquality().hash(s1),
//         const DeepCollectionEquality().hash(d2),
//         const DeepCollectionEquality().hash(d1),
//         const DeepCollectionEquality().hash(s2),
//         const DeepCollectionEquality().hash(listbool),
//         i4,
//         s4,
//         s5,
// ]);
// }
