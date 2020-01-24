import 'package:flutter/material.dart';
import 'package:flutter_app_for_blog_post/bloc/theme_bloc.dart';
import 'package:flutter_app_for_blog_post/credentials.dart';
import 'package:flutter_app_for_blog_post/layout_template/layout_template.dart';
import 'package:flutter_app_for_blog_post/locator.dart';
import 'package:firebase/firebase.dart' as Firebase;
import 'package:provider/provider.dart';

Future<void> main() async {
  if (Firebase.apps.isEmpty) {
    print(Firebase.apps);
    Firebase.initializeApp(
        apiKey: Credentials.API_KEY,
        authDomain: Credentials.AUTH_DOMAIN,
        databaseURL: Credentials.DATABASE_URL,
        projectId: Credentials.PROJECT_ID,
        storageBucket: Credentials.STORAGE_BUCKET,
        messagingSenderId: Credentials.MESSAGING_SENDER_ID,
        appId: Credentials.APP_ID,
        measurementId: Credentials.MEASUREMENT_ID);
  }
  setupLocator();
  runApp(Provider<ThemeBloc>(
      create: (context) => ThemeBloc(),
      dispose: (context, value) => value.dispose(),
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Object>(
      stream: Provider.of<ThemeBloc>(context).theme,
      builder: (context, snapshot) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: snapshot.data,
          home: LayoutTemplate(),
        );
      },
    );
  }
}
