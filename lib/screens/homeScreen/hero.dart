import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:website/components/borderButton.dart';
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
        width: dimensions.getWidth(1224),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
             child: Column(
                children: [
                  Text("CREATIVITY", style: TextStyle(
              fontFamily: "Supply",
              fontSize: dimensions.getHeight(120),
              fontWeight: FontWeight.w700,
              color: Color.fromRGBO(193, 210, 230, 1)
            ),
            textAlign: TextAlign.center,
            ),
             Text("MEETS_", style: TextStyle(
              fontFamily: "Supply",
              fontSize: dimensions.getHeight(120),
              fontWeight: FontWeight.w700,
              color: Color.fromRGBO(245, 118, 0, 1)
            ),
            
            textAlign: TextAlign.center,
            ),
             Text("STRATEGY", style: TextStyle(
              fontFamily: "Supply",
              fontSize: dimensions.getHeight(120),
              fontWeight: FontWeight.w700,
              color: Color.fromRGBO(193, 210, 230, 1)
            ),
            textAlign: TextAlign.center,
            ),
                ],
             ),
            ),
            SizedBox(height: dimensions.getHeight(24),),
            Container(
              width: dimensions.getWidth(865),
              child: Text("Understanding the essence of your business holds equal importance to mapping out strategies for achieving your objectives.", style: GoogleFonts.inter(
                  textStyle: TextStyle(
                    color:  Color.fromRGBO(193 , 210, 230, 1),
                  ),
                  fontSize: dimensions.getWidth(24),
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
                ),
            ),
            SizedBox(
              height: dimensions.getHeight(54),
            ),
            Borderbutton(height: dimensions.getHeight(58), width: dimensions.getWidth(204), action: () =>{}, backgroundColor: Color.fromRGBO(245, 118, 0, 1), borderColor: Color.fromRGBO(250, 250, 250, 1), textColor: Color.fromRGBO(250, 250, 250, 1), text: "Let’s Talk Now")
          ],
        ),
      ),
    );
  }
}