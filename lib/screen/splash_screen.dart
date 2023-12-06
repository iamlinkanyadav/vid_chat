// splash_screen.dart

import 'package:flutter/material.dart';
import 'package:vid_chat/screen/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Add any initialization logic here, e.g., loading data, etc.
    // Navigate to the next screen after a delay
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Replace with your image or icon
            Icon(
              Icons.videocam,
              size: 100,
              color: Colors.blue,
            ),
            SizedBox(height: 20),
            // You can add a loading indicator or other elements here
            CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
