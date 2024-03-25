import 'package:news_app_cln_arc/features/daily_news/domain/entities/article.dart';
import 'package:news_app_cln_arc/core/resources/data_state.dart';

abstract class ArticleRepository {
  Future<DataState<List<ArticleEntity>>> getNewsArticles();
}
