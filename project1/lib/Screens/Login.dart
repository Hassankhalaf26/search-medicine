import 'package:flutter/material.dart';
import 'UserSignUp.dart';
import 'PharmSignUp.dart';
class LoginScreen extends StatefulWidget {
  final String role; // Role can be 'user' or 'pharmacy'

  LoginScreen({required this.role});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isLoading = false;

  void _login() {
    setState(() {
      _isLoading = true;
    });

    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        _isLoading = false;
      });

      // Implement role-specific logic here
      if (widget.role == 'user') {
        print('Logged in as User');
        // Call Firebase user login method
      } else if (widget.role == 'pharmacy') {
        print('Logged in as Pharmacy Admin');
        // Call Firebase pharmacy admin login method
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.black), // Back arrow icon
                  onPressed: () {
                    Navigator.pop(context); // Navigate back to the previous screen
                  },
                ),
              ),

              SizedBox(height: 110.0), // Increased space at the top
              Text(
                'Login to your ${widget.role} account',
                style: TextStyle(
                  fontSize: 28.0, // Increased font size
                  fontWeight: FontWeight.bold,
                  color: Colors.black, // Black color for header
                ),
              ),
              SizedBox(height: 80.0), // Additional space below the header
              TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email, color: Colors.black),
                  hintText: 'Email',
                  ),
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 20.0),
              TextField(
                controller: _passwordController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock, color: Colors.black),
                  hintText: 'Password',
                 ),
                obscureText: true,
              ),
              SizedBox(height: 60.0),
              _isLoading
                  ? CircularProgressIndicator()
                  : SizedBox(
                width: double.infinity, // Full-width button
                child: ElevatedButton(
                  onPressed: _login,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 15.0),
                  ),
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 18.0),
                  ),
                ),
              ),
              SizedBox(height: 30.0),
              GestureDetector(
                onTap: () {
                  print("Forgot Password tapped");
                },
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.blueAccent,
                  ),
                ),
              ),
              SizedBox(height: 40.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(fontSize: 16.0),
                  ),
                  SizedBox(width: 5.0),
                  GestureDetector(
                    onTap: () {
                      if (widget.role == 'user') {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => UserSignUpScreen())); // Navigate to the Sign-Up Screen
                      } else if (widget.role == 'pharmacy') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => PharmacySignUpScreen()),
                        );

                      }
                    },
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.bold,
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
