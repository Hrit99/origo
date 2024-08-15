import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:website/dimensions/dimension.dart';

class HeroComponent extends StatelessWidget {
  const HeroComponent({super.key});

  @override
  Widget build(BuildContext context) {
    final dimensions = Provider.of<Dimensions>(context);
    return Container(
      color: Color.fromRGBO(11, 10, 10, 1),
      width: dimensions.screenWidth,
      padding: EdgeInsets.symmetric(vertical: dimensions.getHeight(100), horizontal: dimensions.getWidth(188)),
      child: Container(
        width: 100,
        height: 100,
        color: Colors.black,
      ),
    );
  }
}