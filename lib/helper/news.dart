import 'dart:convert';

import 'package:newsapp/models/article_model.dart';
import 'package:http/http.dart' as http;

class News {
  List<Article> news = [];
  Future<void> getNews() async {
    String url =
        "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=910d1cb82c304c4c9049e27043578182";

    var response = await http.get(Uri.parse(url));
    var jsonData = jsonDecode(response.body);
    //print(jsonData);

    if (jsonData['status'] == "ok") {
      jsonData["articles"].forEach((element) {
        if (element["urlToImage"] != null &&
            element["description"] != null &&
            element["author"] != null) {
          Article article = Article(
            title: element["title"],
            urlToImage: element["urlToImage"],
            author: element["author"],
            description: element["description"],
            content: element["content"],
            url: element["url"],
            publishedAt: element["publishedAt"],
          );

          news.add(article);
        }
      });
    }

    // print(news);
  }
}
