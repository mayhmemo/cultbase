import 'package:flutter/material.dart';

class PolicyPage extends StatelessWidget {
  const PolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Politicas'),
      ),
      body: const Center(
        child: Text('Página de politicas'),
      ),
    );
  }
}
