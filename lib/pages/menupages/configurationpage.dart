import 'package:flutter/material.dart';
import '../../widget/settings/configuration_widget.dart';

class ConfigurationPage extends StatelessWidget {
  const ConfigurationPage({super.key});

  @override
  Widget build(BuildContext context) {
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
          SettingRowWidget(
            "Display and Sound",
            showCheckBox: true,
          ),
          Divider(height: 0),
          SettingRowWidget("Username", subtitle: "@teste"),
        ],
      ),
    );
  }
}
