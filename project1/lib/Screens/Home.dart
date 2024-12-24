import 'package:flutter/material.dart';
import 'UserProfile.dart';
import 'Favourite.dart';
import 'Search.dart';
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          'Home',
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
            icon: Icon(
              Icons.person,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () {
              // Navigate to the user profile screen
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => UserProfileScreen()));
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
              SizedBox(height: 175),
              // Optional Greeting message
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Text(
                  'Welcome!',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 100),
              // Buttons in a row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Search Button
                  SizedBox(
                    width: 150,
                    height: 150,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        // Navigate to the search page
                        Navigator.push(context,MaterialPageRoute(builder: (context) => SearchScreen()));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green, // Button color
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0), // Rounded button edges
                        ),
                        elevation: 5,
                      ),
                      icon: Icon(Icons.search, size: 25, color: Colors.white),
                      label: Text(
                        'Search',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                  // View Favorites Button
                  SizedBox(
                    width: 150,
                    height: 150,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        // Navigate to the favorites page
                        Navigator.push(context,MaterialPageRoute(builder: (context) => FavoritesPage()));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green, // Button color
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0), // Rounded button edges
                        ),
                        elevation: 5,
                      ),
                      icon: Icon(Icons.bookmark, size: 25, color: Colors.white),
                      label: Text(
                        'Favorites',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 17, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
