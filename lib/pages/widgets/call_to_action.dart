import 'package:flutter/material.dart';
import 'package:flutter_app_for_blog_post/extensions/hover_extension.dart';
import 'package:url_launcher/url_launcher.dart';


class CallToAction extends StatelessWidget {
  final String title;
  final Color color;
  CallToAction(this.title, this.color);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        _launchURL("https://www.github.com/henrimakela");
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w800,
            color: Theme.of(context).backgroundColor,
          ),
        ),
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(5)),
      ),
    ).showCursorOnHover;
  }

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}