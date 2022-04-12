import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';

import 'package:getx_archticture/services/app_services/localization_service.dart';
import 'router/router.dart';
import 'router/routes_constants.dart';
import 'ui_helpers/app_theme_data.dart';

class MyApp extends StatelessWidget {
  final GlobalKey<ScaffoldState> _appkey = GlobalKey<ScaffoldState>();

  /// @TODO: Move from here
  final GlobalKey<NavigatorState> navigatorKey =
  new GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      key: _appkey,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en', "US"),
        Locale('ar', "AR"),
      ],
      fallbackLocale: LocalizationService.fallbackLocale,
      translations: LocalizationService(),
      locale: LocalizationService.locale,
      builder: (context, child) {
        return FlutterEasyLoading(
          child: child,
        );
      },
      title: 'AppName',
      debugShowCheckedModeBanner: false,
      navigatorKey: navigatorKey,
      theme: AppThemeData.defaultTheme,
      initialRoute: RoutesConstants.homePage,
      getPages: AppRouter.routes,
    );
  }
}
