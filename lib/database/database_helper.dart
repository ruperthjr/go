import 'dart:io';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

class DatabaseHelper {
  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB();
    return _database!;
  }

  Future<Database> _initDB() async {
    sqfliteFfiInit();
    databaseFactory = databaseFactoryFfi; // Use FFI for local database

    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, "reports.db");

    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        print("Creating database...");
        await db.execute('''
          CREATE TABLE reports (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            type TEXT,
            location TEXT,
            time TEXT,
            perpetrator TEXT,
            details TEXT
          )
        ''');
      },
    );
  }

  Future<void> insertReport(Map<String, dynamic> report) async {
    final db = await database;
    await db.insert('reports', report);
  }

  Future<List<Map<String, dynamic>>> getReports() async {
    final db = await database;
    return await db.query('reports');
  }
}
