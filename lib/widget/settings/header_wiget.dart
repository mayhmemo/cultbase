import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final bool secondHeader;
  const HeaderWidget(this.title, this.subtitle, {this.secondHeader = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 10, top: 10),

      //color: Colors.white,
      alignment: Alignment.centerLeft,
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        onTap: () {
          return;
        },
      ),
    );
  }
}
