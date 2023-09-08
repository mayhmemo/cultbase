import 'package:cultbase/pages/menupages/bookmarkspage.dart';
import 'package:cultbase/pages/menupages/configurationpage.dart';
import 'package:cultbase/pages/menupages/policypage.dart';
import 'package:cultbase/pages/menupages/profilepage.dart';
import 'package:flutter/material.dart';

class SideBar extends StatefulWidget {
  const SideBar({super.key});

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const UserAccountsDrawerHeader(
            currentAccountPicture: FlutterLogo(),
            accountName: Text('John Doe'),
            accountEmail: Text('john@doe.com'),
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Profile'),
            onTap: () => {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const ProfilePage())),
            },
          ),
          ListTile(
            leading: const Icon(Icons.bookmark),
            title: const Text('Bookmarks'),
            onTap: () => {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const BookmarkPage())),
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.privacy_tip),
            title: const Text('Políticas'),
            onTap: () => {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const PolicyPage())),
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Configurações'),
            onTap: () => {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const ConfigurationPage())),
            },
          ),
        ],
      ),
    );
  }
}
