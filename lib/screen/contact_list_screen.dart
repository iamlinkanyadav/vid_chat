// contact_list_screen.dart

import 'package:flutter/material.dart';

import 'chat_screen.dart';

class ContactListScreen extends StatelessWidget {
  const ContactListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Fetch and display a list of registered contacts
    List<String> contacts = [
      'Contact 1',
      'Contact 2',
      'Contact 3'
    ]; // Replace with actual contacts

    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacts'),
      ),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(contacts[index]),
            onTap: () {
              // Navigate to the chat screen when a contact is selected
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      ChatScreen(contactName: contacts[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
