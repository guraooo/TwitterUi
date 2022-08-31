import '../../freezed/user_data.dart';
import '../db/user_table.dart';

class UserRepository {
  final UserTable _userTable;

  UserRepository(this._userTable);

  Future<List<UserData>> loadAllUsers() => _userTable.loadAllUsers();

  Future insert(UserData user) async {
    await _userTable.insert(user);
  }
}
