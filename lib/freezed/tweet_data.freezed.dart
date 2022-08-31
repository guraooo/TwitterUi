// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tweet_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TweetItemData {
  int? get uid => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  DateTime? get createTime => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  int get reply => throw _privateConstructorUsedError;
  int get retweet => throw _privateConstructorUsedError;
  bool get favorite => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TweetItemDataCopyWith<TweetItemData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TweetItemDataCopyWith<$Res> {
  factory $TweetItemDataCopyWith(
          TweetItemData value, $Res Function(TweetItemData) then) =
      _$TweetItemDataCopyWithImpl<$Res>;
  $Res call(
      {int? uid,
      int userId,
      String message,
      DateTime? createTime,
      String image,
      int reply,
      int retweet,
      bool favorite});
}

/// @nodoc
class _$TweetItemDataCopyWithImpl<$Res>
    implements $TweetItemDataCopyWith<$Res> {
  _$TweetItemDataCopyWithImpl(this._value, this._then);

  final TweetItemData _value;
  // ignore: unused_field
  final $Res Function(TweetItemData) _then;

  @override
  $Res call({
    Object? uid = freezed,
    Object? userId = freezed,
    Object? message = freezed,
    Object? createTime = freezed,
    Object? image = freezed,
    Object? reply = freezed,
    Object? retweet = freezed,
    Object? favorite = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      createTime: createTime == freezed
          ? _value.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      reply: reply == freezed
          ? _value.reply
          : reply // ignore: cast_nullable_to_non_nullable
              as int,
      retweet: retweet == freezed
          ? _value.retweet
          : retweet // ignore: cast_nullable_to_non_nullable
              as int,
      favorite: favorite == freezed
          ? _value.favorite
          : favorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_TweetItemDataCopyWith<$Res>
    implements $TweetItemDataCopyWith<$Res> {
  factory _$$_TweetItemDataCopyWith(
          _$_TweetItemData value, $Res Function(_$_TweetItemData) then) =
      __$$_TweetItemDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? uid,
      int userId,
      String message,
      DateTime? createTime,
      String image,
      int reply,
      int retweet,
      bool favorite});
}

/// @nodoc
class __$$_TweetItemDataCopyWithImpl<$Res>
    extends _$TweetItemDataCopyWithImpl<$Res>
    implements _$$_TweetItemDataCopyWith<$Res> {
  __$$_TweetItemDataCopyWithImpl(
      _$_TweetItemData _value, $Res Function(_$_TweetItemData) _then)
      : super(_value, (v) => _then(v as _$_TweetItemData));

  @override
  _$_TweetItemData get _value => super._value as _$_TweetItemData;

  @override
  $Res call({
    Object? uid = freezed,
    Object? userId = freezed,
    Object? message = freezed,
    Object? createTime = freezed,
    Object? image = freezed,
    Object? reply = freezed,
    Object? retweet = freezed,
    Object? favorite = freezed,
  }) {
    return _then(_$_TweetItemData(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      createTime: createTime == freezed
          ? _value.createTime
          : createTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      reply: reply == freezed
          ? _value.reply
          : reply // ignore: cast_nullable_to_non_nullable
              as int,
      retweet: retweet == freezed
          ? _value.retweet
          : retweet // ignore: cast_nullable_to_non_nullable
              as int,
      favorite: favorite == freezed
          ? _value.favorite
          : favorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_TweetItemData with DiagnosticableTreeMixin implements _TweetItemData {
  const _$_TweetItemData(
      {this.uid,
      required this.userId,
      this.message = '',
      this.createTime,
      this.image =
          'https://pbs.twimg.com/media/FU5FybAakAARIwB?format=jpg&name=medium',
      this.reply = 0,
      this.retweet = 0,
      this.favorite = false});

  @override
  final int? uid;
  @override
  final int userId;
  @override
  @JsonKey()
  final String message;
  @override
  final DateTime? createTime;
  @override
  @JsonKey()
  final String image;
  @override
  @JsonKey()
  final int reply;
  @override
  @JsonKey()
  final int retweet;
  @override
  @JsonKey()
  final bool favorite;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TweetItemData(uid: $uid, userId: $userId, message: $message, createTime: $createTime, image: $image, reply: $reply, retweet: $retweet, favorite: $favorite)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TweetItemData'))
      ..add(DiagnosticsProperty('uid', uid))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('createTime', createTime))
      ..add(DiagnosticsProperty('image', image))
      ..add(DiagnosticsProperty('reply', reply))
      ..add(DiagnosticsProperty('retweet', retweet))
      ..add(DiagnosticsProperty('favorite', favorite));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TweetItemData &&
            const DeepCollectionEquality().equals(other.uid, uid) &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality()
                .equals(other.createTime, createTime) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.reply, reply) &&
            const DeepCollectionEquality().equals(other.retweet, retweet) &&
            const DeepCollectionEquality().equals(other.favorite, favorite));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uid),
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(createTime),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(reply),
      const DeepCollectionEquality().hash(retweet),
      const DeepCollectionEquality().hash(favorite));

  @JsonKey(ignore: true)
  @override
  _$$_TweetItemDataCopyWith<_$_TweetItemData> get copyWith =>
      __$$_TweetItemDataCopyWithImpl<_$_TweetItemData>(this, _$identity);
}

abstract class _TweetItemData implements TweetItemData {
  const factory _TweetItemData(
      {final int? uid,
      required final int userId,
      final String message,
      final DateTime? createTime,
      final String image,
      final int reply,
      final int retweet,
      final bool favorite}) = _$_TweetItemData;

  @override
  int? get uid;
  @override
  int get userId;
  @override
  String get message;
  @override
  DateTime? get createTime;
  @override
  String get image;
  @override
  int get reply;
  @override
  int get retweet;
  @override
  bool get favorite;
  @override
  @JsonKey(ignore: true)
  _$$_TweetItemDataCopyWith<_$_TweetItemData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TweetsState {
  List<TweetItemData> get tweetList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TweetsStateCopyWith<TweetsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TweetsStateCopyWith<$Res> {
  factory $TweetsStateCopyWith(
          TweetsState value, $Res Function(TweetsState) then) =
      _$TweetsStateCopyWithImpl<$Res>;
  $Res call({List<TweetItemData> tweetList});
}

/// @nodoc
class _$TweetsStateCopyWithImpl<$Res> implements $TweetsStateCopyWith<$Res> {
  _$TweetsStateCopyWithImpl(this._value, this._then);

  final TweetsState _value;
  // ignore: unused_field
  final $Res Function(TweetsState) _then;

  @override
  $Res call({
    Object? tweetList = freezed,
  }) {
    return _then(_value.copyWith(
      tweetList: tweetList == freezed
          ? _value.tweetList
          : tweetList // ignore: cast_nullable_to_non_nullable
              as List<TweetItemData>,
    ));
  }
}

/// @nodoc
abstract class _$$_TweetsStateCopyWith<$Res>
    implements $TweetsStateCopyWith<$Res> {
  factory _$$_TweetsStateCopyWith(
          _$_TweetsState value, $Res Function(_$_TweetsState) then) =
      __$$_TweetsStateCopyWithImpl<$Res>;
  @override
  $Res call({List<TweetItemData> tweetList});
}

/// @nodoc
class __$$_TweetsStateCopyWithImpl<$Res> extends _$TweetsStateCopyWithImpl<$Res>
    implements _$$_TweetsStateCopyWith<$Res> {
  __$$_TweetsStateCopyWithImpl(
      _$_TweetsState _value, $Res Function(_$_TweetsState) _then)
      : super(_value, (v) => _then(v as _$_TweetsState));

  @override
  _$_TweetsState get _value => super._value as _$_TweetsState;

  @override
  $Res call({
    Object? tweetList = freezed,
  }) {
    return _then(_$_TweetsState(
      tweetList: tweetList == freezed
          ? _value._tweetList
          : tweetList // ignore: cast_nullable_to_non_nullable
              as List<TweetItemData>,
    ));
  }
}

/// @nodoc

class _$_TweetsState with DiagnosticableTreeMixin implements _TweetsState {
  _$_TweetsState(
      {final List<TweetItemData> tweetList = const <TweetItemData>[]})
      : _tweetList = tweetList;

  final List<TweetItemData> _tweetList;
  @override
  @JsonKey()
  List<TweetItemData> get tweetList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tweetList);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TweetsState(tweetList: $tweetList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TweetsState'))
      ..add(DiagnosticsProperty('tweetList', tweetList));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TweetsState &&
            const DeepCollectionEquality()
                .equals(other._tweetList, _tweetList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tweetList));

  @JsonKey(ignore: true)
  @override
  _$$_TweetsStateCopyWith<_$_TweetsState> get copyWith =>
      __$$_TweetsStateCopyWithImpl<_$_TweetsState>(this, _$identity);
}

abstract class _TweetsState implements TweetsState {
  factory _TweetsState({final List<TweetItemData> tweetList}) = _$_TweetsState;

  @override
  List<TweetItemData> get tweetList;
  @override
  @JsonKey(ignore: true)
  _$$_TweetsStateCopyWith<_$_TweetsState> get copyWith =>
      throw _privateConstructorUsedError;
}
