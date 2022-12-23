// ignore_for_file: unused_element, unused_local_variable

import 'dart:async';

import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dialysis/core/device/device.dart';
import 'package:dialysis/core/storage/storage.dart';
import 'package:dialysis/feature/common/enum.dart';
import 'package:dialysis/global_const.dart';
import 'package:firebase_storage/firebase_storage.dart';

import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:sqflite_sqlcipher/sqflite.dart';

/// DataBaseHelper Singleton class
class DataBaseHelper {
  factory DataBaseHelper() => _internalSingleton;
  DataBaseHelper._internal();
  static final DataBaseHelper _internalSingleton = DataBaseHelper._internal();

  static const _nameDb = 'product.dbe';

  static Future<void> checkAndcopyDbFromAssets() async {
    const assetsPathDb = 'assets/db/$_nameDb';

    final databasesPath = await getDatabasesPath();
    final fullPathFileDb = join(databasesPath, _nameDb);

    var db = await openDatabase(fullPathFileDb, password: APP_DB_PASSWORD);
    final currentVersionDb = await db.getVersion();
    final newVersionDb = int.tryParse(await DeviceInfo.getBuildNumber()) ?? 0;
    if (currentVersionDb < newVersionDb) {
      await db.close();

      //delete the old database so you can copy the new one
      await deleteDatabase(fullPathFileDb);

      final directory =
          await Directory(dirname(fullPathFileDb)).create(recursive: true);

      final data = await rootBundle.load(assetsPathDb);
      final buffer = data.buffer;
      await File(fullPathFileDb).writeAsBytes(
        buffer.asUint8List(data.offsetInBytes, data.lengthInBytes),
      );
      unawaited(AppStorage.setDbPatch(fullPathFileDb));

      db = await openDatabase(fullPathFileDb, password: APP_DB_PASSWORD);
      await db.setVersion(newVersionDb);
      await db.close();
    }

  }

  // получаю из firestore из app_build_number
  static Future<int> _getOnlineVersionDb() async {
    final db = FirebaseFirestore.instance;
    final buildApp = await DeviceInfo.getBuildNumber();

    final doc =
        (await db.collection('app_build_number').doc(buildApp).get()).data();

    final version = doc != null ? doc['db_update_version'].toString() : '0';

    return int.tryParse(version) ?? 0;
  }

  static Future<void> checkAndLoadUpdateDb() async {
    final localDbUpdateVersion = await AppStorage.getDbUpdateVersion();
    final onlineDbUpdateVersion = await _getOnlineVersionDb();
    if (localDbUpdateVersion >= onlineDbUpdateVersion) return;

    final buildNumber = await DeviceInfo.getBuildNumber();

    final databasesPath = await getDatabasesPath();

    final ref = FirebaseStorage.instance.ref().child('db_update/$buildNumber/');

    for (final i in EnumNameTable.values) {
      await ref
          .child('${i.name}.json')
          .writeToFile(File('$databasesPath/${i.name}.json'));
    }
    unawaited(AppStorage.setDbVersion(onlineDbUpdateVersion));

    // downloadTask.snapshotEvents.listen((taskSnapshot) async {
    //   switch (taskSnapshot.state) {
    //     case TaskState.running:
    //       log('TaskState.running');
    //       break;
    //     case TaskState.paused:
    //       log('TaskState.paused');
    //       break;

    //     case TaskState.canceled:
    //       log('TaskState.canceled');
    //       break;
    //     case TaskState.error:
    //       log('TaskState.error');
    //       break;

    //     case TaskState.success:
    //       log('TaskState.success');

    //       break;
    //   }
    // });
  }

  static Future<void> _jsonToDb() async {
    final dbFolderPath = await getDatabasesPath();
    final dbFilePatch = await AppStorage.getDbPatch();

    final tables = await AppStorage.getNameJsonFiles();
    final pathJson = await AppStorage.getJsonFiles();

    final file = File('$dbFolderPath/${pathJson[0]}');
    final contents = await file.readAsString();

    // final decodedMap = await compute(parse, contents);

    final db = await openDatabase(dbFilePatch, password: APP_DB_PASSWORD);
    // await db.insert(
    //   tables[0],
    //   decodedMap,
    //   conflictAlgorithm: ConflictAlgorithm.replace,
    // );

    await db.close();


  }


}

/* 
Future<void> copyDb() async {
    const nameDb = 'product.dbe';

    final databasesPath = await getDatabasesPath();
    _fullPathFileDb = join(databasesPath, nameDb);

    final db = await _openDB();
    final currentVersionDb = await db.getVersion();
    final newVersionDb = await AppStorage.getDbVersion();

    if (currentVersionDb < newVersionDb) {
      await db.close();

      //delete the old database so you can copy the new one
      await deleteDatabase(_fullPathFileDb);

      // ignore: unused_local_variable
      final directory =
          await Directory(dirname(_fullPathFileDb)).create(recursive: true);

      final dbFile = FirebaseStorage.instance.ref().child('db').child(nameDb);

      final downloadTask = dbFile.writeToFile(File(_fullPathFileDb));

// ignore: avoid-ignoring-return-values
      downloadTask.snapshotEvents.listen((taskSnapshot) async {
        switch (taskSnapshot.state) {
          case TaskState.running:
            log('TaskState.running');
            break;
          case TaskState.paused:
            log('TaskState.paused');
            break;

          case TaskState.canceled:
            log('TaskState.canceled');
            break;
          case TaskState.error:
            log('TaskState.error');
            break;

          case TaskState.success:
            log('TaskState.success');

            await _dbSetVersion(newVersionDb);
            break;
        }
      });
    }
  }

 */
