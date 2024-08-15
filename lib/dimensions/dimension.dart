import 'package:flutter/material.dart';
import 'package:website/main.dart';

class Dimensions with ChangeNotifier {
  double screenHeight;
  double screenWidth;

  Dimensions({required this.screenHeight, required this.screenWidth});

  double getHeight(double height) {
    return (height / (isMobile? 540 : 938)) * screenHeight;
  }

  double getWidth(double width) {
    return (width / (isMobile? 400: 1600)) * screenWidth;
  }
}