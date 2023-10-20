import 'package:flutter/material.dart';

class SettingRowWidget extends StatefulWidget {
  const SettingRowWidget(
    this.title, {
    Key? key,
    this.subtitle,
    this.visibleSwitch,
    this.showCheckBox,
  }) : super(key: key);
  final bool? showCheckBox, visibleSwitch;
  final String? subtitle, title;

  @override
  State<SettingRowWidget> createState() => _SettingRowWidgetState();
}

class _SettingRowWidgetState extends State<SettingRowWidget> {
  bool isSelected = false;

  void toggleSwitch(bool value) {
    setState(() {
      isSelected = !isSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 2, horizontal: 15),
          onTap: () {},
          title: widget.title == null ? const Text('') : Text(widget.title!),
          subtitle: widget.subtitle == null ? null : Text(widget.subtitle!),
          trailing: widget.visibleSwitch == null
              ? null
              : Switch(
                  value: isSelected,
                  onChanged: toggleSwitch,
                ),
        ),
      ],
    );
  }
}
