// ignore_for_file: library_private_types_in_public_api, unused_field

import 'package:first_app/reusable_widgets/reusable_widgets.dart';
import 'package:first_app/screens/home_screen.dart';
import 'package:first_app/utils/color_utils.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key:key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _phoneTextController = TextEditingController();
  TextEditingController _userNameTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Sign Up", 
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            hexStringToColor("CB2B93"),
            hexStringToColor("9546C4"),
            hexStringToColor("5E61F4")
          ],
          begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          child: SingleChildScrollView(
            child: Padding(
            padding: EdgeInsets.fromLTRB(
              20, MediaQuery.of(context).size.height * 0.2, 20, 0),
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 20,
              ),
              reusableTextField("Enter Mail ID", Icons.mail_outline, false, _emailTextController),
              const SizedBox(
                height: 20,
              ),
              reusableTextField("Enter Phone Number", Icons.mobile_friendly, false, _phoneTextController),
              const SizedBox(
                height: 20,
              ),
               reusableTextField("Enter Name", Icons.person_outline, true, _userNameTextController),
              const SizedBox(
                height: 20,
              ),
               reusableTextField("Enter Password", Icons.lock_outline, true, _passwordTextController),
               const SizedBox(
                height: 20,
              ),
              signInSignUpButton(context, false, (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomeScreen()));
              })
          ]
        ),
      ))),
    );
  }
}