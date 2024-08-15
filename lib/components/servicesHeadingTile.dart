import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:website/dimensions/dimension.dart';

class Servicesheadingtile extends StatelessWidget {
  final String number;
  final String title;
  final String svg;
  const Servicesheadingtile({super.key, required this.number, required this.svg, required this.title});

  @override
  Widget build(BuildContext context) {
    final dimensions = Provider.of<Dimensions>(context);
    return Container(
      child: Row(
        children: [
          Container(
             height: dimensions.getHeight(130),
             width: dimensions.getWidth(300),
             color: Color.fromRGBO(99, 48, 0, 1),
             child: Center(
              child: Container(
                height: dimensions.getHeight(54),
                decoration: BoxDecoration(
                 shape: BoxShape.circle,
                  color: Color.fromRGBO(245, 118, 0, 1)
                ),
                child:   Center(
                  child: Text(
                        number,
                        style: TextStyle(
                          fontFamily: "Supply",
                          fontSize: dimensions.getHeight(28),
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(11, 10, 10, 1),
                        ),
                        textAlign: TextAlign.left,
                        softWrap: false, // Prevents wrapping
                        overflow: TextOverflow.clip,
                      ),
                ),
              ),
             ),
          ),
          Container(
            padding: EdgeInsets.all(dimensions.getWidth(20)),
             height: dimensions.getHeight(130),
             width: dimensions.getWidth(923),
             color: Color.fromRGBO(245, 118, 0, 1),
             alignment: Alignment.center,
             child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               Text(
                      title,
                      style: TextStyle(
                        fontFamily: "Supply",
                        fontSize: dimensions.getHeight(32),
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(11, 10, 10, 1),
                      ),
                      textAlign: TextAlign.left,
                      softWrap: false, // Prevents wrapping
                      overflow: TextOverflow.clip,
                    ),
                    SvgPicture.string(
                    svg,
                    width: dimensions.getWidth(48),
                    height: dimensions.getHeight(48),
                  ),
              ],
             ),
          )
        ],
      ),
    );
  }
}