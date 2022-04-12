import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:getx_archticture/services/app_services/ilocalization_service.dart';
import 'package:getx_archticture/my_app.dart';
import 'package:getx_archticture/service_locator.dart';
import 'package:flutter/services.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

void main() async {
  setupLocator();
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
  await Get.find<ILocalizationService>().loadTranslationsFiles();
  await SentryFlutter.init(
        (options) {
          options.dsn = 'https://a0bd8872bb3a42709f768f5612bd8ceb@o877782.ingest.sentry.io/5828819';
        },
    appRunner: () => runApp(MyApp()),
  );
}

bool get isInDebugMode {
  bool inDebugMode = false;
  assert(inDebugMode = true);
  return inDebugMode;
}

Future<void> reportError(Exception error, dynamic stackTrace) async {
  print('Caught error: $error');
  if (isInDebugMode) {
    print(stackTrace);
  } else {
    Sentry.captureException(
      error,
      stackTrace: stackTrace,
    );
  }
}
