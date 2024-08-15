import 'package:flutter/material.dart';

class Dimensions with ChangeNotifier {
  double screenHeight;
  double screenWidth;

  Dimensions({required this.screenHeight, required this.screenWidth});

  double getHeight(double height) {
    return (height / 938) * screenHeight;
  }

  double getWidth(double width) {
    return (width / 1600) * screenWidth;
  }
}