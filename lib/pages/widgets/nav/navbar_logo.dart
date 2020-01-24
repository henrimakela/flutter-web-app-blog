import 'package:flutter/material.dart';

class NavBarLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Theme.of(context).primaryColor
          ),
            child: Padding(
              padding: const EdgeInsets.all(22.0),
              child: Text(
      "hm",
      style: TextStyle(fontWeight: FontWeight.w800, fontSize: 22, color: Theme.of(context).backgroundColor),
    ),
            )));
  }
}
