import 'dart:collection';

import 'package:flutter_app_for_blog_post/data_models/article.dart';
import 'package:rxdart/rxdart.dart';
import 'package:firebase/firebase.dart' as fb;
import 'package:firebase/firestore.dart' as fs;

class ArticleBloc {
  Stream<UnmodifiableListView<Article>> get articles => _articleSubject.stream;
  final _articleSubject = BehaviorSubject<UnmodifiableListView<Article>>();
  final fs.Firestore firestore = fb.firestore();

  ArticleBloc() {
    List<Article> articles = new List();

    firestore.collection("articles").get().then((value) {
      value.docs.forEach((element) {
        articles.add(Article.fromSnapshot(element));
      });
      _articleSubject.add(UnmodifiableListView(articles));
    });
  }

  dispose(){
    _articleSubject.close();
  }
}
