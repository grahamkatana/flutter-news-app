import 'package:flutter/material.dart';
import 'package:newsapp/helper/data.dart';
import 'package:newsapp/helper/news.dart';
import 'package:newsapp/models/category_model.dart';
import 'package:newsapp/widgets/blog_widget.dart';
import 'package:newsapp/widgets/categories_widget.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Category> categories = <Category>[];
  bool _loading = true;
  var articles;
  @override
  void initState() {
    super.initState();
    categories = getCategories();
    bool _loading = true;
    getNews();
    //print(categories);
  }

  void getNews() async {
    print(articles);
    News newsClass = News();
    await newsClass.getNews();
    articles = newsClass.news;
    print(articles);
    setState(() {
      _loading = false;
    });
  }

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
        elevation: 0.0,
        centerTitle: true,
      ),
      body: _loading
          ? Center(
              child: Container(
                child: CircularProgressIndicator(),
              ),
            )
          : SingleChildScrollView(
              child: Container(
                child: Column(
                  children: [
                    //categories
                    Container(
                      height: 85,
                      margin: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                      child: ListView.builder(
                          itemCount: categories.length,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return CardTile(categories[index].image,
                                categories[index].categoryName);
                          }),
                    ),
                    //Blogs
                    Container(
                      child: ListView.builder(
                        itemCount: articles.length,
                        shrinkWrap: true,
                        padding: EdgeInsets.only(top: 16.0, bottom: 16.0),
                        physics: ClampingScrollPhysics(),
                        itemBuilder: (context, index) {
                          return BlogTile(
                            imageUrl: articles[index].urlToImage ??
                                "https://images.unsplash.com/photo-1609743522653-52354461eb27?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1374&q=80",
                            description:
                                articles[index].description ?? "Not available",
                            title: articles[index].title ?? "Not available",
                            url: articles[index].url,
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
