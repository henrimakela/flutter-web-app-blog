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

    return Center(child: NotYetImpelmented());
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

class NotYetImpelmented extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextAlign textAlign = MediaQuery.of(context).size.width < 700 ? TextAlign.center : TextAlign.start;
    double titleSize = MediaQuery.of(context).size.width < 700 ? 50 : 80;
    double contentSize = MediaQuery.of(context).size.width < 700 ? 16 : 21;
    CrossAxisAlignment crossAxisAlignment = MediaQuery.of(context).size.width < 700 ? CrossAxisAlignment.center : CrossAxisAlignment.start;

    return Container(
      width: 600,
      child: Column(
        crossAxisAlignment: crossAxisAlignment,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'OOPS',
            textAlign: textAlign,
            style: TextStyle(
                fontWeight: FontWeight.w800, fontSize: titleSize, height: 0.9, color: Theme.of(context).primaryColor),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'This section is not yet implemented',
            textAlign: textAlign,
            style: TextStyle(fontSize: contentSize, height: 1.7, color: Theme.of(context).primaryColor),
          ),

        ],
      ),
    );
  }
}


