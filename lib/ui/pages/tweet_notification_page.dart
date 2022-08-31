import 'package:flutter/material.dart';

import '../effect/no_effect_scroll_behavior.dart';
import '../widgets/common_app_bar.dart';

class TweetNotificationPage extends StatelessWidget {
  const TweetNotificationPage({Key? key}) : super(key: key);

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
                  color: Colors.greenAccent,
                  child: const Text(
                    "Notification",
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
