
import 'package:flutter/material.dart';
import 'package:flutter_app_for_blog_post/pages/about/about_section.dart';


class AboutContentDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        AboutSection(),
        Expanded(child: Image.asset('assets/progressive_app_light.png'))
      ],
    );
  }
}
