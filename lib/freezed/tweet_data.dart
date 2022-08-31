import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tweet_data.freezed.dart';

@freezed
class TweetItemData with _$TweetItemData {
  const factory TweetItemData({
    int? uid,
    required int userId,
    @Default('') String message,
    DateTime? createTime,
    @Default('https://pbs.twimg.com/media/FU5FybAakAARIwB?format=jpg&name=medium')
        String image,
    @Default(0) int reply,
    @Default(0) int retweet,
    @Default(false) bool favorite,
  }) = _TweetItemData;
}

@freezed
class TweetsState with _$TweetsState {
  factory TweetsState({
    @Default(<TweetItemData>[]) List<TweetItemData> tweetList,
  }) = _TweetsState;
}
