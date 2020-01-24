import 'package:firebase/firestore.dart';

class Article {
  String id;
  String title;
  String content;

  Article.fromSnapshot(DocumentSnapshot snapshot) {
    this.id = snapshot.id;
    this.title = snapshot.get("title");
    this.content = snapshot.get("content");
  }
}
