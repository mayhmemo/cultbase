import 'package:flutter/material.dart';
import 'components/notifications/notification_card.dart';
import 'components/side_bar.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Center(
          child: ListView(children: const <Widget>[
            NotificationWidget(),
            NotificationWidget(),
            NotificationWidget(),
            NotificationWidget(),
            NotificationWidget(),
          ]),
        ),
      ),
      drawer: const SideBar(),
    );
  }
}
