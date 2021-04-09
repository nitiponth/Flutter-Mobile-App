import 'package:flutter/material.dart';
import 'package:ui_authen/components/rounded_button.dart';
import 'package:ui_authen/constants.dart';

class SignForm extends StatefulWidget {
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  String email;
  String password;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(height: size.height * 0.02),
          buildPasswordFormField(),
          SizedBox(height: size.height * 0.025),
          RoundedButton(
            text: "LOG IN",
            press: () {
              print('hello!!');
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {},
      decoration: InputDecoration(
        suffixIcon: Icon(
          Icons.person,
          color: kPrimaryColor,
        ),
        labelText: "Email",
        hintText: "Enter your email",
        contentPadding: EdgeInsets.symmetric(horizontal: 42, vertical: 20),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(28),
          borderSide: BorderSide(color: kPrimaryLightColor),
          gapPadding: 10,
        ),
        isDense: true,
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {},
      decoration: InputDecoration(
        suffixIcon: Icon(
          Icons.lock,
          color: kPrimaryColor,
        ),
        labelText: "Password",
        hintText: "Enter your password",
        contentPadding: EdgeInsets.symmetric(horizontal: 42, vertical: 20),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(28),
          borderSide: BorderSide(color: kPrimaryLightColor),
          gapPadding: 10,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }
}
