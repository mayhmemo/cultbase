import 'package:cultbase/pages/components/search_bar.dart';
import 'package:cultbase/pages/discover/tags/tags.dart';
import 'package:flutter/material.dart';

import '../components/side_bar.dart';

class DiscoverPage extends StatefulWidget {
  const DiscoverPage({super.key});

  @override
  State<DiscoverPage> createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  final List<String> words = [
    "Lendo",
    "Quero Ler",
    "Lidos",
    "Abandonei",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: const FlexibleSpaceBar(
          title: SearchBarApp(),
          titlePadding: EdgeInsetsDirectional.fromSTEB(4, 10, 4, 0),
          centerTitle: true,
        ),
      ),
      drawer: const SideBar(),
      body: Container(child: ChoiceChipList(words: words), alignment: Alignment.center,),
    );
  }
}
