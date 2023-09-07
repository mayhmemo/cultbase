import 'package:cultbase/pages/menupages/bookmarkspage.dart';
import 'package:cultbase/pages/menupages/configurationpage.dart';
import 'package:cultbase/pages/menupages/policypage.dart';
import 'package:cultbase/pages/menupages/profilepage.dart';
import 'package:flutter/material.dart';

List<Widget> Sidebar(context) {
  const Color primaryColor = Color(0xFF7a5030);
  return <Widget>[
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
      title: const Text('Profile'),
      onTap: () => {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => ProfilePage())),
      },
    ),
    ListTile(
      leading: const Icon(Icons.bookmark),
      title: const Text('Bookmarks'),
      onTap: () => {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => BookmarkPage())),
      },
    ),
    const Divider(),
    ListTile(
      leading: const Icon(Icons.privacy_tip),
      title: const Text('Políticas'),
      onTap: () => {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => PolicyPage())),
      },
    ),
    ListTile(
      leading: const Icon(Icons.settings),
      title: const Text('Configurações'),
      onTap: () => {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => ConfigurationPage())),
      },
    ),
  ];
}
