import 'package:flutter/material.dart';
import 'package:first_app/screens/home_screen.dart'; // Import the home screen

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                // Navigate to the HomeScreen (Water Supply)
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              child: Text('Water Supply'),
            ),
            SizedBox(height: 16), // Add space between the buttons
            ElevatedButton(
              onPressed: () {
                // Handle the action when the second button is clicked.
              },
              child: Text('Customer Details'),
            ),
          ],
        ),
      ),
    );
  }
}
