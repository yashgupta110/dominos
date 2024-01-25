import 'package:flutter/material.dart';

class ComboScreen extends StatefulWidget {
  const ComboScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ComboScreen();
  }
}

class _ComboScreen extends State<ComboScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('value offer'),
      ),
      body: const Center(
        child: Text(
          'Everyday value offer',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}
