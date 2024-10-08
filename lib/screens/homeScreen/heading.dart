import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:website/components/borderButton.dart';
import 'package:website/dimensions/dimension.dart';
import 'package:website/main.dart';

class Heading extends StatelessWidget {
  final String buttonText;
  final VoidCallback buttonAction;
  final Color bgColor;
  final String bottomText ;
  final Color bottomTextColor ;
  final String headingText;
  final Color headingColor;
  Heading({super.key, required this.buttonText, required this.buttonAction, required this.bgColor, this.bottomText = "", this.bottomTextColor = Colors.black, required this.headingColor, required this.headingText});

  @override
  Widget build(BuildContext context) {
    final dimensions = Provider.of<Dimensions>(context,  listen: false);
    print("w ${dimensions.screenWidth}");
    return Container(
      width: dimensions.screenWidth,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Borderbutton(height: dimensions.getHeight(50), width: dimensions.screenWidth, action: buttonAction, backgroundColor: bgColor, borderColor: bgColor, text: buttonText, textColor: Color.fromRGBO(245 , 118, 0, 1)),
          SizedBox(height: dimensions.getHeight(18),),
          Container(
            padding: EdgeInsets.symmetric(horizontal: dimensions.getWidth(isMobile? 0 :180)),
            child: Text(headingText, style: TextStyle(
              fontFamily: "Supply",
              fontSize: dimensions.getHeight(isMobile? 28:  96),
              color: headingColor
            ),
            textAlign: TextAlign.center,
            ),
          ),
          (bottomText != "") ? Container(
            padding: EdgeInsets.symmetric(horizontal: dimensions.getWidth(isMobile? 0 :  200)),
            child: Text(bottomText, style: GoogleFonts.inter(
                  textStyle: TextStyle(
                    color:  bottomTextColor
                  ),
                    fontSize:  dimensions.getWidth(isMobile? 18: 24),
                    fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
                ),
          ): Container()
        ],
      ),
    );
  }
}