import 'package:flutter/material.dart';
import 'package:flutter_app_for_blog_post/pages/widgets/nav/nav_bar_item.dart';
import 'package:flutter_app_for_blog_post/pages/widgets/nav/navbar_logo.dart';
import 'package:flutter_app_for_blog_post/pages/widgets/theme_switch.dart';

class NavBarDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          NavBarLogo(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SizedBox(
                width: 60,
              ),
              NavBarItem(
                title: 'About',
                navigationPath: "about",
              ),
              SizedBox(
                width: 60,
              ),
              NavBarItem(
                title: 'Blog',
                navigationPath: "blog",
              ),
              SizedBox(
                width: 60,
              ),
              NavBarItem(
                title: "Login",
                navigationPath: "login",
              ),
              SizedBox(
                width: 60,
              ),
              ThemeSwitch(),
            ],
          )
        ],
      ),
    );
  }
}
