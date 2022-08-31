import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../provider/user_item.dart';
import 'user_avatar.dart';

class MaterialDrawer extends StatelessWidget {
  const MaterialDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(children: const [
        _ProfileBlock(),
        Divider(height: 0, thickness: 1),
        ListTile(
          leading: Icon(Icons.person_outline, size: 30),
          title: Text("プロフィール", style: TextStyle(fontSize: 18)),
        ),
        ListTile(
          leading: Icon(Icons.list_alt, size: 30),
          title: Text("リスト", style: TextStyle(fontSize: 18)),
        ),
        ListTile(
          leading: Icon(Icons.flash_on_outlined, size: 30),
          title: Text("モーメント", style: TextStyle(fontSize: 18)),
        ),
        Divider(height: 0, thickness: 1),
        ListTile(
          title: Text("設定とプライバシー", style: TextStyle(fontSize: 18)),
        ),
        ListTile(
          title: Text("ヘルプセンター", style: TextStyle(fontSize: 18)),
        )
      ]),
    );
  }
}

class _ProfileBlock extends ConsumerWidget {
  const _ProfileBlock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(currentUser);
    final formatter = NumberFormat("#,##0");
    String follower = formatter.format(1234567890);
    debugPrint("follower : $follower");
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CurrentUserAvatar(radius: 30),
          const SizedBox(height: 5),
          Text(user.name,
              style:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          const SizedBox(height: 5),
          Text("@${user.address}",
              style: const TextStyle(color: Colors.black54)),
          const SizedBox(height: 15),
          Row(
            children: [
              Text(formatter.format(user.follow),
                  style: const TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(width: 5),
              const Text("フォロー", style: TextStyle(color: Colors.black54)),
              const SizedBox(width: 15),
              Text(formatter.format(user.follower),
                  style: const TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(width: 5),
              const Text("フォロワー", style: TextStyle(color: Colors.black54)),
            ],
          ),
        ],
      ),
    );
  }
}
