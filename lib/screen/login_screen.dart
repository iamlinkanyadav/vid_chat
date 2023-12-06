// login_screen.dart

import 'package:flutter/material.dart';
import 'package:vid_chat/screen/details_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _phoneNumberController = TextEditingController();
  TextEditingController _otpController = TextEditingController();

  bool _isOtpVerified = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Replace with your image or icon
            const Icon(
              Icons.account_circle,
              size: 100,
              color: Colors.blue,
            ),
            const SizedBox(height: 20),
            // Phone number input field
            TextField(
              controller: _phoneNumberController,
              decoration: const InputDecoration(labelText: 'Phone Number'),
            ),
            const SizedBox(height: 10),
            // OTP input field
            TextField(
              controller: _otpController,
              decoration: const InputDecoration(labelText: 'OTP'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implement OTP verification logic here
                String enteredOtp = _otpController.text.trim();

                // For simplicity, let's assume the correct OTP is "1234"
                if (enteredOtp == "1234") {
                  setState(() {
                    _isOtpVerified = true;
                  });

                  // Navigate to UserDetailsScreen if OTP is verified
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsScreen(),
                    ),
                  );
                } else {
                  // Show an error message or handle incorrect OTP
                  // For now, let's print a message to the console
                  print('Incorrect OTP. Please try again.');
                }
              },
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
