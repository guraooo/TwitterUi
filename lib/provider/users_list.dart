import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../freezed/user_data.dart';

class UsersList extends StateNotifier<UsersInfo> {
  UsersList() : super(UsersInfo());
}

final usersList =
    StateNotifierProvider<UsersList, UsersInfo>((ref) => UsersList());
