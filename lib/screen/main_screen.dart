// main_screen.dart

import 'package:flutter/material.dart';
import 'package:vid_chat/screen/contact_list_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Replace with your image or icon
            const Icon(
              Icons.chat,
              size: 100,
              color: Colors.green,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to the contact list screen
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ContactListScreen(),
                  ),
                );
              },
              child: const Text('Open Contacts'),
            ),
          ],
        ),
      ),
    );
  }
}
