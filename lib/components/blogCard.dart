import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:website/dimensions/dimension.dart';
import 'package:website/main.dart';

class Blogcard extends StatefulWidget {
  final String img;
  final String description;
  const Blogcard({super.key, required this.description, required this.img});

  @override
  State<Blogcard> createState() => _BlogcardState();
}

class _BlogcardState extends State<Blogcard> {
  bool _isHovering = false;
  @override
  Widget build(BuildContext context) {
    final dimensions = Provider.of<Dimensions>(context,  listen: false);
    return MouseRegion(
       onEnter: (_) {
        setState(() {
          _isHovering = true;
        });
      },
      onExit: (_) {
        setState(() {
          _isHovering = false;
        });
      },
      child: Container(
        color:_isHovering ? Color.fromRGBO(255, 196, 141, 1): Color.fromRGBO(255, 235, 217, 1),
        width: dimensions.getWidth(isMobile?303:600),
        margin: EdgeInsets.all(5),
        padding: EdgeInsets.all(dimensions.getWidth(isMobile?0:56)),
        child: Column(
          children: [
           Image.asset("assets/blog1.jpeg", height: dimensions.getHeight(isMobile? 227 : 416), width: MediaQuery.of(context).size.width,),
            SizedBox(
              height: dimensions.getHeight(10),
            ),
            ConstrainedBox(
              constraints: BoxConstraints(
                  maxWidth: dimensions.getWidth( isMobile?300:600)), // Adjust width as needed
              child: Text(
                widget.description,
                style: TextStyle(
                  fontFamily: "Supply",
                  fontSize: dimensions.getHeight(isMobile?18:24),
                  fontWeight: FontWeight.w700,
                  color: Color.fromRGBO(11, 10, 10, 1),
                ),
                textAlign: TextAlign.left,
                softWrap: true, // Allow wrapping
                overflow: TextOverflow.visible,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
