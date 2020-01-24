import 'package:flutter/material.dart';
import 'package:flutter_app_for_blog_post/locator.dart';
import 'package:flutter_app_for_blog_post/pages/widgets/centered_container.dart';
import 'package:flutter_app_for_blog_post/pages/widgets/drawer/navigation_drawer.dart';
import 'package:flutter_app_for_blog_post/pages/widgets/nav/nav_bar.dart';
import 'package:flutter_app_for_blog_post/routing/router.dart';
import 'package:flutter_app_for_blog_post/services/navigation_service.dart';

class LayoutTemplate extends StatelessWidget {
  LayoutTemplate({Key key}) : super(key: key);
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: MediaQuery.of(context).size.width < 600 ? NavigationDrawer() : null,
      body: CenteredContainer(
        maxWidth: 1200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            NavigationBar(scaffoldKey: _scaffoldKey),
            Expanded(
                child: Navigator(
                  key: locator<NavigationService>().navigatorKey,
                  onGenerateRoute: generateRoute, //see router.dart
                  initialRoute: "about",)),
          ],
        ),
      ),
    );
  }
}