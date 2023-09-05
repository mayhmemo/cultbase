import 'package:cultbase/pages/collection_page.dart';
import 'package:cultbase/pages/discover_page.dart';
import 'package:cultbase/pages/feed_page.dart';
import 'package:cultbase/pages/notifications_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int actualPage = 0;
  late PageController pageContr;

  @override
  void initState() {
    super.initState();
    pageContr = PageController(initialPage: actualPage);
  }

  setActualPage(page) {
    setState(() {
      actualPage = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    const Color accentColor = Color(0xFFaa8569);

    return Scaffold(
        body: PageView(
          controller: pageContr,
          onPageChanged: setActualPage,
          children: const [
            FeedPage(),
            DiscoverPage(),
            CollectionPage(),
            NotificationsPage()
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: actualPage,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Feed'),
            BottomNavigationBarItem(
                icon: Icon(Icons.public), label: 'Descobrir'),
            BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Acervo'),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications), label: 'Notificações'),
          ],
          selectedItemColor: accentColor,
          onTap: (page) {
            pageContr.animateToPage(page,
                duration: const Duration(milliseconds: 400),
                curve: Curves.ease);
          },
        ));
  }
}
