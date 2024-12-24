import 'package:flutter/material.dart';

class UserProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.0),
            // User Basic Info
            Text(
              'Hello, John Doe!',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Email: johndoe@example.com',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey[700],
              ),
            ),
            Text(
              'Phone: +123456789',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey[700],
              ),
            ),
            SizedBox(height: 30.0),

            // Edit Profile Button
            ListTile(
              leading: Icon(Icons.edit, color: Colors.black),
              title: Text('Edit Profile'),
              onTap: () {
                Navigator.pushNamed(context, '/editProfile');
              },
            ),
            Divider(),

            // Change Password
            ListTile(
              leading: Icon(Icons.lock, color: Colors.black),
              title: Text('Change Password'),
              onTap: () {
                Navigator.pushNamed(context, '/changePassword');
              },
            ),
            Divider(),

            // Order History
            ListTile(
              leading: Icon(Icons.history, color: Colors.black),
              title: Text('Order History'),
              onTap: () {
                Navigator.pushNamed(context, '/orderHistory');
              },
            ),
            Divider(),

            // Notification Settings
            ListTile(
              leading: Icon(Icons.notifications, color: Colors.black),
              title: Text('Notification Settings'),
              onTap: () {
                Navigator.pushNamed(context, '/notificationSettings');
              },
            ),
            Divider(),

            // Privacy Settings
            ListTile(
              leading: Icon(Icons.privacy_tip, color: Colors.black),
              title: Text('Privacy Settings'),
              onTap: () {
                Navigator.pushNamed(context, '/privacySettings');
              },
            ),
            Divider(),

            // Help & Support
            ListTile(
              leading: Icon(Icons.help, color: Colors.black),
              title: Text('Help & Support'),
              onTap: () {
                Navigator.pushNamed(context, '/helpSupport');
              },
            ),
            Divider(),

            // Logout Button
            SizedBox(height: 30.0),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Placeholder for logout logic
                  print('User logged out');
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    '/welcome',
                        (route) => false,
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                ),
                child: Text(
                  'Logout',
                  style: TextStyle(fontSize: 16.0, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
