import 'package:flutter/material.dart';

extension ColorExtension on Color {
  MaterialColor createMaterialColor() {
    List strengths = <double>[.05];
    var swatch = <int, Color>{};
    final r = red;
    final g = green;
    final b = blue;

    for (var i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }
    strengths.forEach((strength) {
      final ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        r + ((ds < 0 ? r : (255 - r)) * ds).round(),
        g + ((ds < 0 ? g : (255 - g)) * ds).round(),
        b + ((ds < 0 ? b : (255 - b)) * ds).round(),
        1,
      );
    });
    return MaterialColor(value, swatch);
  }
}
