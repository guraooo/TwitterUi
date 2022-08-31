import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_data.freezed.dart';

@freezed
class UserData with _$UserData {
  const factory UserData({
    int? uid,
    @Default("偽ちいかわ")
        String name,
    @Default("nisemonodesu")
        String address,
    @Default('https://pbs.twimg.com/profile_images/1210137605234278400/'
        'IAozvMHj_400x400.jpg')
        String iconUrl,
    @Default(0)
        int follow,
    @Default(0)
        int follower,
  }) = _UserData;
}

@freezed
class UsersInfo with _$UsersInfo {
  factory UsersInfo({
    @Default(<UserData>[]) List<UserData> usersList,
  }) = _UsersInfo;
}
