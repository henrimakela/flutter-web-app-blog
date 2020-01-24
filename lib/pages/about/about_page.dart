import 'package:flutter/material.dart';
import 'package:flutter_app_for_blog_post/pages/about/about_content_desktop.dart';
import 'package:flutter_app_for_blog_post/pages/about/about_content_mobile.dart';

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).size.width < 900
        ? AboutContentMobile()
        : AboutContentDesktop();
  }
}
