import '../../freezed/tweet_data.dart';
import '../db/tweet_table.dart';

class TweetRepository {
  final TweetTable _tweetTable;

  TweetRepository(this._tweetTable);

  Future<List<TweetItemData>> loadAllTweets() => _tweetTable.loadAllTweets();

  Future insert(TweetItemData tweet) async {
    await _tweetTable.insert(tweet);
  }

  Future delete(TweetItemData tweet) async {
    await _tweetTable.delete(tweet);
  }
}
