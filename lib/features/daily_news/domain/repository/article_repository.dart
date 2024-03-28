import 'package:news_app_cln_arc/features/daily_news/domain/entities/article.dart';
import 'package:news_app_cln_arc/core/resources/data_state.dart';

abstract class ArticleRepository {
  // API methods
  Future<DataState<List<ArticleEntity>>> getNewsArticles();

  // Database methods
  Future<List<ArticleEntity>> getSavedArticles();
  Future<void> saveArticle(ArticleEntity article);
  Future<void> removeArticle(ArticleEntity article);
}
