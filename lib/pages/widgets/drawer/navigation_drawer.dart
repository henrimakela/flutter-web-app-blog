import 'package:flutter/material.dart';
import 'package:flutter_app_for_blog_post/pages/widgets/drawer/drawer_item.dart';
import 'package:flutter_app_for_blog_post/pages/widgets/theme_switch.dart';

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
          color: Theme.of(context).backgroundColor,
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 16)]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            children: <Widget>[
              DrawerHeader(),
              DrawerItem(
                  title: "About", navigationPath: "about", icon: Icons.star),
              DrawerItem(
                  title: 'Blog',
                  navigationPath: "blog",
                  icon: Icons.play_circle_outline),
              DrawerItem(
                  title: 'Login',
                  navigationPath: "login",
                  icon: Icons.dashboard),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(32.0),
                child: ThemeSwitch(),
              ),
            ],
          )
        ],
      ),
    );
  }
}
