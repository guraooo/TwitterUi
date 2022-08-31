import '../../freezed/tweet_data.dart';
import '../../importer.dart';
import 'icon_button_no_padding.dart';
import 'user_avatar.dart';

class TweetWidget extends ConsumerWidget {
  const TweetWidget({Key? key, required this.tweet}) : super(key: key);

  final TweetItemData tweet;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ProviderScope(
      overrides: [listTweetItem.overrideWithValue(TweetItem(tweet))],
      child: Container(
        padding: const EdgeInsets.all(15),
        color: Colors.white,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            _TweetLeftPane(),
            SizedBox(width: 10),
            Expanded(child: _TweetRightPane()),
          ],
        ),
      ),
    );
  }
}

class _TweetLeftPane extends ConsumerWidget {
  const _TweetLeftPane({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return UserAvatar(
        radius: 25,
        imgUrl: ref.watch(currentUser.select((user) => user.iconUrl)));
  }
}

class _TweetRightPane extends StatelessWidget {
  const _TweetRightPane({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        _RightPaneHeader(),
        _TweetContent(),
        SizedBox(height: 10),
        // Image.asset('images/chikawa0626.jpeg'),
        // Image.network(data.image),
        // Image.network(
        //     "https://pbs.twimg.com/media/FU5FybAakAARIwB?format=jpg&name=medium"),
        // const SizedBox(height: 10),
        _RightPageFooter(),
      ],
    );
  }
}

class _RightPaneHeader extends ConsumerWidget {
  const _RightPaneHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text(
              ref.watch(currentUser.select((user) => user.name)),
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            const SizedBox(width: 10),
            Text("@${ref.watch(currentUser.select((user) => user.address))}"),
            // const Text("・"),
            // Text("${data.createTime}"),
          ],
        ),
        const _MenuWidget(),
      ],
    );
  }
}

class _MenuWidget extends ConsumerWidget {
  const _MenuWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return PopupMenuButton<int>(
      onSelected: (value) async {
        switch (value) {
          case 1:
            final tweet = ref.read(listTweetItem);
            await ref.read(tweetList.notifier).delete(tweet);
            break;
        }
      },
      itemBuilder: (context) => [
        const PopupMenuItem(value: 1, child: Text("ツイートを削除")),
      ],
      child: const Icon(Icons.more_horiz, size: 16),
    );
  }
}

class _TweetContent extends ConsumerWidget {
  const _TweetContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Text(ref.watch(listTweetItem.select((tweet) => tweet.message)));
  }
}

class _RightPageFooter extends ConsumerWidget {
  const _RightPageFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        _EngagementWidget(
            icon: Icons.mode_comment_outlined,
            num: ref.watch(listTweetItem).reply),
        _EngagementWidget(
            icon: Icons.compare_arrows, num: ref.watch(listTweetItem).retweet),
        const _FavoriteWidget(),
        const _EngagementWidget(icon: Icons.share_outlined),
      ],
    );
  }
}

class _EngagementWidget extends StatelessWidget {
  const _EngagementWidget({Key? key, required this.icon, this.num = 0})
      : super(key: key);
  final IconData icon;
  final int num;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Row(
        children: [
          IconButtonNoPadding(
            icon: Icon(icon, size: 16, color: Colors.grey.shade600),
            onPressed: () {},
          ),
          const SizedBox(width: 5),
          Text(
            num == 0 ? "" : num.toString(),
            style: const TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }
}

class _FavoriteWidget extends ConsumerWidget {
  const _FavoriteWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Expanded(
      flex: 1,
      child: Row(
        children: [
          IconButtonNoPadding(
            icon: Icon(Icons.favorite_outline,
                size: 16, color: Colors.grey.shade600),
            onPressed: () {
              ref.read(listTweetItem.notifier).setFavorite();
            },
          ),
          const SizedBox(width: 5),
          // Text(
          //   ,
          //   style: const TextStyle(fontSize: 12),
          // ),
        ],
      ),
    );
  }
}
