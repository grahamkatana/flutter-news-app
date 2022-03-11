import 'package:flutter/material.dart';

class CategoryArticles extends StatefulWidget {
  final String category;
  CategoryArticles({required this.category});
  @override
  State<CategoryArticles> createState() => _CategoryArticlesState();
}

class _CategoryArticlesState extends State<CategoryArticles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("News"),
            Text(
              "Org",
              style: TextStyle(
                color: Colors.grey,
              ),
            )
          ],
        ),
        actions: [
          Opacity(
            opacity: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Icon(Icons.save),
            ),
          )
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Container(),
    );
  }
}
