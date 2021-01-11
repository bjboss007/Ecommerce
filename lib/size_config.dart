import 'package:flutter/material.dart';

class SizeConfig {
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double defaultSize;
  static Orientation orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
  }
}

double getProportionateHeight(double inputHeight) {
  double screenHeight = SizeConfig.screenHeight;
  // 812 is the default size designers use
  return (inputHeight / 812.0) * screenHeight;
}

double getProportionateWidth(double inputWidth) {
  double screenWidth = SizeConfig.screenWidth;
  // 375 is the default size designers use
  return (inputWidth / 375.0) * screenWidth;
}
