import 'package:flutter/material.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({super.key});

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  @override
  Widget build(BuildContext context) {
    const Color textColor = Color(0xFFf2ede7);
    const Color backgroundColor = Color(0xFF171a23);
    const Color primaryColor = Color(0xFF7a5030);
    const Color secondaryColor = Color(0xFF27273a);

    return Scaffold(
      appBar: AppBar(
        title: Text('Feed'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const UserAccountsDrawerHeader(
              currentAccountPicture: FlutterLogo(),
              accountName: Text('John Doe'),
              accountEmail: Text('john@doe.com'),
              decoration: BoxDecoration(
                color: primaryColor,
              ),
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Perfil'),
              onTap: () => (),
            ),
            ListTile(
              leading: const Icon(Icons.bookmark),
              title: const Text('Bookmarks'),
              onTap: () => (),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.privacy_tip),
              title: const Text('Políticas'),
              onTap: () => (),
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Configurações'),
              onTap: () => (),
            ),
          ],
        ),
      ),
    );
  }
}
