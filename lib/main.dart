import 'package:flutter/material.dart';
import 'package:first_app/screens/signin_screen.dart';
import 'package:first_app/screens/dashboard_screen.dart'; // Import your dashboard screen

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SignInScreen(),
      routes: {
        '/dashboardScreen': (context) => DashboardScreen(), // Add the route for your dashboard screen
      },
    );
  }
}
