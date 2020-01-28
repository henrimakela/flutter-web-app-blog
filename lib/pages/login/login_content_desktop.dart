import 'package:flutter/material.dart';
import 'package:flutter_app_for_blog_post/pages/login/login_form.dart';

class LoginContentDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      color: Colors.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      child: Container(
        width: 600,
        constraints: BoxConstraints(maxHeight: 400),
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 32.0),
              child: Text(
                "Welcome back Henri",
                style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w800),
              ),
            ),
            SizedBox(height: 10,),
            Row(
              children: <Widget>[
                Container(
                    height: 300,
                    width: 300,
                    decoration: new BoxDecoration(
                        border: Border(
                      right: BorderSide(width: 1.0, color: Colors.grey[300]),
                    )),
                    child: Image.asset("assets/login.png")),
                SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(child: LoginForm())
              ],
            ),
          ],
        ),
      ),
    );
  }
}



