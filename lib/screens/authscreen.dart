import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Authscreen extends StatefulWidget {
  const Authscreen({super.key});

  @override
  State<Authscreen> createState() {
    return _Authscreen();
  }
}

class _Authscreen extends State<Authscreen> {
  final _auth = FirebaseAuth.instance;
  final _phoneNumberController = TextEditingController();
  final _smsController = TextEditingController();
  String? _verificationId;

  void _verifyPhoneNumber() async {
    await _auth.verifyPhoneNumber(
      phoneNumber: _phoneNumberController.text,
      verificationCompleted: (PhoneAuthCredential credential) async {
        _signInWithCredential(credential);
      },
      verificationFailed: (FirebaseAuthException e) {
        print('Failed to verify phone number: $e');
      },
      codeSent: (String verificationId, int? resendToken) {
        _verificationId = verificationId;
      },
      codeAutoRetrievalTimeout: (String verificationId) {
        _verificationId = verificationId;
      },
    );
  }

  void _signInWithCredential(PhoneAuthCredential credential) async {
    try {
      final UserCredential userCredential =
          await _auth.signInWithCredential(credential);

      if (userCredential.user != null) {
        Navigator.pushReplacementNamed(context, '/home');
      }
    } catch (e) {
      print('Failed to sign in: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 15.0, top: 40.0),
                child: Text(
                  'Domino\'s',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Skip',
                    style: TextStyle(color: Color.fromARGB(255, 3, 83, 129)),
                  )),
            ],
          ),
          Divider(
            color: Colors.grey,
            height: 20,
            thickness: 1,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _phoneNumberController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(color: Colors.black)),
                  labelText: 'Phone number',
                ),
              ),
              TextField(
                controller: _smsController,
                decoration: const InputDecoration(
                  labelText: 'Verification code',
                ),
              ),
              ElevatedButton(
                onPressed: _verifyPhoneNumber,
                child: const Text('Verify phone number'),
              ),
              ElevatedButton(
                onPressed: () =>
                    _signInWithCredential(PhoneAuthProvider.credential(
                  verificationId: _verificationId!,
                  smsCode: _smsController.text,
                )),
                child: const Text('Sign in'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
