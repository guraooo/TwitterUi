import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../freezed/tweet_data.dart';

class TweetItem extends StateNotifier<TweetItemData> {
  TweetItem(TweetItemData? tweet)
      : super(tweet ?? const TweetItemData(userId: 1));

  int get count => state.message.length;

  void setTweetMessage(String value) {
    state = state.copyWith(message: value);
  }

  void _setTime() {
    // state = state.copyWith(createTime: dateTimeRepo.getDateTimeNow());
  }

  TweetItemData getTweet() {
    _setTime();
    return state;
  }

  void setFavorite() {
    state = state.copyWith(favorite: !state.favorite);
    print("favorite : ${state.favorite}");
  }
}

final newTweetItem =
    StateNotifierProvider.autoDispose<TweetItem, TweetItemData>(
        (ref) => TweetItem(null));

final listTweetItem =
    StateNotifierProvider.autoDispose<TweetItem, TweetItemData>(
        (ref) => TweetItem(null));
