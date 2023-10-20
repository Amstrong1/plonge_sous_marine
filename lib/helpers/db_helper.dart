import 'package:flutter/foundation.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();

  factory DatabaseHelper() => _instance;

  DatabaseHelper._internal();

  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    final databasesPath = await getDatabasesPath();
    final path = join(databasesPath, 'auth.db');

    try {
      return await openDatabase(
        path,
        version: 1,
        onCreate: (db, version) async {
          await db.execute('''
            CREATE TABLE log (
              id INTEGER PRIMARY KEY AUTOINCREMENT,
              logged BOOLEAN
            )
          ''');
        },
      );
    } catch (e) {
      if (kDebugMode) {
        print('Erreur lors de la création de la base de données: $e');
      }
      rethrow;
    }
  }

  Future<void> insertLog({required bool logged}) async {
    final db = await database;

    try {
      await db.insert('log', {'logged': logged});
    } catch (e) {
      if (kDebugMode) {
        print('Erreur lors de l\'insertion de données: $e');
      }
    }
  }

  // Ajoutez cette méthode pour récupérer un log de la base de données
  Future<bool?> getLog() async {
    final db = await database;
    try {
      final List<Map<String, dynamic>> logs =
          await db.query('log', orderBy: 'id DESC', limit: 1);

      if (logs.isNotEmpty) {
        final log = logs.first['logged'];
        return log == 1; // Si "logged" est 1, renvoyer true, sinon false.
      } else {
        return null;
      }
    } catch (e) {
      if (kDebugMode) {
        print('Erreur lors de la récupération du log : $e');
      }
      return null;
    }
  }

  Future<void> deleteAllLogs() async {
    final db = await database;
    await db.delete('log');
  }
}
