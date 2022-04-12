import 'package:flutter/material.dart';

import 'color_constants.dart';
import 'ui_constants.dart';

class AppThemeData {
  static ThemeData get defaultTheme {
    return ThemeData(
      primaryColor: ColorConstants.primaryColor,
      buttonColor: ColorConstants.primaryColor,
      primarySwatch: ColorConstants.primarySwatch,
      buttonTheme: UiConstants.buttonThemeData,
    );
  }
}
