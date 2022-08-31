import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

import 'ui/pages/tweet_dm_page.dart';
import 'ui/pages/tweet_home_page.dart';
import 'ui/pages/tweet_notification_page.dart';
import 'ui/pages/tweet_search_page.dart';
import 'ui/widgets/home_floating_button.dart';
import 'ui/widgets/material_bottom_navigation_bar.dart';
import 'ui/widgets/material_drawer.dart';

void main() {
  runApp(const ProviderScope(child: MyMaterialApp()));
}

var scaffoldKey = GlobalKey<ScaffoldState>();

final bottomTabIndex = StateProvider<int>((ref) => 0);

final toShowBody = Provider<Widget>((ref) {
  final index = ref.watch(bottomTabIndex);
  switch (index) {
    case 0:
      return const TweetHomePage();
    case 1:
      return const TweetSearchPage();
    case 2:
      return const TweetNotificationPage();
    case 3:
      return const TweetDmPage();
  }
  return const TweetHomePage();
});

class MyMaterialApp extends ConsumerWidget {
  const MyMaterialApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.mPlus1pTextTheme(Theme.of(context).textTheme),
      ),
      home: Scaffold(
        key: scaffoldKey,
        /* // SliverAppBarにするため、MaterialHomeへ
        appBar: AppBar(
          leading: IconButton(
            highlightColor: Colors.transparent,
            onPressed: () => _scaffoldKey.currentState?.openDrawer(),
            icon: const CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(
                  "https://pbs.twimg.com/profile_images/1210137605234278400/IAozvMHj_400x400.jpg"),
            ),
          ),
          title: const Icon(Icons.android, color: Colors.blue, size: 30),
          centerTitle: true,
          elevation: 0.3,
          shadowColor: Colors.grey,
          backgroundColor: Colors.white,
        ),*/
        drawer: const MaterialDrawer(),
        body: ref.watch(toShowBody),
        floatingActionButton: const HomeFloatingButton(),
        bottomNavigationBar: const MaterialBottomNavigationBar(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
