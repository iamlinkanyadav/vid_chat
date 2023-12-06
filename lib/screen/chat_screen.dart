// chat_screen.dart

import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  final String contactName;

  ChatScreen({required this.contactName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            // Profile picture
            const CircleAvatar(
              // Replace with your logic for displaying profile picture
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 10),
            // Contact name and online status
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(contactName),
                // Replace with your logic for displaying online status or last seen
                const Text('Online', style: TextStyle(color: Colors.green)),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          // Chat messages
          Expanded(
            child: Container(
              // Replace with your logic for displaying chat messages
              color: Colors.grey[200],
              child: ListView(
                children: [
                  // Sample received message
                  receivedMessage('Hello'),
                  // Sample sent message
                  sentMessage('Hi'),
                  // Add more messages as needed
                ],
              ),
            ),
          ),
          // Message input field
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Type a message...',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                // Send button
                CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: IconButton(
                    icon: const Icon(Icons.send, color: Colors.white),
                    onPressed: () {
                      // Implement logic to send the message
                    },
                  ),
                ),
              ],
            ),
          ),
          // Additional options for sending photos, documents, audio, etc.
          Container(
            height: 50,
            color: Colors.grey[200],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: const Icon(Icons.photo),
                  onPressed: () {
                    // Implement logic to send a photo
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.insert_drive_file),
                  onPressed: () {
                    // Implement logic to send a document
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.mic),
                  onPressed: () {
                    // Implement logic to send an audio message
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Helper method for received messages
  Widget receivedMessage(String message) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const CircleAvatar(
            // Replace with the sender's profile picture
            backgroundColor: Colors.blue,
            child: Icon(
              Icons.person,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 8),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            padding: const EdgeInsets.all(12),
            child: Text(message),
          ),
        ],
      ),
    );
  }

  // Helper method for sent messages
  Widget sentMessage(String message) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(8),
            ),
            padding: const EdgeInsets.all(12),
            child: Text(
              message,
              style: const TextStyle(color: Colors.white),
            ),
          ),
          const SizedBox(width: 8),
          const CircleAvatar(
            // Replace with the sender's profile picture
            backgroundColor: Colors.blue,
            child: Icon(
              Icons.person,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
