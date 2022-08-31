import 'package:sqflite/sqflite.dart';
import '../../freezed/tweet_data.dart';

class TweetTable {
  static const String _tableName = "TweetTable";
  static const String _columnId = "id";
  static const String _columnUserId = "user_id";
  static const String _columnMessage = "message";

  static const String createSql = '''
    CREATE TABLE $_tableName(
      $_columnId INTEGER PRIMARY KEY AUTOINCREMENT,
      $_columnUserId INTEGER NOT NULL,
      $_columnMessage TEXT NOT NULL
      )
  ''';

  TweetTable(this.database);

  final Database database;

  Future<void> insert(TweetItemData data) async =>
      await database.insert(_tableName, toMap(data));

  Future<void> delete(TweetItemData data) async => await database
      .delete(_tableName, where: '$_columnId = ?', whereArgs: [data.uid]);

  Future<List<TweetItemData>> loadAllTweets() async {
    var maps = await database.query(_tableName, orderBy: "$_columnId DESC");
    return maps.map((map) => fromMap(map)).toList();
  }

  Map<String, dynamic> toMap(TweetItemData user) => <String, dynamic>{
        _columnId: user.uid,
        _columnUserId: user.userId,
        _columnMessage: user.message
      };

  TweetItemData fromMap(Map<String, dynamic> json) => TweetItemData(
      uid: json[_columnId] as int,
      userId: json[_columnUserId] as int,
      message: json[_columnMessage] as String);
}
