import '../../freezed/tweet_data.dart';
import '../../importer.dart';
import '../effect/no_effect_scroll_behavior.dart';
import '../widgets/common_app_bar.dart';
import '../widgets/tweet_widget.dart';

class TweetHomePage extends StatelessWidget {
  const TweetHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        scrollBehavior: NoEffectScrollBehavior(),
        slivers: const [
          CommonAppBar(),
          TweetList(),
        ],
      ),
    );
  }
}

class TweetList extends ConsumerWidget {
  const TweetList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<TweetItemData> list =
        ref.watch(tweetList.select((state) => state.tweetList));

    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => index.isEven
            ? TweetWidget(
                tweet: list[index ~/ 2],
              )
            : Divider(color: Colors.grey.shade300, height: 0.4),
        childCount: list.isEmpty ? 0 : list.length * 2 - 1,
      ),
    );
  }
}
