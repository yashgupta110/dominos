import 'package:flutter/material.dart';

class EvoScreen extends StatefulWidget {
  const EvoScreen({super.key});

  @override
  State<EvoScreen> createState() {
    return _EvoScreen();
  }
}

class _EvoScreen extends State<EvoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: const Text('Everyday value Offers'),
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
