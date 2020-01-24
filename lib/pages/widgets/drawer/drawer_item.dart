import 'package:flutter/material.dart';
import 'package:flutter_app_for_blog_post/pages/widgets/nav/nav_bar_item.dart';

class DrawerItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final String navigationPath;

  const DrawerItem({this.title, this.navigationPath, this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 32, top: 32),
      child: Row(
        children: <Widget>[
          Icon(icon, color: Theme.of(context).primaryColor,),
          SizedBox(width: 30),
          NavBarItem(title: title, navigationPath: navigationPath,),
        ],
      ),
    );
  }
}