import 'package:cultbase/pages/components/search_bar.dart';
import 'package:flutter/material.dart';

class DiscoverPage extends StatefulWidget {
  const DiscoverPage({super.key});

  @override
  State<DiscoverPage> createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: const FlexibleSpaceBar(
          title: SearchBarApp(),
          titlePadding: EdgeInsetsDirectional.fromSTEB(4, 10, 4, 0),
        ),
      ),
    );
  }
}
