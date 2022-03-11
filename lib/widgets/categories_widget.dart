import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/views/category_articles.dart';

class CardTile extends StatelessWidget {
  final imageUrl, categoryName;
  CardTile(this.imageUrl, this.categoryName);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //CategoryNews
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    CategoryArticles(category: categoryName)));
      },
      child: Container(
        margin: EdgeInsets.only(right: 10.0, left: 10.0),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: CachedNetworkImage(
                imageUrl: imageUrl,
                width: 120.0,
                height: 80.0,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Colors.black54,
              ),
              width: 120.0,
              alignment: Alignment.center,
              height: 80.0,
              child: Text(
                categoryName,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
