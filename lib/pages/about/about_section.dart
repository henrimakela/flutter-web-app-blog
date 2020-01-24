
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_app_for_blog_post/pages/widgets/call_to_action.dart';

class AboutSection extends StatelessWidget {
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
            'WELCOME \nTO MY SITE',
            textAlign: textAlign,
            style: TextStyle(
                fontWeight: FontWeight.w800, fontSize: titleSize, height: 0.9, color: Theme.of(context).primaryColor),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'This website was build with Flutter to provide context for the article I wrote about web application development with Flutter. The backend for the blog posts is handled by Firebase. You can view the full source code on my github page',
            textAlign: textAlign,
            style: TextStyle(fontSize: contentSize, height: 1.7, color: Theme.of(context).primaryColor),
          ),
          SizedBox(height: 30,),
          CallToAction("Take me to Github", Theme.of(context).buttonColor)
        ],
      ),
    );
  }
}
