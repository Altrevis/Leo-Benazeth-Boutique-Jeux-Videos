import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import '../models/video_game.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  factory DatabaseHelper() => _instance;
  DatabaseHelper._internal();

  static Database? _database;

  Future<Database> get database async {
    _database ??= await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, 'boutique_jeux_videos.db');

    return openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
  }

  Future<void> _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE games (
        id INTEGER PRIMARY KEY,
        title TEXT NOT NULL,
        description TEXT NOT NULL,
        image_url TEXT NOT NULL,
        genre TEXT NOT NULL,
        price REAL
      )
    ''');
  }

  Future<void> insertGames(List<VideoGame> games) async {
    final db = await database;

    await db.transaction((txn) async {
      await txn.delete('games');
      for (final game in games) {
        await txn.insert(
          'games',
          game.toMap(),
          conflictAlgorithm: ConflictAlgorithm.replace,
        );
      }
    });
  }

  Future<List<VideoGame>> getCachedGames() async {
    final db = await database;
    final maps = await db.query('games');

    return maps
        .map((map) => VideoGame.fromJson(map))
        .toList();
  }
}
