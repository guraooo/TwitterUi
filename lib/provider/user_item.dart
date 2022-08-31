import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../freezed/user_data.dart';
import '../model/db/app_database.dart';
import '../model/db/user_table.dart';
import '../model/repository/user_repository.dart';

class UserItem extends StateNotifier<UserData> {
  UserItem() : super(const UserData()) {
    init();
  }

  late UserRepository _repository;

  Future<void> init() async {
    _repository = UserRepository(UserTable(await MainDatabase().database));
    await _repository.insert(state);
  }
}

final currentUser =
    StateNotifierProvider<UserItem, UserData>((ref) => UserItem());

// final selectUser = StateNotifierProvider.family
//     .autoDispose<UserItem, UserData, int>((ref, userId) => UserItem());
