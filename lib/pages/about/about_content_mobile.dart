import 'package:flutter/material.dart';
import 'package:flutter_app_for_blog_post/pages/about/about_section.dart';
import 'package:flutter_app_for_blog_post/pages/widgets/call_to_action.dart';

class AboutContentMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(

      child: ListView(
        children: <Widget>[
          SizedBox(
              height: 300,
              width: 300,
              child: Image.asset('assets/progressive_app_light.png')),
          AboutSection(),
        ],
      ),
    );
  }
}
