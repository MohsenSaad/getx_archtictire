import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'color_constants.dart';
import 'hex_color.dart';

class UiConstants {
  //Text styles
  static final pageTitleTextStyle =
      TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  static final customerNameTextStyle =
      TextStyle(fontSize: 15, fontWeight: FontWeight.bold);
  static final customerEmailTextStyle =
      TextStyle(fontSize: 10, fontWeight: FontWeight.normal);
  static final totalPrefixNumberStyle = TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.bold,
      color: ColorConstants.cartTextColor);
  static final subTotalPrefixNumberStyle = TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.bold,
      color: ColorConstants.dangerColor,
      decoration: TextDecoration.lineThrough);
  static final totalSuffixNumberStyle = TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.bold,
      color: ColorConstants.cartTextColor);
  static final cartItemTextStyyle = TextStyle(
      fontSize: 16,
      color: ColorConstants.cartTextColor,
      fontWeight: FontWeight.bold);
  static final modalMainTextStyyle = TextStyle(
      fontSize: 13,
      color: ColorConstants.modalMainTextColor,
      fontWeight: FontWeight.bold);
  static final hintStyle = TextStyle(
      fontSize: 13,
      color: Color.fromRGBO(88, 95, 122, 1),
      fontWeight: FontWeight.normal);

  static final labelTextStyle = TextStyle(
      fontSize: 15,
      color: Color.fromRGBO(88, 95, 122, 1),
      fontWeight: FontWeight.normal);

  //Themes
  static final buttonThemeData = ButtonThemeData(
      padding: EdgeInsets.fromLTRB(40, 15, 40, 15),
      buttonColor: ColorConstants.primaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(5.0),
      ),
      textTheme: ButtonTextTheme.primary);

  static final transactionList = TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w500,
    color: HexColor('585F79'),
  );
  static final kitchenText = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w500,
    color: HexColor('585F79'),
  );
  static final inactiveText = TextStyle(color: Colors.white.withOpacity(0.5));

  static final activeText = TextStyle(color: Colors.white);
}
