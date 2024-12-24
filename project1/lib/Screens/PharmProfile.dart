import 'package:flutter/material.dart';

class PharmacyProfileScreen extends StatefulWidget {
  @override
  _PharmacyProfileScreenState createState() => _PharmacyProfileScreenState();
}

class _PharmacyProfileScreenState extends State<PharmacyProfileScreen> {
  // Placeholder values for the pharmacy info
  final TextEditingController _nameController = TextEditingController(text: "Pharmacy A");
  final TextEditingController _addressController = TextEditingController(text: "123 Main Street");
  final TextEditingController _phoneController = TextEditingController(text: "123-456-7890");

  void _saveChanges() {
    // Logic for saving changes (e.g., updating Firebase)
    print("Saved changes: ${_nameController.text}, ${_addressController.text}, ${_phoneController.text}");
    // Show confirmation or error message if needed
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pharmacy Profile'),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            icon: Icon(Icons.save),
            onPressed: _saveChanges,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Pharmacy Name
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: 'Pharmacy Name',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            // Pharmacy Address
            TextField(
              controller: _addressController,
              decoration: InputDecoration(
                labelText: 'Address',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            // Pharmacy Phone
            TextField(
              controller: _phoneController,
              decoration: InputDecoration(
                labelText: 'Phone Number',
                border: OutlineInputBorder(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
