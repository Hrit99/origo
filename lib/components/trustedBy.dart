import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:website/dimensions/dimension.dart';
import 'package:website/main.dart';

List<String> tb = ["assets/tb1.png", "assets/tb2.png"];

class Trustedby extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dimensions = Provider.of<Dimensions>(context, listen: false);
    print(dimensions.screenWidth);
    print(dimensions.getWidth(isMobile ? 375 : 2391));
    return Container(
      color: Color.fromRGBO(11, 10, 10, 1),
      width: dimensions.screenWidth,
      padding: EdgeInsets.symmetric(
          vertical: dimensions.getHeight(40),
          horizontal: dimensions.getWidth(isMobile ? 24 : 0)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: dimensions.getWidth(967),
            child: Column(
              children: [
                Text(
                  "Sometimes Size Doesn’t Matter.",
                  style: TextStyle(
                    fontFamily: "Supply",
                    fontSize: dimensions.getHeight(isMobile? 20: 28),
                    fontWeight: FontWeight.w700,
                    color: Color.fromRGBO(250, 250, 250, 1),
                  ),
                  textAlign: TextAlign.center,
                  softWrap: true, // Allow wrapping
                  overflow: TextOverflow.visible,
                ),
                SizedBox(
                  height: dimensions.getHeight(30),
                ),
                Text(
                  "We Work For Big & Small Unstoppable Visionaries. Enough Love To Go Around",
                  style: TextStyle(
                    fontFamily: "Supply",
                    fontSize: dimensions.getHeight(isMobile? 20: 28),
                    fontWeight: FontWeight.w700,
                    color: Color.fromRGBO(250, 250, 250, 1),
                  ),
                  textAlign: TextAlign.center,
                  softWrap: true, // Allow wrapping
                  overflow: TextOverflow.visible,
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, dimensions.getHeight(24), 0, dimensions.getHeight(40)),
              height: dimensions.getHeight(isMobile? 48 : 88),
              child: CarouselSlider.builder(
                  itemCount: tb.length,
                  itemBuilder: (context, index, realIndex) => Image.asset(
                        tb[index],
                        width: dimensions.getWidth(isMobile? 240 : 440),
                        height: dimensions.getHeight(isMobile? 48:  88),
                      ),
                  options: CarouselOptions(
                    height: dimensions.getHeight(isMobile? 48 : 88),
                    aspectRatio: 16 / 9,
                    viewportFraction: 0.3,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.linear,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.0,
                    scrollDirection: Axis.horizontal,
                  ))
              // BeltAnimation(trustedBy: ["assets/tb1.png", "assets/tb2.png"]),
              )
        ],
      ),
    );
  }
}
