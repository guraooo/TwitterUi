import 'package:flutter/material.dart';

import '../effect/no_effect_scroll_behavior.dart';
import '../widgets/common_app_bar.dart';

class TweetSearchPage extends StatelessWidget {
  const TweetSearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        scrollBehavior: NoEffectScrollBehavior(),
        slivers: [
          const CommonAppBar(),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.pinkAccent,
                  child: const Text(
                    "Search",
                    style: TextStyle(fontSize: 25),
                  ),
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
