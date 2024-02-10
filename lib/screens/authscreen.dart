import 'package:dominos/screens/otpscreen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:icons_flutter/icons_flutter.dart';

class Authscreen extends StatefulWidget {
  const Authscreen({super.key});

  @override
  State<Authscreen> createState() {
    return _Authscreen();
  }
}

class _Authscreen extends State<Authscreen> {
  final _auth = FirebaseAuth.instance;
  final _phoneNumberController = TextEditingController(text: '+91 ');
  String? _verificationId;

  void _verifyPhoneNumber() async {
    await _auth.verifyPhoneNumber(
      phoneNumber: _phoneNumberController.text,
      verificationCompleted: (PhoneAuthCredential credential) async {},
      verificationFailed: (FirebaseAuthException e) {
        print('Failed to verify phone number: $e');
      },
      codeSent: (String verificationId, int? resendToken) {
        _verificationId = verificationId;
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => OTPScreen(
                  verificationId: verificationId,
                  phoneNumber: _phoneNumberController.text)),
        );
      },
      codeAutoRetrievalTimeout: (String verificationId) {
        _verificationId = verificationId;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView(
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
                      style: const ButtonStyle(
                        splashFactory: NoSplash.splashFactory,
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Skip',
                        style:
                            TextStyle(color: Color.fromARGB(255, 3, 83, 129)),
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 15.0, top: 15.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          Icon(
                            FlutterIcons.brightness_percent_mco,
                            size: 25,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            ' Personalized \n Offers',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          Icon(
                            MaterialCommunityIcons.pizza,
                            size: 25,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            ' Loyalty \n Rewards',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          Icon(
                            MaterialIcons.payment,
                            size: 25,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            ' Easy \n Payments',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Divider(
                  color: Colors.grey,
                  height: 30,
                  thickness: 1,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 15, bottom: 15),
                  child: Text(
                    'Login to unlock awesome benefits',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: TextField(
                    controller: _phoneNumberController,
                    keyboardType: TextInputType.number,
                    onSubmitted: (value) => _verifyPhoneNumber(),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(color: Colors.black)),
                      labelText: 'Phone number',
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Text(
            'By going forward you accept Terms & Conditions',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Color.fromARGB(255, 79, 79, 79),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 10, 15, 15),
            child: ElevatedButton(
              style: ButtonStyle(
                minimumSize: const MaterialStatePropertyAll(
                  Size(double.infinity, 50),
                ),
                backgroundColor: MaterialStatePropertyAll(
                  Colors.grey[700],
                ),
                splashFactory: NoSplash.splashFactory,
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              onPressed: _verifyPhoneNumber,
              child: const Text(
                'Send OTP',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
