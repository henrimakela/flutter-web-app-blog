import 'package:flutter/material.dart';
import 'package:flutter_app_for_blog_post/pages/widgets/nav/nav_bar_desktop.dart';
import 'package:flutter_app_for_blog_post/pages/widgets/nav/nav_bar_mobile.dart';

class NavigationBar extends StatelessWidget {
  GlobalKey<ScaffoldState> scaffoldKey;

  NavigationBar({this.scaffoldKey});

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width < 600) {
      return NavBarMobile(scaffoldKey: scaffoldKey);
    } else {
      return NavBarDesktop();
    }
  }
}
