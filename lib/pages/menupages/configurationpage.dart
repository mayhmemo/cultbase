import 'package:cultbase/utils/user_preferences.dart';
import 'package:cultbase/widget/settings/header_wiget.dart';
import 'package:flutter/material.dart';
import '../../widget/settings/configuration_widget.dart';

class ConfigurationPage extends StatelessWidget {
  const ConfigurationPage({super.key});

  @override
  Widget build(BuildContext context) {
    const user = UserPreferences.myUser;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Settings and privacy',
        ),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: const <Widget>[
          SettingRowWidget("Account"),
          Divider(height: 1),
          SettingRowWidget("Notifications", visibleSwitch: true),
          Divider(height: 0),
          SettingRowWidget("Security"),
          Divider(height: 0),
          SettingRowWidget("Display and Sound"),
          Divider(height: 0),
          SettingRowWidget("Username", subtitle: "@teste"),
        ],
      ),
    );
  }
}
