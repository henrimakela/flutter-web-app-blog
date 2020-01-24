import 'package:flutter/material.dart';
import 'package:flutter_app_for_blog_post/pages/widgets/nav/navbar_logo.dart';

class NavBarMobile extends StatelessWidget {
  GlobalKey<ScaffoldState> scaffoldKey;

  NavBarMobile({this.scaffoldKey});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
              onPressed: (){
                scaffoldKey.currentState.openDrawer();
              },
              icon: Icon(Icons.menu, color: Theme.of(context).primaryColor,)),
          NavBarLogo()
        ],
      ),
    );
  }
}
