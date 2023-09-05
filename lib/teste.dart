import 'package:flutter/material.dart';

/// Flutter code sample for [BottomNavigationBar].

void main() => runApp(const BottomNavigationBarExampleApp());

class BottomNavigationBarExampleApp extends StatelessWidget {
  const BottomNavigationBarExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BottomNavigationBarExample(),
    );
  }
}

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({super.key});

  @override
  State<BottomNavigationBarExample> createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 3: Settings',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    const Color textColor = Color(0xFFf2ede7);
    const Color backgroundColor = Color(0xFF171a23);
    const Color primaryColor = Color(0xFF7a5030);
    const Color secondaryColor = Color(0xFF27273a);
    const Color accentColor = Color(0xFFaa8569);

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => (),
        backgroundColor: accentColor,
      ),
      backgroundColor: backgroundColor,
      drawer: Drawer(
        backgroundColor: backgroundColor,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: FlutterLogo(),
              accountName: Text('John Doe'),
              accountEmail: Text('john@doe.com'),
              decoration: BoxDecoration(
                color: primaryColor,
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: const Text('Perfil'),
              onTap: () => (),
              textColor: textColor,
              iconColor: textColor,
            ),
            ListTile(
              leading: Icon(Icons.bookmark),
              title: const Text('Bookmarks'),
              onTap: () => (),
              textColor: textColor,
              iconColor: textColor,
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: const Text('Configurações'),
              onTap: () => (),
              textColor: textColor,
              iconColor: textColor,
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text('Sample'),
        backgroundColor: backgroundColor,
        elevation: 0,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1.0),
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: secondaryColor,
                  width: 1.0,
                ),
              ),
            ),
          ),
        ),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: secondaryColor,
              width: 1.0,
            ),
          ),
        ),
        child: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Feed',
              backgroundColor: backgroundColor,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.public),
              label: 'Descobrir',
              backgroundColor: backgroundColor,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book),
              label: 'Acervo',
              backgroundColor: backgroundColor,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Notificações',
              backgroundColor: backgroundColor,
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: accentColor,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
