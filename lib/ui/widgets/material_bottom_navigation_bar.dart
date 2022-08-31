import '../../importer.dart';
import '../../main.dart';

class MaterialBottomNavigationBar extends ConsumerWidget {
  const MaterialBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BottomNavigationBar(
      currentIndex: ref.watch(bottomTabIndex),
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.black,
      onTap: (index) => ref.read(bottomTabIndex.notifier).state = index,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          activeIcon: Icon(Icons.home_rounded),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search_rounded),
          activeIcon: Icon(Icons.saved_search_rounded),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications_none_rounded),
          activeIcon: Icon(Icons.notifications_rounded),
          label: 'Notification',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.email_outlined),
          activeIcon: Icon(Icons.email_rounded),
          label: 'DM',
        ),
      ],
    );
  }
}
