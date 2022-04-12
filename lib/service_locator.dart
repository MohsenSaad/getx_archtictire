import 'package:getx_archticture/services/app_services/ilocalization_service.dart';
import 'package:getx_archticture/services/api_services/network_services/abstract_network_service.dart';
import 'package:getx_archticture/services/api_services/network_services/network_service.dart';
import 'package:getx_archticture/services/api_services/news_service/abstract_news_service.dart';
import 'package:getx_archticture/services/api_services/news_service/news_service.dart';
import 'package:getx_archticture/services/app_services/localization_service.dart';
import 'package:get/get.dart';

void setupLocator() {
  /// App Services
    Get.lazyPut<ILocalizationService>(()=>LocalizationService());

  /// Api Services
    Get.lazyPut<AbstractNetworkService>(()=>NetworkService());
    Get.lazyPut<AbstractNewsService>(()=>NewsService());

}
