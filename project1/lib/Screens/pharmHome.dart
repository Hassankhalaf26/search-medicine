import 'package:flutter/material.dart';
import 'PharmProfile.dart'; // Import the profile screen

class PharmacyHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          'Pharmacy Home',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        actions: [
          IconButton(
            icon: Icon(Icons.person, color: Colors.white, size: 30),
            onPressed: () {
              // Navigate to the pharmacy profile screen
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PharmacyProfileScreen()),
              );
            },
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.blueAccent, Colors.teal], // Gradient background color
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 175), // Space for the AppBar
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Text(
                  'Welcome!',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 80),
              // Update Pharmacy Profile Button inside a Card
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                elevation: 8.0,
                shadowColor: Colors.black.withOpacity(0.8),
                child: ElevatedButton.icon(
                  onPressed: () {
                    // Navigate to the Pharmacy Profile Screen

                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green, // Button color
                    padding: EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0), // Rounded button edges
                    ),
                    elevation: 5,
                  ),
                  icon: Icon(Icons.edit, size: 24, color: Colors.white),
                  label: Text(
                    'Manage inventory',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
