import 'package:dominos/screens/home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  void _logout() async {
    await FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Screen'),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            _logout();
           Navigator.pop(context , const Home(phone_number: '',));
          },
          child: const Text(
            'Logout',
            style: TextStyle(fontSize: 26),
          ),
        ),
      ),
    );
  }
}
