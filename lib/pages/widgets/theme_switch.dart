import 'package:flutter/material.dart';
import 'package:flutter_app_for_blog_post/bloc/theme_bloc.dart';
import 'package:provider/provider.dart';

class ThemeSwitch extends StatelessWidget {
  String imagePath;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<bool>(
        stream: Provider.of<ThemeBloc>(context).isDarkMode,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            print("Is dark mode: " + snapshot.data.toString());
            return GestureDetector(
              onTap: () {
                Provider.of<ThemeBloc>(context, listen: false)
                    .setDarkMode
                    .add(!snapshot.data);
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: SizedBox(
                        height: 32,
                        width: 32,
                        child: Image.asset(snapshot.data == true ? "assets/light_mode.png" : "assets/dark_mode.png")),
                  ),
                  Text(snapshot.data == true ? "LIGHT MODE" : "DARK MODE", style: TextStyle(fontWeight: FontWeight.w800 ,color: Theme.of(context).primaryColor),)
                ],
              ),
            );
          }
          return Container();
        });
  }
}
