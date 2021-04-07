import 'package:flutter/material.dart';
import 'package:ui_authen_app/components/text_field_container.dart';

import '../constants.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChange;
  const RoundedPasswordField({
    Key key,
    this.onChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChange,
        decoration: InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: KPrimaryColor,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: KPrimaryColor,
            size: 25,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
