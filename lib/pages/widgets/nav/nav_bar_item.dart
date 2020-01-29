import 'package:flutter/material.dart';
import 'package:flutter_app_for_blog_post/locator.dart';
import 'package:flutter_app_for_blog_post/services/navigation_service.dart';
import 'package:flutter_app_for_blog_post/extensions/hover_extension.dart';

class NavBarItem extends StatelessWidget {
  final String title;
  final String navigationPath;

  NavBarItem({Key key, this.title, this.navigationPath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        locator<NavigationService>().navigateTo(navigationPath);
      },
      child: Text(
        title,
        style: TextStyle(fontSize: 18, color: Theme.of(context).primaryColor),
      ),
    ).showCursorOnHover;
  }
}
