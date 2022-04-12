import 'package:flutter/material.dart';

import 'hex_color.dart';

class ColorConstants {
  static final Map<int, Color> color = {
    50: Color.fromRGBO(171, 99, 80, .1),
    100: Color.fromRGBO(171, 99, 80, .2),
    200: Color.fromRGBO(171, 99, 80, .3),
    300: Color.fromRGBO(171, 99, 80, .4),
    400: Color.fromRGBO(171, 99, 80, .5),
    500: Color.fromRGBO(171, 99, 80, .6),
    600: Color.fromRGBO(171, 99, 80, .7),
    700: Color.fromRGBO(171, 99, 80, .8),
    800: Color.fromRGBO(171, 99, 80, .9),
    900: Color.fromRGBO(171, 99, 80, 1),
  };

  static final primarySwatch = MaterialColor(0xFF62BC44, color);
  static final primaryColor = HexColor("62BC44");
  static final listTilesUnOpened = Color(0x1100CCAF);
  static final lightGrey = Colors.grey[700];
  static final shimmerGrey = Colors.grey[200];
  static final listSepratorColor = Colors.grey[200];
  static final rectBgColor = HexColor('62BC44');
  static final bgColor = HexColor('EDF0F3');
  static final busyColor = Colors.red;
  static final appBarColor = HexColor('2B3144');
  static final signedMoneyTextColor = HexColor('FF2222');
  static final moneyTextColor = HexColor('62BC44');
  static final infoDarkColor = HexColor('0099CC');
  static final infoColor = HexColor('33B5E5');
  static final successColor = HexColor('00C851');
  static final successDarkColor = HexColor('007E33');
  static final warningColor = HexColor('FFBB33');
  static final warningDarkColor = HexColor('FF8800');
  static final dangerDarkColor = HexColor('CC0000');
  static final dangerColor = HexColor('FF4444');
  static final cartTextColor = HexColor('575F7A');
  static final dividerCollor = HexColor('#DEDEDE');
  static final modalTextColor = HexColor('8F8F8F');
  static final modalMainTextColor = HexColor('#878DA0');
  static final redColor = HexColor('FF2122');
}
