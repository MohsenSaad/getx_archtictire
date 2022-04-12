import 'package:get/get.dart';

import '../../../Models/news_model.dart';
import '../../../ui_helpers/aoi_constants.dart';
import '../network_services/abstract_network_service.dart';
import 'abstract_news_service.dart';

class NewsService extends GetxService implements AbstractNewsService{

  final networkService=Get.find<AbstractNetworkService>();

  @override
  Future<List<NewsArticle>> getNews()async{
    String url=ApiConstants.TOP_HEADLINES_URL;
   final response= await networkService.get(url);
   if(response.statusCode==200){
     final result=response.data;
     Iterable list=result['articles'];
     return list.map((e) => NewsArticle.fromJson(e)).toList();
   }else{
     throw Exception("failed to get news");
   }

  }

}