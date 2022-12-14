import 'package:flutter/cupertino.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqlite1/pages/student_model.dart';

class MyDbHelper {
  static const String createStTableContact = '''
create table $st_tableContact(
  $st_tableContactColId integer primary key,
  $st_tableContactColName text,
  $st_tableContactColPhone text,
  $st_tableContactColAddress text,
  $st_tableContactColDob text,
  $st_tableContactColGender text,
  $st_tableContactColImage text,
)''';

  static Future<Database> openDb() async {
    final Path = await getDatabasesPath();
    final dbPath = join(Path, "st_contact.db");
    return openDatabase(dbPath, version: 1, onCreate: (db, version) {
      db.execute(createStTableContact);
    });
  }

  static Future<int> insertStContact(StudentModel studentModel) async {
    final st_db = await openDb();
    return st_db.insert(st_tableContact, studentModel.toMap());
  }
}
