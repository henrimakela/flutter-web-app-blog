import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_app_for_blog_post/bloc/article_bloc.dart';

import 'package:flutter_app_for_blog_post/data_models/article.dart';

class BlogPage extends StatefulWidget {
  @override
  _BlogPageState createState() => _BlogPageState();
}

class _BlogPageState extends State<BlogPage> {
  final ArticleBloc articleBloc = ArticleBloc();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: StreamBuilder<UnmodifiableListView<Article>>(
        stream: articleBloc.articles,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(itemBuilder: (context, index) {
              Article article = snapshot.data[index];
              return ListTile(
                title: Text(article.title, style: TextStyle(color: Theme.of(context).primaryColor),),
                subtitle: Text(article.content, style: TextStyle(color: Theme.of(context).primaryColor)),
              );
            },
            itemCount: snapshot.data.length,
            );
          }
          return CircularProgressIndicator();
        },
      )),
    );
  }
}
