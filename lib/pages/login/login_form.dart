
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text("Identification is required"),
        SizedBox(
          height: 24,
        ),
        SizedBox(
          width: 250,
          child: TextField(
            decoration: InputDecoration(hintText: "Auth id"),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        SizedBox(
          width: 250,
          child: TextField(
            decoration: InputDecoration(hintText: "Auth code"),
          ),
        ),
        SizedBox(
          height: 40,
        ),
        SubmitButton()
      ],
    );
  }
}
class SubmitButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
      child: Text(
        "Login",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w800,
          color: Theme.of(context).backgroundColor,
        ),
      ),
      decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(24)),
    );
  }
}
