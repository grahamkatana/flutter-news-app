class Article {
  late String author;
  late String title;
  late String description;
  late String urlToImage;
  late String content;
  late String url;
  late String publishedAt;

  Article(
      {required this.author,
      required this.content,
      required this.description,
      required this.title,
      required this.urlToImage,
      required this.url,
      required this.publishedAt});
}
