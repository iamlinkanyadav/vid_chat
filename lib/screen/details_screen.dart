// details_screen.dart

import 'package:flutter/material.dart';
import 'package:vid_chat/screen/main_screen.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  DetailsScreenState createState() => DetailsScreenState();
}

class DetailsScreenState extends State<DetailsScreen> {
  // You can use controllers to get the values from text fields
  TextEditingController _nameController = TextEditingController();
  TextEditingController _dobController = TextEditingController();

  // You can use a variable to store the selected gender
  String _selectedGender = 'Male'; // Default value

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Avatar selection
            CircleAvatar(
              // Replace with your avatar logic or image
              radius: 50,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.person,
                size: 50,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            // Name input
            TextField(
              controller: _nameController,
              decoration: InputDecoration(labelText: 'Name'),
            ),
            SizedBox(height: 20),
            // Gender selection
            Row(
              children: <Widget>[
                Text('Gender:'),
                SizedBox(width: 10),
                DropdownButton<String>(
                  value: _selectedGender,
                  onChanged: (String? newValue) {
                    setState(() {
                      _selectedGender = newValue!;
                    });
                  },
                  items: <String>['Male', 'Female', 'Other']
                      .map<DropdownMenuItem<String>>(
                        (String value) => DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        ),
                      )
                      .toList(),
                ),
              ],
            ),
            SizedBox(height: 20),
            // Date of Birth input
            TextField(
              controller: _dobController,
              decoration: InputDecoration(labelText: 'Date of Birth'),
              onTap: () async {
                DateTime? pickedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(1900),
                  lastDate: DateTime.now(),
                );

                if (pickedDate != null && pickedDate != DateTime.now()) {
                  setState(() {
                    _dobController.text =
                        "${pickedDate.day}-${pickedDate.month}-${pickedDate.year}";
                  });
                }
              },
            ),
            SizedBox(height: 20),
            // Save button
            ElevatedButton(
              onPressed: () {
                // Implement logic to save user details
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MainScreen(),
                    ));
                // You can access the values using _nameController.text, _selectedGender, _dobController.text
                // After saving, you can navigate to the MainScreen or wherever needed
              },
              child: Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}
