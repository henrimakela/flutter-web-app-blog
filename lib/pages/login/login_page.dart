import 'package:flutter/material.dart';
import 'package:flutter_app_for_blog_post/pages/login/login_content_desktop.dart';
import 'package:flutter_app_for_blog_post/pages/login/login_content_mobile.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {


  @override
  Widget build(BuildContext context) {

    TextAlign textAlign = MediaQuery.of(context).size.width < 700 ? TextAlign.center : TextAlign.start;
    double titleSize = MediaQuery.of(context).size.width < 700 ? 50 : 80;
    double contentSize = MediaQuery.of(context).size.width < 700 ? 16 : 21;
    CrossAxisAlignment crossAxisAlignment = MediaQuery.of(context).size.width < 700 ? CrossAxisAlignment.center : CrossAxisAlignment.start;

    return Center(
      child: Container(
        color: Theme.of(context).backgroundColor,
        child: LoginForm()
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

   return MediaQuery.of(context).size.width < 900 ? LoginContentMobile() : LoginContentDesktop();
  }
}

