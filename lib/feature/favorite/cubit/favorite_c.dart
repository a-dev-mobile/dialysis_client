// // ignore_for_file: public_member_api_docs, sort_constructors_first
// // ignore_for_file: avoid_unused_constructor_parameters

// import 'dart:async';
// import 'dart:convert';

// import 'package:bloc/bloc.dart';
// import 'package:dialysis/core/storage/storage.dart';
// import 'package:flutter/foundation.dart';

// import 'package:dialysis/data_base/app_db_repository.dart';
// import 'package:dialysis/feature/favorite/favorite.dart';

// class FavoriteCubit extends Cubit<FavoriteState> {
//   FavoriteCubit({required AppDb db})
//       : _db = db,

//         super(const FavoriteState());

//   // ignore: unused_field
//   final AppDb _db;

//   FutureOr<void> load() async {
//     emit(state.copyWith(isLoad: true));
//     final favorites = await AppStorage.getFavorite();
//     final uiModel = <FavoriteUiModel>[];

//     // for (final i in favorites) {
//     //   uiModel.add(
//     //     FavoriteUiModel(
//     //       isFavorite: i.isFavorite,
//     //       name: i.name,
//     //       weight: i.weight,
//     //     ),
//     //   );
//     // }
//     emit(state.copyWith(isLoad: false, uiModel: uiModel));
//   }
// }

// @immutable
// class FavoriteState {
//   final List<FavoriteUiModel> uiModel;
//   final bool isLoad;
//   const FavoriteState({
//     this.uiModel = const [],
//     this.isLoad = true,
//   });

//   FavoriteState copyWith({
//     List<FavoriteUiModel>? uiModel,
//     bool? isLoad,
//   }) {
//     return FavoriteState(
//       uiModel: uiModel ?? this.uiModel,
//       isLoad: isLoad ?? this.isLoad,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'uiModel': uiModel.map((x) => x.toMap()).toList(),
//       'isLoad': isLoad,
//     };
//   }

//   factory FavoriteState.fromMap(Map<String, dynamic> map) {
//     return FavoriteState(
//       uiModel: List<FavoriteUiModel>.from(
//         (map['uiModel'] as List<int>).map<FavoriteUiModel>(
//           (x) => FavoriteUiModel.fromMap(x as Map<String, dynamic>),
//         ),
//       ),
//       isLoad: map['isLoad'] as bool,
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory FavoriteState.fromJson(String source) =>
//       FavoriteState.fromMap(json.decode(source) as Map<String, dynamic>);

//   @override
//   String toString() => 'FavoriteState(uiModel: $uiModel, isLoad: $isLoad)';

//   @override
//   bool operator ==(covariant FavoriteState other) {
//     if (identical(this, other)) return true;

//     return listEquals(other.uiModel, uiModel) && other.isLoad == isLoad;
//   }

//   @override
//   int get hashCode => uiModel.hashCode ^ isLoad.hashCode;
// }
