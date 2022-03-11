import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/views/article_view.dart';

class BlogTile extends StatelessWidget {
  final imageUrl, title, description, url;
  BlogTile(
      {required this.imageUrl, required this.description, required this.title,required this.url});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10.0, left: 10.0, top: 10.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>ArticleView(blogUrl: url)));
        },
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: CachedNetworkImage(
                imageUrl: imageUrl,
              ),
            ),
            SizedBox(
              height: 3.0,
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 17.0,
                color: Colors.black87,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              description,
              style: TextStyle(
                color: Colors.grey,
              ),
            )
          ],
        ),
      ),
    );
  }
}
