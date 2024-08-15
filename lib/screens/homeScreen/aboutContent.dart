import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:website/components/borderButton.dart';
import 'package:website/dimensions/dimension.dart';
import 'package:website/main.dart';

class Aboutcontent extends StatelessWidget {
  const Aboutcontent({super.key});

  @override
  Widget build(BuildContext context) {
    final dimensions = Provider.of<Dimensions>(context,  listen: false);
    List<Widget> arr = [
                Image.asset(
                  'assets/aboutpage.jpg',
                  width: dimensions.screenWidth,
                  height: dimensions.getHeight(410),
                  fit: BoxFit.cover,
                ),
                Container(
                  padding: isMobile? EdgeInsets.all(0) : EdgeInsets.only(left: dimensions.getWidth(10)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Container(
                        child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                             Text(
                        "- Innovative Branding",
                        style: TextStyle(
                          fontFamily: "Supply",
                          fontSize: dimensions.getHeight(isMobile? 18 : 28),
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(11, 10, 10, 1),
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        "- Stunning Visual Design",
                        style: TextStyle(
                          fontFamily: "Supply",
                          fontSize: dimensions.getHeight(isMobile? 18 :28),
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(11, 10, 10, 1),
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        "- Web & App Development",
                        style: TextStyle(
                          fontFamily: "Supply",
                          fontSize: dimensions.getHeight(isMobile? 18 :28),
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(11, 10, 10, 1),
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        "- Strategic Consulting",
                        style: TextStyle(
                          fontFamily: "Supply",
                          fontSize: dimensions.getHeight(isMobile? 18 :28),
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(11, 10, 10, 1),
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        "- Comprehensive Market Analysis",
                        style: TextStyle(
                          fontFamily: "Supply",
                          fontSize: dimensions.getHeight(isMobile? 18 :28),
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(11, 10, 10, 1),
                        ),
                        textAlign: TextAlign.left,
                      ),
                          ],
                        ),
                      ),
                      Container(
                        constraints: BoxConstraints(
                          maxWidth: dimensions.getWidth(isMobile? 327 :469), // Ensure the container can expand horizontally as needed
                        ),
                        child: Text(
                          "- Streamlined Process Consulting",
                          style: TextStyle(
                            fontFamily: "Supply",
                            fontSize: dimensions.getHeight(isMobile? 18 :28),
                            fontWeight: FontWeight.w700,
                            color: Color.fromRGBO(11, 10, 10, 1),
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Borderbutton(height: dimensions.getHeight(58), width: dimensions.getWidth(isMobile? 327 :204), action: () => {}, backgroundColor: Color.fromRGBO(11, 10, 10, 1), borderColor: Color.fromRGBO(11, 10, 10, 1), text: "Let's Talk Now", textColor: Color.fromRGBO(250 , 250, 250, 1),)
                    ],
                  ),
                )
              ];
    return Container(
      child: Column(
        children: [
          Text(
            "At our specialized design studio, we are dedicated to transforming businesses' visions into reality. Our team collaborates on select projects to craft compelling designs and strategic campaigns that elevate your brand. We focus on providing the visibility you deserve, helping you attract and engage the customers who need your products and services the most.",
            style: TextStyle(
              fontFamily: "Supply",
              fontSize: dimensions.getHeight(isMobile? 18 : 28),
              fontWeight: FontWeight.w700,
              color: Color.fromRGBO(11, 10, 10, 1),
            ),
            textAlign: isMobile? TextAlign.center: TextAlign.left,
          ),
           Container(
            padding: EdgeInsets.all(0),
            child: isMobile? Column(
              children: arr,
            ): Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: arr,
            ),
          )
        ],
      ),
    );
  }
}
