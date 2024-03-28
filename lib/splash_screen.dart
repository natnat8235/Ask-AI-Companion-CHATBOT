import 'dart:async';
import 'package:flutter/material.dart';
import 'main.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<Splash_Screen> {
  @override
  void initState() {
    super.initState();
    _navigateToMainPage(); // Call the function to navigate after 2 seconds
  }

  void _navigateToMainPage() {
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Home()), // Navigate to Home
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/logo_1.jpg',
                    width: 250,
                    height: 250,
                  ),
                  SizedBox(height: 16), // Add some space between the image and the title
                  Text(
                    'Ask AI Companion',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color(0xFF00B7B7),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 16),
            child: Text(
              'Subject: AppDev (USTP)',
              style: TextStyle(
                fontSize: 12,
                color: Color(0xFF00B7B7),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
