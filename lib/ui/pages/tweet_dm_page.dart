import 'package:twitter_ui/importer.dart';

import '../effect/no_effect_scroll_behavior.dart';
import '../widgets/common_app_bar.dart';

class TweetDmPage extends StatelessWidget {
  const TweetDmPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        scrollBehavior: NoEffectScrollBehavior(),
        slivers: [
          const CommonAppBar(),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (ctx, index) {
                return AlertDialog(
                  title: const Text("おめでとうございます"),
                  content: const Text("100万円が当たりました！\n受け取るには次の画面に進んでください。"),
                  actions: [
                    TextButton(onPressed: () {}, child: const Text("キャンセル")),
                    TextButton(onPressed: () {}, child: const Text("次へ")),
                  ],
                );
              },
              childCount: 1,
            ),
          ),
        ],
      ),
    );
  }
}
