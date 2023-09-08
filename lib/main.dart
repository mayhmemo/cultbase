import 'package:flutter/material.dart';
import 'package:cultbase/pages/shared/bottom_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CultBase',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          useMaterial3: true,
          colorSchemeSeed: const Color(0xFFaa8569),
          brightness: Brightness.dark),
      home: const BottomBar(),
    );
  }
}
