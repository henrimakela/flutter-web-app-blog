import 'dart:collection';
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_app_for_blog_post/bloc/article_bloc.dart';

import 'package:flutter_app_for_blog_post/data_models/article.dart';
import 'package:flutter_app_for_blog_post/pages/widgets/newsletter.dart';

class BlogPage extends StatefulWidget {
  @override
  _BlogPageState createState() => _BlogPageState();
}

class _BlogPageState extends State<BlogPage> {
  final ArticleBloc articleBloc = ArticleBloc();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 60),
      child: Center(
          child: StreamBuilder<UnmodifiableListView<Article>>(
        stream: articleBloc.articles,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemBuilder: (context, index) {
                Article article = snapshot.data[index];
                return ArticleSection(
                  title: article.title,
                  content: article.content,
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

class ArticleSection extends StatelessWidget {
  String title;
  String content;

  ArticleSection({this.title, this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 24.0,
                  color: Theme.of(context).primaryColor),
            ),
            SizedBox(
              height: 20,
            ),
            Text(content,
                style: TextStyle(color: Theme.of(context).primaryColor)),
          ],
        ),
      ),
    );
  }
}
