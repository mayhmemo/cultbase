import 'package:cultbase/pages/collection_page.dart';
import 'package:cultbase/pages/discover_page.dart';
import 'package:cultbase/pages/feed_page.dart';
import 'package:cultbase/pages/notifications_page.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int currentPageIndex = 0;
  NavigationDestinationLabelBehavior labelBehavior =
      NavigationDestinationLabelBehavior.onlyShowSelected;

  final List<Widget> pages = [
    const FeedPage(),
    const DiscoverPage(),
    const CollectionPage(),
    const NotificationsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentPageIndex,
        children: pages,
      ),
      bottomNavigationBar: NavigationBar(
        labelBehavior: labelBehavior,
        selectedIndex: currentPageIndex,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Feed',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.explore),
            icon: Icon(Icons.explore_outlined),
            label: 'Descobrir',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.book),
            icon: Icon(Icons.book_outlined),
            label: 'Acervo',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.notifications),
            icon: Icon(Icons.notifications_outlined),
            label: 'Notificações',
          ),
        ],
      ),
    );
  }
}
