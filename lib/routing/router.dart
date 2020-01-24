import 'package:flutter/material.dart';
import 'package:flutter_app_for_blog_post/pages/about/about_page.dart';
import 'package:flutter_app_for_blog_post/pages/blog/blog_page.dart';
import 'package:flutter_app_for_blog_post/pages/login/login_page.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  print('generateRoute: ${settings.name}');
  switch (settings.name) {
    case "about":
      return _getPageRoute(AboutPage());
    case "blog":
      return _getPageRoute(BlogPage());
    case "login":
      return _getPageRoute(LoginPage());
    default:
      return _getPageRoute(AboutPage());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(
    builder: (context) => child,
  );
}