import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:website/dimensions/dimension.dart';
import 'package:website/screens/homeScreen/heading.dart';

class Homescreenbg extends StatelessWidget {
  final Color bgColor;
  final String title;
  final String headingText;
  final Color headingColor;
  final Color bottomTextColor;
  final String bottomText;
  final Widget child;
  const Homescreenbg({super.key, required this.bgColor, required this.title, required this.headingText, required this.headingColor, this.bottomText = "", this.bottomTextColor = Colors.black, required this.child});

  @override
  Widget build(BuildContext context) {
     final dimensions = Provider.of<Dimensions>(context);
    return SingleChildScrollView(
      child: Container(
        width: dimensions.getWidth(1600),
        padding: EdgeInsets.symmetric(vertical: dimensions.getHeight(100), horizontal: dimensions.getWidth(188)),
        color: bgColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Heading(buttonText: title, buttonAction: () => {}, bgColor: bgColor, headingColor: headingColor,headingText: headingText,bottomText: bottomText,bottomTextColor: bottomTextColor,),
            SizedBox(height: dimensions.getHeight(60),),
            child
          ],
        ),
      ),
    );
  }
}