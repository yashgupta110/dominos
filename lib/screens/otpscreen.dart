import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class OTPScreen extends StatefulWidget {
  final String verificationId;
  final String phoneNumber;

  const OTPScreen(
      {super.key, required this.verificationId, required this.phoneNumber});

  @override
  _OTPScreenState createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  final _otpController = TextEditingController();
  final _auth = FirebaseAuth.instance;

  @override
  void dispose() {
    _otpController.dispose();
    super.dispose();
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

  void _verifyOTP() {
    final _credential = PhoneAuthProvider.credential(
      verificationId: widget.verificationId,
      smsCode: _otpController.text,
    );
    _signInWithCredential(_credential);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.only(top: 40.0, left: 15, right: 15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'OTP Verification',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Text(
                  'OTP has been sent to ${widget.phoneNumber} Change',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                ),
                TextField(
                  inputFormatters: [],
                  maxLength: 6,
                  keyboardType: TextInputType.number,
                  controller: _otpController,
                  onChanged: (value) {
                    print(value);
                  },
                ),
              ],
            ),
            Padding(
              padding:  const EdgeInsets.only(bottom: 20.0),
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
                onPressed: _verifyOTP,
                child: const Text(
                  'Login',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
