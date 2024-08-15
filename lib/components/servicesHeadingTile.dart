import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:website/dimensions/dimension.dart';
import 'package:website/main.dart';

class Servicesheadingtile extends StatelessWidget {
  final String number;
  final String title;
  final String svg;
  const Servicesheadingtile({super.key, required this.number, required this.svg, required this.title});
 
  @override
  Widget build(BuildContext context) {
    final dimensions = Provider.of<Dimensions>(context,  listen: false);
     List<Widget> containers = [
          Container(
             height: dimensions.getHeight(130),
             width: dimensions.getWidth(isMobile? 327 : 300),
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
            padding: isMobile? EdgeInsets.symmetric(horizontal: dimensions.getWidth(20), vertical: dimensions.getHeight(10)): EdgeInsets.all(dimensions.getWidth(20)),
             width: dimensions.getWidth(isMobile? 327 : 923),
             color: Color.fromRGBO(245, 118, 0, 1),
             alignment: Alignment.center,
             child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              ConstrainedBox(
                    constraints: BoxConstraints(
                        maxWidth:
                            dimensions.getWidth(isMobile? 200 : 600)), // Adjust width as needed
                    child: Text(
                      title,
                      style: TextStyle(
                        fontFamily: "Supply",
                        fontSize: dimensions.getHeight(isMobile? 18 : 32),
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(11, 10, 10, 1),
                      ),
                      textAlign: TextAlign.left,
                     softWrap: true, // Allow wrapping
                    overflow: TextOverflow.visible,
                    ),
              ),
                    SvgPicture.string(
                    svg,
                    width: dimensions.getWidth(48),
                    height: dimensions.getHeight(48),
                  ),
              ],
             ),
          )
        ];
    return Container(
      child: isMobile? Column(
        children: containers,
      ) : Row(
        children: containers
      ),
    );
  }
}