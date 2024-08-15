import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:website/components/portfolioCards.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:website/dimensions/dimension.dart';

class Portfoliocontent extends StatelessWidget {
  const Portfoliocontent({super.key});

  @override
  Widget build(BuildContext context) {
     final dimensions = Provider.of<Dimensions>(context,  listen: false);
    return Container(
      child: CarouselSlider(items: [
      
       Portfoliocards(
            imgstr: "assets/Image1.jpg",
            number: "#1",
            description:
                "Our no-meetings approach maximizes quality and efficiency.",
            title: "Astute Bookkeeping Solutions",
          ),
           Portfoliocards(
            imgstr: "assets/Image1.jpg",
            number: "#1",
            description:
                "Our no-meetings approach maximizes quality and efficiency.",
            title: "Astute Bookkeeping Solutions",
          ),
           Portfoliocards(
            imgstr: "assets/Image1.jpg",
            number: "#1",
            description:
                "Our no-meetings approach maximizes quality and efficiency.",
            title: "Astute Bookkeeping Solutions",
          )
      ], options: CarouselOptions(
        height: dimensions.getHeight(700),
        aspectRatio: 16/9,
        viewportFraction: 1,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 3),
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        enlargeFactor: 0.0,
        scrollDirection: Axis.horizontal,
         )),
    );
   
}
}