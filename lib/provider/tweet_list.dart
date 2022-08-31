import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../freezed/tweet_data.dart';
import '../model/db/app_database.dart';
import '../model/db/tweet_table.dart';
import '../model/repository/tweet_repository.dart';

class TweetList extends StateNotifier<TweetsState> {
  TweetList() : super(TweetsState()) {
    init();
  }

  late TweetRepository _repository;

  Future<void> init() async {
    _repository = TweetRepository(TweetTable(await MainDatabase().database));
    await loadTweetList();
  }

  Future<void> loadTweetList() async {
    final list = await _repository.loadAllTweets();
    state = state.copyWith(tweetList: list);
  }

  Future<void> insert(TweetItemData data) async {
    await _repository.insert(data);
    await loadTweetList();
  }

  Future<void> delete(TweetItemData data) async {
    await _repository.delete(data);
    await loadTweetList();
  }
}

final tweetList =
    StateNotifierProvider<TweetList, TweetsState>((ref) => TweetList());
