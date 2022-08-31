import 'package:flutter/material.dart';

import '../pages/tweet_create_page.dart';

class HomeFloatingButton extends StatelessWidget {
  const HomeFloatingButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute<void>(
              builder: (context) => const TweetCreatePage()),
        );
      },
      elevation: 0,
      child: const Icon(Icons.add),
    );
  }
}
