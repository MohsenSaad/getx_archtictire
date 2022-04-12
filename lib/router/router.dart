import 'package:get/get.dart';
import 'package:getx_archticture/modules/details/details_page.dart';
import 'package:getx_archticture/router/routes_constants.dart';
import 'package:getx_archticture/modules/home/home_page.dart';
class AppRouter {
  static final routes = [
    /// HoePage Route
    GetPage(name: RoutesConstants.homePage,
         page: () => MyHomePage(),
        transition: Transition.fade,
    ),
    GetPage(name: RoutesConstants.detailsPage, page: () => DetailsPage()),
  ];
}
