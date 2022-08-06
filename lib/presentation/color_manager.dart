import 'package:flutter/material.dart';

class ColorManager {
  static Color primary = HexColor.fromHex("#ED9728");
  static Color darkGrey = HexColor.fromHex("#525252");
  static Color grey = HexColor.fromHex("#737477");
  static Color lightGrey = HexColor.fromHex("#9E9E9E");
  static Color primaryOpacity70 = HexColor.fromHex("#B3ED9728");
}

extension HexColor on Color {
  static Color fromHex(String hexColor) {
    hexColor = hexColor.replaceAll("#", "");
    // IF HEX CODE IS OF LENGTH OF 6 IT'S A COLOR WITHOUT OPACITY.
    if (hexColor.length == 6) {
      // ADDING 100% OPACITY TO THE HEX CODE.
      hexColor = "FF$hexColor";
    }
    return Color(
      int.parse(hexColor, radix: 16),
    );
  }
}
