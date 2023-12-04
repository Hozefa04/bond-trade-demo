import 'package:flutter/material.dart';

enum ColorShade {
  lightest,
  secondLightest,
  thirdLightest,
  fourthLightest,
  fifthLightest,
  normal,
  fourthDarkest,
  thirdDarkest,
  secondDarkest,
  darkest,
}

class AppColors {
  static Color primaryColor = const Color(0xFF2D9596);
  static Color primaryColorLight = const Color(0xFF9AD0C2);
  static Color lightColor = const Color(0xFFC8F6F1);
  static Color greyColor = Colors.grey[400]!;
  static Color fontColor = Colors.black87;
  static Color whiteColor = Colors.white;
  static Color borderColorGrey = Colors.grey[200]!;
  static Color errorColor = Colors.redAccent;
  static Color greenColor = Colors.greenAccent;
  static Color blueColor = Colors.blueAccent;
  static Color orangeColor = Colors.orangeAccent;

  // Gradient background colors
  static Color gradientColor1 = lightColor;
  static Color gradientColor2 = const Color(0xFFBAF4EE);
  static Color gradientColor3 = const Color(0xFFE3FBF8);
  static Color gradientColor4 = whiteColor;

  static const Map<ColorShade, int> shades = <ColorShade, int>{
    ColorShade.lightest: 50,
    ColorShade.secondLightest: 100,
    ColorShade.thirdLightest: 200,
    ColorShade.fourthLightest: 300,
    ColorShade.fifthLightest: 400,
    ColorShade.normal: 500,
    ColorShade.fourthDarkest: 600,
    ColorShade.thirdDarkest: 700,
    ColorShade.secondDarkest: 800,
    ColorShade.darkest: 900,
  };

  static MaterialColor getMaterialColor(Color color) {
    return Colors.primaries.firstWhere(
      (MaterialColor c) => c.value == color.value,
      orElse: () => MaterialColor(
        color.value,
        <int, Color>{
          shades[ColorShade.lightest]!: color,
          shades[ColorShade.secondLightest]!: color,
          shades[ColorShade.thirdLightest]!: color,
          shades[ColorShade.fourthLightest]!: color,
          shades[ColorShade.fifthLightest]!: color,
          shades[ColorShade.normal]!: color,
          shades[ColorShade.fourthDarkest]!: color,
          shades[ColorShade.thirdDarkest]!: color,
          shades[ColorShade.secondDarkest]!: color,
          shades[ColorShade.darkest]!: color,
        },
      ),
    );
  }
}
