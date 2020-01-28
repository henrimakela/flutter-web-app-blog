import 'package:flutter/material.dart';
import 'package:flutter_app_for_blog_post/pages/login/login_form.dart';

class LoginContentMobile extends StatefulWidget {
  @override
  _LoginContentMobileState createState() => _LoginContentMobileState();
}

class _LoginContentMobileState extends State<LoginContentMobile> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Card(
        elevation: 2,
        color: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0))),
        child: Container(
          constraints: BoxConstraints(maxHeight: 600),
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                "Welcome back Henri",
                style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w800),
              ),
              SizedBox(height: 10,),
              Expanded(
                  child: Image.asset("assets/login.png")),
              SizedBox(
                width: 10,
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(child: LoginForm()),
            ],
          ),
        ),
      ),
    );
  }
}
