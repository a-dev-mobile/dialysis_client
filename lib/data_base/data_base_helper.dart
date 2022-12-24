// ignore_for_file: unused_element, unused_local_variable

import 'dart:async';

import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dialysis/core/device/device.dart';
import 'package:dialysis/feature/common/enum.dart';
import 'package:dialysis/global_const.dart';
import 'package:firebase_storage/firebase_storage.dart';

import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:sqflite_sqlcipher/sqflite.dart';

/// DataBaseHelper Singleton class
class DataBaseHelper {
  factory DataBaseHelper( ) => _internalSingleton;
  DataBaseHelper._internal();
  static final DataBaseHelper _internalSingleton = DataBaseHelper._internal();


/* 
Future<void> copyDb() async {
    const nameDb = 'product.dbe';

    final databasesPath = await getDatabasesPath();
    _fullPathFileDb = join(databasesPath, nameDb);

    final db = await _openDB();
    final currentVersionDb = await db.getVersion();
    final newVersionDb = await _storage.getDbVersion();

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
