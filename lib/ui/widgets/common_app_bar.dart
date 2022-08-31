import 'package:flutter/material.dart';

import '../../main.dart';
import 'user_avatar.dart';

class CommonAppBar extends StatelessWidget {
  const CommonAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      leading: IconButton(
        highlightColor: Colors.transparent,
        onPressed: () => scaffoldKey.currentState?.openDrawer(),
        icon: const CurrentUserAvatar(radius: 20),
      ),
      title: const Icon(Icons.android, color: Colors.blue, size: 30),
      centerTitle: true,
      floating: true,
      elevation: 0.3,
      forceElevated: true,
      shadowColor: Colors.grey,
      backgroundColor: Colors.white,
    );
  }
}
