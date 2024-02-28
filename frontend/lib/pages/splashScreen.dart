import 'package:flutter/material.dart';
import 'package:ordering/pages/HomePage.dart'; // Corrected import statement for HomePage

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key); // Corrected the constructor

  @override
  Widget build(BuildContext context) {
    // Add a delay before navigating to the main screen
    Future.delayed(Duration(seconds: 1), () {
      // Navigate to the home page once the delay is over
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomePage2()),
      );
    });

    return Scaffold(
      body: Center(
        // Add your splash screen content here
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlutterLogo(size: 200), // Your existing FlutterLogo
            SizedBox(height: 20), // Add some spacing
            Text(
              'ORDERING SYSTEM', // Your text
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
