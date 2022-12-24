// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dialysis/core/device/device.dart';
import 'package:dialysis/core/storage/storage.dart';
import 'package:dialysis/data_base/data_base.dart';

import 'package:dialysis/feature/common/enums/enums.dart';
import 'package:dialysis/global_const.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:sqflite_sqlcipher/sqflite.dart';

/// AppDb repository
class AppDb {
  final AppStorage _storage;
  AppDb({required AppStorage storage}) : _storage = storage;

  static const _nameDb = 'product.dbe';
  String _fullPathFileDb = '';
  String _folderDB = '';

  Future<void> load() async {
    _fullPathFileDb = await _storage.getDbPatch();
    _folderDB = await getDatabasesPath();

    if (_fullPathFileDb.isEmpty) {
      _fullPathFileDb = join(_folderDB, _nameDb);
    }
  }

  Future<void> checkAndCopyDbFromAssets() async {
    const assetsPathDb = 'assets/db/$_nameDb';

    var db = await openDatabase(_fullPathFileDb, password: APP_DB_PASSWORD);
    final currentVersionDb = await db.getVersion();
    final newVersionDb = int.tryParse(await DeviceInfo.getBuildNumber()) ?? 0;
    if (currentVersionDb < newVersionDb) {
      await db.close();

      //delete the old database so you can copy the new one
      await deleteDatabase(_fullPathFileDb);

      // ignore: unused_local_variable
      final directory =
          await Directory(dirname(_fullPathFileDb)).create(recursive: true);

      final data = await rootBundle.load(assetsPathDb);
      final buffer = data.buffer;
      await File(_fullPathFileDb).writeAsBytes(
        buffer.asUint8List(data.offsetInBytes, data.lengthInBytes),
      );
      unawaited(_storage.setDbPatch(_fullPathFileDb));

      db = await openDatabase(_fullPathFileDb, password: APP_DB_PASSWORD);
      await db.setVersion(newVersionDb);
      await db.close();
    }
  }

  // Future<Database> _openDB() {
  //   return openDatabase(_fullPathFileDb, password: APP_DB_PASSWORD);
  // }

  // получаю из firestore из app_build_number
  Future<int> _getOnlineVersionDb() async {
    final db = FirebaseFirestore.instance;
    final buildApp = await DeviceInfo.getBuildNumber();

    final doc =
        (await db.collection('app_build_number').doc(buildApp).get()).data();

    final version = doc != null ? doc['db_update_version'].toString() : '0';

    return int.tryParse(version) ?? 0;
  }

  Future<void> checkAndLoadUpdateDb() async {
    // final localDbUpdateVersion = await _storage.getDbUpdateVersion();
    final onlineDbUpdateVersion = await _getOnlineVersionDb();
    // if (localDbUpdateVersion >= onlineDbUpdateVersion) return;

    final buildNumber = await DeviceInfo.getBuildNumber();

    final ref = FirebaseStorage.instance.ref().child('db_update/$buildNumber/');
    final listPathUpdateDb = <String>[];
    var pathUpdateDb = '';
    for (final i in EnumTable.values) {
      pathUpdateDb = '$_folderDB/${i.name}.json';

      await ref.child('${i.name}.json').writeToFile(File(pathUpdateDb));

      listPathUpdateDb.add(pathUpdateDb);
    }
    unawaited(_storage.setDbVersion(onlineDbUpdateVersion));
    await _storage.setPathUpdateFilesDb(listPathUpdateDb);
  }

  Future<void> checkAndUpdateDB() async {
    final strTables = await _storage.getNameUpdateFilesDb();
    final pathJson = await _storage.getPathUpdateFilesDb();

    var file = File('');
    var content = '';
    // ignore: unused_local_variable
    EnumTable table;
    for (var i = 0; i < pathJson.length; i++) {

      file = File(pathJson[i]);
      content = await file.readAsString();

      table = EnumTable.valueOf(strTables[i]);
      if (content.length < 10) continue;

      final list = json.decode(content) as List<dynamic>;

      final profuct = ProductDbModel.fromJson(list[0] as Map<String, dynamic>);

      print(profuct);
    }

    // final decodedMap = await compute(parse, contents);

    final db = await openDatabase(_fullPathFileDb, password: APP_DB_PASSWORD);
    // await db.insert(
    //   tables[0],
    //   decodedMap,
    //   conflictAlgorithm: ConflictAlgorithm.replace,
    // );

    await db.close();
  }
}
// *******************************

//   Future<SearchModel> getProduct({
//     required String find,
//     required String locale,
//   }) async {
//     final products = <FoodDbModel>[];
//     final categories = <CategoryDbModel>[];
//     //  getting favorite product and use only id product
//     final favorites = await  _storage.getFavorite();
//     final favoritesIdProduct = favorites.map((v) => v.idProduct).toList();

//     final listEnumNutrient = [
//       NutrientName.calorie.name,
//       NutrientName.carbohydrates.name,
//       NutrientName.proteins.name,
//       NutrientName.water.name,
//       NutrientName.fats.name,
//       NutrientName.k_potassium.name,
//       NutrientName.na_sodium.name,
//     ];

//     // делаем  название колонок
//     final buffer = StringBuffer();
//     for (final v in listEnumNutrient) {
//       buffer
//         ..write('f.')
//         ..write(v)
//         ..write(', ');

//       // = '$listNutrient f.$v,';
//     }
//     final listNutrient = buffer.toString().removeLastChars().removeLastChars();

//     final db = await _openDB();

//     final findClean = find.trim()..replaceAll(RegExp(' +'), ' ');
//     final listFind = findClean.split(' ');

//     final query = '''
// SELECT
// p.id as idProduct,

// s.${locale}_name as sourceName,
// s.${locale}_abbrev as sourceAbbrev,
// s.id as sourceId,

// c.id as categoryId,
// c.${locale}_name as categoryName,

// p.${locale}_name as product,

// $listNutrient

// FROM food as f

// JOIN category as c
// on f.id_category = c.id

// JOIN source as s
// on f.id_source = s.id

// JOIN product as p
// on p.id=f.id_product

// WHERE ${_getProductWhereQuery(listFind, locale)}

// ''';
// // I make a request to receive all nutrients
//     final dbNutrient = await db.rawQuery(
//       '''
// SELECT
// nutrient,
// ${locale}_name as name,
// id_type as idType,
// ${locale}_unit as unit from nutrient''',
//     );

//     final listAllNutrient = <NutrientDbModel>[];

//     for (var i = 0; i < dbNutrient.length; i++) {
//       final row = dbNutrient[i];
//       listAllNutrient.add(
//         NutrientDbModel(
//           name: row['name'].toString(),
//           unit: row['unit'].toString(),
//           value: '',
//           valueBase: '',
//           idType: (row['idType'] as int?) ?? 0,
//           nutrient: row['nutrient'].toString(),
//         ),
//       );
//     }

//     var sourceName = '';
//     var sourceAbbrev = '';
//     var sourceId = -1;

//     var categoryName = '';
//     var categoryId = -1;
//     var product = '';
//     var idProduct = -1;

//     final dbProduct = await db.rawQuery(query);

//     for (var i = 0; i < dbProduct.length; i++) {
//       final row = dbProduct[i];

//       final nutrients = <NutrientDbModel>[];
//       // data for the main product parameters
//       sourceName = row['sourceName'].toString();
//       sourceAbbrev = row['sourceAbbrev'].toString();
//       sourceId = int.parse(row['sourceId'].toString());

//       categoryName = row['categoryName'].toString();
//       categoryId = int.parse(row['categoryId'].toString());
//       product = row['product'].toString();
//       idProduct = int.parse(row['idProduct'].toString());

//       // список всех категорий
//       categories.add(CategoryDbModel(id: categoryId, name: categoryName));

//       // nutrient enumeration
//       for (var i = 0; i < listEnumNutrient.length; i++) {
//         final nutrientItemEnum = listEnumNutrient[i];
//         final value = row[nutrientItemEnum].toString();
//         if (value == 'null' || value.isEmpty) continue;

//         if (row.keys.contains(nutrientItemEnum)) {
//           // pulling the right one out of the list nutrient
//           final findNutrient =
//               listAllNutrient.firstWhere((e) => e.nutrient == nutrientItemEnum);

//           final valueFormat = MyNumberFormat.nutrient(double.parse(value));

//           //  filling out a new
//           nutrients.add(
//             NutrientDbModel(
//               name: findNutrient.name,
//               unit: findNutrient.unit,
//               value: valueFormat,
//               idType: findNutrient.idType,
//               nutrient: findNutrient.nutrient,
//               valueBase: valueFormat,
//             ),
//           );
//         }
//       }

//       products.add(
//         FoodDbModel(
//           category: categoryName,
//           idCategory: categoryId,
//           product: product,
//           id: idProduct,
//           // если содержиться в списке значит favorite
//           isFavorite: favoritesIdProduct.contains(idProduct),
//           source: SourceDbModel(
//             abbrev: sourceAbbrev,
//             idSource: sourceId,
//             name: sourceName,
//           ),
//           nutrients: nutrients,
//         ),
//       );
//     }

//     await db.close();

//     // category in uniq
//     return SearchModel(
//       categories: categories.toSet().toList(),
//       products: products,
//     );
//   }

  // String _getProductWhereQuery(List<String> listFind, String locale) {
  //   var where = '';

  //   for (var i = 0; i < listFind.length; i++) {
  //     final s = listFind[i];

  //     where = '''
  //           $where
  //   (
  //   p.${locale}_name LIKE "%${s.toLowerCase()}%"
  //   OR
  //   p.${locale}_name LIKE "%${s.toCapitalized()}%"
  //   )''';
  //     // если последний проход and не добавляем
  //     if (i != listFind.length - 1) {
  //       where = '$where AND ';
  //     }
  //   }

  //   return where;
  // }

