import 'dart:ui';

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    int color;
    color = int.tryParse(hexColor, radix: 16);
    return color ?? int.parse("62BC44", radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
