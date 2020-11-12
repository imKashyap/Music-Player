import 'dart:async';
import 'dart:io';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DbHelper {
  static DbHelper _dbHelper;
  static Database _database;
  DbHelper._createInstance();
  factory DbHelper() {
    if (_dbHelper == null) _dbHelper = DbHelper._createInstance();
    return _dbHelper;
  }

  String songs = 'songs';
  String recents = 'recents';
  String id = 'id';
  String title = 'title';
  String duration = 'duration';
  String albumArt = 'albumArt';
  String album = 'album';
  String uri = 'uri';
  String artist = 'artist';
  String albumId = 'albumId';
  String isFav = 'isFav';
  String timestamp = 'timestamp';
  String count = 'count';

  Future<Database> get database async {
    if (_database == null) _database = await initializeDb();
    return _database;
  }

  Future<Database> initializeDb() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    final path = join(documentsDirectory.path, "songData.db");
    var songsdb = await openDatabase(path, version: 1, onCreate: _createDb);
    return songsdb;
  }

  _createDb(Database newDb, int version) async {
    await newDb.execute("""
    CREATE TABLE $songs
    (
      $id INTEGER,
      $title TEXT,
      $duration INTEGER,
      $albumArt TEXT,
      $album TEXT,
      $uri TEXT,
      $artist TEXT,
      $albumId INTEGER,
      $isFav INTEGER NOT NULL default 0,
      $timestamp INTEGER,
      $count INTEGER not null default 0
    )
    """);

    await newDb.execute("""
    CREATE TABLE $recents
    (
      $id INTEGER PRIMARY KEY autoincrement,
      $title TEXT,
      $duration INTEGER,
      $albumArt TEXT,
      $album TEXT,
      $uri TEXT,
      $artist TEXT,
      $albumId INTEGER
    )
    """);
  }
}
