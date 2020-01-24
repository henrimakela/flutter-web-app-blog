import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Theme.of(context).backgroundColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            LoginForm(),
          ],
        ),
      ),
    );
  }
}


class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          width: 250,
          child: TextField(
            controller: emailController,
            style: TextStyle(color: Theme.of(context).backgroundColor),
            decoration: InputDecoration(

                hintText: "AUTH ID",
                filled: true,
                fillColor: Theme.of(context).primaryColor,
                hintStyle: TextStyle(
                    color: Theme.of(context).backgroundColor,
                    fontWeight: FontWeight.w800),
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(left: 24.0, right: 16.0),
                  child: Icon(
                    Icons.all_inclusive,
                    color: Theme.of(context).backgroundColor,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(32.0))),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(32.0)))),
          ),
        ),
        SizedBox(
          height: 16,
        ),
        SizedBox(
          width: 250,
          child: TextField(
            controller: passwordController,
            style: TextStyle(color: Theme.of(context).backgroundColor),
            decoration: InputDecoration(
                filled: true,
                fillColor: Theme.of(context).primaryColor,
                hintText: "AUTH CODE",
                hintStyle: TextStyle(
                    color: Theme.of(context).backgroundColor,
                    fontWeight: FontWeight.w800),
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(left: 24.0, right: 16.0),
                  child: Icon(
                    Icons.code,
                    color: Theme.of(context).backgroundColor,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(32.0))),
                enabledBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(color: Theme.of(context).primaryColor),
                    borderRadius: BorderRadius.all(Radius.circular(32.0)))),
          ),
        ),
        SizedBox(
          height: 32,
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
      width: 200,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
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
          borderRadius: BorderRadius.circular(32)),
    );
  }
}
