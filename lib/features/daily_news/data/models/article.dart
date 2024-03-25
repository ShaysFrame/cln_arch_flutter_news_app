import 'package:news_app_cln_arc/features/daily_news/domain/entities/article.dart';

class ArticleModel extends ArticleEntity {
  const ArticleModel({
    int? id,
    String? author,
    String? title,
    String? description,
    String? url,
    String? urlToImage,
    String? publishedAt,
    String? content,
  });

  factory ArticleModel.fromJson(Map<String, dynamic> map) {
    return ArticleModel(
      author: map['author'] ?? "",
      title: map['title'] ?? "",
      description: map['description'] ?? "",
      url: map['url'] ?? "",
      urlToImage: map['urlToImage'] ?? "",
      publishedAt: map['publishedAt'] ?? "",
      content: map['content'] ?? "",
    );
  }
}

/// Why do we need a model and not use entity?
/// Because domain layer must be independent and not depend on 
/// other layers. And if we want to use entity instead of model 
/// in the data layer, we may change our database in the future 
/// or use XML instead of JSON, in which case we'd have to 
/// change the entity. Which is against the rule of clean 
/// architecture.  
/// 
