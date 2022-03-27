

class Article {
  Article({
    this.author,
    this.title,
    this.urlToImage,
    this.publishedAt,
    this.content,
  });

  String? author;
  String? title;
  String? urlToImage;
  String? publishedAt;
  String? content;

  factory Article.fromJson(Map<String, dynamic> json) => Article(
    author: json["author"] ?? "Null",
    title: json["title"] ?? "Null",
    urlToImage: json["urlToImage"] ?? "https://wiki.tripwireinteractive.com/images/4/47/Placeholder.png",
    publishedAt: json["publishedAt"]?? "Date time",
    content: json["content"] ?? "Content",
  );

}


