import 'package:cultbase/pages/components/feed/feed_card.dart';
import 'package:flutter/material.dart';

class FeedPublicPage extends StatefulWidget {
  const FeedPublicPage({super.key});

  @override
  State<FeedPublicPage> createState() => _FeedPublicPageState();
}

class _FeedPublicPageState extends State<FeedPublicPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: const [
        PostWidget(),
        PostWidget(),
        PostWidget(),
        PostWidget(),
        PostWidget(),
        PostWidget(),
        PostWidget(),
        PostWidget()
      ],
    ));
  }
}
