import 'package:cultbase/pages/components/side_bar.dart';
import 'package:cultbase/pages/subpages/feed_friends.dart';
import 'package:cultbase/pages/subpages/feed_public.dart';
import 'package:flutter/material.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      initialIndex: 0,
      length: 2,
      vsync: this,
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  final List<Widget> _tabs = [
    const FeedFriendsPage(),
    const FeedPublicPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Feed'),
        bottom: TabBar(
          controller: _tabController,
          tabs: const <Widget>[
            Tab(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.people),
                  SizedBox(width: 10),
                  Text('Amigos'),
                ],
              ),
            ),
            Tab(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.public),
                  SizedBox(width: 10),
                  Text('Geral'),
                ],
              ),
            ),
          ],
        ),
      ),
      drawer: const SideBar(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => (),
      ),
      body: TabBarView(
        controller: _tabController,
        children: _tabs,
      ),
    );
  }
}
