// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserData {
  int? get uid => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get iconUrl => throw _privateConstructorUsedError;
  int get follow => throw _privateConstructorUsedError;
  int get follower => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserDataCopyWith<UserData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDataCopyWith<$Res> {
  factory $UserDataCopyWith(UserData value, $Res Function(UserData) then) =
      _$UserDataCopyWithImpl<$Res>;
  $Res call(
      {int? uid,
      String name,
      String address,
      String iconUrl,
      int follow,
      int follower});
}

/// @nodoc
class _$UserDataCopyWithImpl<$Res> implements $UserDataCopyWith<$Res> {
  _$UserDataCopyWithImpl(this._value, this._then);

  final UserData _value;
  // ignore: unused_field
  final $Res Function(UserData) _then;

  @override
  $Res call({
    Object? uid = freezed,
    Object? name = freezed,
    Object? address = freezed,
    Object? iconUrl = freezed,
    Object? follow = freezed,
    Object? follower = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      iconUrl: iconUrl == freezed
          ? _value.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as String,
      follow: follow == freezed
          ? _value.follow
          : follow // ignore: cast_nullable_to_non_nullable
              as int,
      follower: follower == freezed
          ? _value.follower
          : follower // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_UserDataCopyWith<$Res> implements $UserDataCopyWith<$Res> {
  factory _$$_UserDataCopyWith(
          _$_UserData value, $Res Function(_$_UserData) then) =
      __$$_UserDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? uid,
      String name,
      String address,
      String iconUrl,
      int follow,
      int follower});
}

/// @nodoc
class __$$_UserDataCopyWithImpl<$Res> extends _$UserDataCopyWithImpl<$Res>
    implements _$$_UserDataCopyWith<$Res> {
  __$$_UserDataCopyWithImpl(
      _$_UserData _value, $Res Function(_$_UserData) _then)
      : super(_value, (v) => _then(v as _$_UserData));

  @override
  _$_UserData get _value => super._value as _$_UserData;

  @override
  $Res call({
    Object? uid = freezed,
    Object? name = freezed,
    Object? address = freezed,
    Object? iconUrl = freezed,
    Object? follow = freezed,
    Object? follower = freezed,
  }) {
    return _then(_$_UserData(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      iconUrl: iconUrl == freezed
          ? _value.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as String,
      follow: follow == freezed
          ? _value.follow
          : follow // ignore: cast_nullable_to_non_nullable
              as int,
      follower: follower == freezed
          ? _value.follower
          : follower // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_UserData implements _UserData {
  const _$_UserData(
      {this.uid,
      this.name = "偽ちいかわ",
      this.address = "nisemonodesu",
      this.iconUrl = 'https://pbs.twimg.com/profile_images/1210137605234278400/'
          'IAozvMHj_400x400.jpg',
      this.follow = 0,
      this.follower = 0});

  @override
  final int? uid;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String address;
  @override
  @JsonKey()
  final String iconUrl;
  @override
  @JsonKey()
  final int follow;
  @override
  @JsonKey()
  final int follower;

  @override
  String toString() {
    return 'UserData(uid: $uid, name: $name, address: $address, iconUrl: $iconUrl, follow: $follow, follower: $follower)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserData &&
            const DeepCollectionEquality().equals(other.uid, uid) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality().equals(other.iconUrl, iconUrl) &&
            const DeepCollectionEquality().equals(other.follow, follow) &&
            const DeepCollectionEquality().equals(other.follower, follower));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uid),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(iconUrl),
      const DeepCollectionEquality().hash(follow),
      const DeepCollectionEquality().hash(follower));

  @JsonKey(ignore: true)
  @override
  _$$_UserDataCopyWith<_$_UserData> get copyWith =>
      __$$_UserDataCopyWithImpl<_$_UserData>(this, _$identity);
}

abstract class _UserData implements UserData {
  const factory _UserData(
      {final int? uid,
      final String name,
      final String address,
      final String iconUrl,
      final int follow,
      final int follower}) = _$_UserData;

  @override
  int? get uid;
  @override
  String get name;
  @override
  String get address;
  @override
  String get iconUrl;
  @override
  int get follow;
  @override
  int get follower;
  @override
  @JsonKey(ignore: true)
  _$$_UserDataCopyWith<_$_UserData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UsersInfo {
  List<UserData> get usersList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UsersInfoCopyWith<UsersInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersInfoCopyWith<$Res> {
  factory $UsersInfoCopyWith(UsersInfo value, $Res Function(UsersInfo) then) =
      _$UsersInfoCopyWithImpl<$Res>;
  $Res call({List<UserData> usersList});
}

/// @nodoc
class _$UsersInfoCopyWithImpl<$Res> implements $UsersInfoCopyWith<$Res> {
  _$UsersInfoCopyWithImpl(this._value, this._then);

  final UsersInfo _value;
  // ignore: unused_field
  final $Res Function(UsersInfo) _then;

  @override
  $Res call({
    Object? usersList = freezed,
  }) {
    return _then(_value.copyWith(
      usersList: usersList == freezed
          ? _value.usersList
          : usersList // ignore: cast_nullable_to_non_nullable
              as List<UserData>,
    ));
  }
}

/// @nodoc
abstract class _$$_UsersInfoCopyWith<$Res> implements $UsersInfoCopyWith<$Res> {
  factory _$$_UsersInfoCopyWith(
          _$_UsersInfo value, $Res Function(_$_UsersInfo) then) =
      __$$_UsersInfoCopyWithImpl<$Res>;
  @override
  $Res call({List<UserData> usersList});
}

/// @nodoc
class __$$_UsersInfoCopyWithImpl<$Res> extends _$UsersInfoCopyWithImpl<$Res>
    implements _$$_UsersInfoCopyWith<$Res> {
  __$$_UsersInfoCopyWithImpl(
      _$_UsersInfo _value, $Res Function(_$_UsersInfo) _then)
      : super(_value, (v) => _then(v as _$_UsersInfo));

  @override
  _$_UsersInfo get _value => super._value as _$_UsersInfo;

  @override
  $Res call({
    Object? usersList = freezed,
  }) {
    return _then(_$_UsersInfo(
      usersList: usersList == freezed
          ? _value._usersList
          : usersList // ignore: cast_nullable_to_non_nullable
              as List<UserData>,
    ));
  }
}

/// @nodoc

class _$_UsersInfo implements _UsersInfo {
  _$_UsersInfo({final List<UserData> usersList = const <UserData>[]})
      : _usersList = usersList;

  final List<UserData> _usersList;
  @override
  @JsonKey()
  List<UserData> get usersList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_usersList);
  }

  @override
  String toString() {
    return 'UsersInfo(usersList: $usersList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UsersInfo &&
            const DeepCollectionEquality()
                .equals(other._usersList, _usersList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_usersList));

  @JsonKey(ignore: true)
  @override
  _$$_UsersInfoCopyWith<_$_UsersInfo> get copyWith =>
      __$$_UsersInfoCopyWithImpl<_$_UsersInfo>(this, _$identity);
}

abstract class _UsersInfo implements UsersInfo {
  factory _UsersInfo({final List<UserData> usersList}) = _$_UsersInfo;

  @override
  List<UserData> get usersList;
  @override
  @JsonKey(ignore: true)
  _$$_UsersInfoCopyWith<_$_UsersInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
