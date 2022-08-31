import 'package:sqflite/sqlite_api.dart';
import '../../freezed/user_data.dart';

class UserTable {
  static const String _tableName = "UserTable";
  static const String _columnId = "id";
  static const String _columnName = "name";
  static const String _columnAddress = "address";

  static const String createSql = '''
    CREATE TABLE $_tableName(
      $_columnId INTEGER PRIMARY KEY AUTOINCREMENT,
      $_columnName TEXT NOT NULL,
      $_columnAddress TEXT NOT NULL
      )
  ''';

  UserTable(this.database);

  final Database database;

  Future insert(UserData user) async =>
      await database.insert(_tableName, toMap(user));

  Future<List<UserData>> loadAllUsers() async {
    var maps = await database.query(_tableName);
    return maps.map((map) => fromMap(map)).toList();
  }

  Map<String, dynamic> toMap(UserData user) => <String, dynamic>{
        _columnId: user.uid,
        _columnName: user.name,
        _columnAddress: user.address
      };

  UserData fromMap(Map<String, dynamic> json) => UserData(
      uid: json[_columnId] as int,
      name: json[_columnName] as String,
      address: json[_columnAddress] as String);
}
