import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ui_authen/Screens/Welcome/welcome_screen.dart';
import 'package:ui_authen/components/rounded_button.dart';

class SignOutButtom extends StatefulWidget {
  @override
  _SignOutButtom createState() => _SignOutButtom();
}

class _SignOutButtom extends State<SignOutButtom> {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Form(
      child: RoundedButton(
        text: "LOG OUT",
        press: () {
          print("log out success!!");
          signout();
        },
      ),
    );
  }

  signout() {
    _auth.signOut();
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return WelcomeScreen();
    }));
  }
}
