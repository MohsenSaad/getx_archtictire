
import '../../../Models/news_model.dart';

abstract class AbstractNewsService{
  Future<List<NewsArticle>> getNews();
}