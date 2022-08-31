import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../provider/user_item.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({Key? key, required this.imgUrl, this.radius = 20})
      : super(key: key);
  final String imgUrl;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundImage: NetworkImage(imgUrl),
      backgroundColor: Colors.transparent,
    );
  }
}

class CurrentUserAvatar extends ConsumerWidget {
  const CurrentUserAvatar({Key? key, this.radius = 20}) : super(key: key);
  final double radius;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return UserAvatar(radius: radius, imgUrl: ref.watch(currentUser).iconUrl);
  }
}
