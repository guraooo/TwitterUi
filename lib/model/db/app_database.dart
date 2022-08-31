import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'tweet_table.dart';
import 'user_table.dart';

class MainDatabase {
  Database? _database;

  Future<Database> get database async {
    return _database ?? await _initDB();
  }

  Future<Database> _initDB() async {
    String path = join(await getDatabasesPath(), 'main.db');

    return await openDatabase(
      path,
      version: 1,
      onCreate: _createTable,
    );
  }

  Future<void> _createTable(Database db, int version) async {
    await db.execute(UserTable.createSql);
    await db.execute(TweetTable.createSql);
    return;
  }
}
