import 'package:cultbase/pages/components/feed/feed_card.dart';
import 'package:flutter/material.dart';

class FeedFriendsPage extends StatefulWidget {
  const FeedFriendsPage({super.key});

  @override
  State<FeedFriendsPage> createState() => _FeedFriendsPageState();
}

class _FeedFriendsPageState extends State<FeedFriendsPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: PostWidget(),
    );
  }
}
