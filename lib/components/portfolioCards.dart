import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:website/components/borderButton.dart';
import 'package:website/dimensions/dimension.dart';
import 'package:website/main.dart';

class Portfoliocards extends StatefulWidget {
  final String imgstr;
  final String number;
  final String title;
  final String description;
  const Portfoliocards(
      {super.key,
      required this.description,
      required this.title,
      required this.imgstr,
      required this.number});

  @override
  State<Portfoliocards> createState() => _PortfoliocardsState();
}

class _PortfoliocardsState extends State<Portfoliocards> {
  bool _isHovering = false;
  @override
  Widget build(BuildContext context) {
    final dimensions = Provider.of<Dimensions>(context, listen: false);
    List<Widget> containers = [
      Container(
        width: dimensions.getWidth(isMobile? 319 : 604),
        color: Color.fromRGBO(245, 118, 0, 1),
        padding: EdgeInsets.all(5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  color: Color.fromRGBO(11, 10, 10, 1),
                  height: dimensions.getHeight(isMobile? 7.45 : 14),
                  width: dimensions.getWidth(isMobile? 7.45 :14),
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Color.fromRGBO(11, 10, 10, 1))),
                  height: dimensions.getHeight(isMobile? 7.45 :14),
                  width: dimensions.getWidth(isMobile? 7.45 :14),
                ),
              ],
            ),
            Image.asset(
              widget.imgstr,
              width: dimensions.getWidth(isMobile? 301.436 :556),
              height: dimensions.getHeight(isMobile? 301.436:566),
              fit: BoxFit.cover,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Color.fromRGBO(11, 10, 10, 1))),
                  height: dimensions.getHeight(isMobile? 7.45 :14),
                  width: dimensions.getWidth(isMobile? 7.45 :14),
                ),
                Container(
                  color: Color.fromRGBO(11, 10, 10, 1),
                  height: dimensions.getHeight(isMobile? 7.45 :14),
                  width: dimensions.getWidth(isMobile? 7.45 :14),
                ),
              ],
            )
          ],
        ),
      ),
      Container(
        width: dimensions.getWidth(isMobile? 319 :604),
        color: _isHovering
            ? Color.fromRGBO(255, 196, 141, 1)
            : Color.fromRGBO(255, 235, 217, 1),
        padding: EdgeInsets.all(dimensions.getWidth(isMobile? 12 :48)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.number,
              style: TextStyle(
                fontFamily: "Supply",
                fontSize: dimensions.getHeight(isMobile? 24 :32),
                fontWeight: FontWeight.w700,
                color: Color.fromRGBO(11, 10, 10, 1),
              ),
              textAlign: TextAlign.left,
            ),
            SizedBox(height: dimensions.getHeight(18)),
            ConstrainedBox(
              constraints: BoxConstraints(
                  maxWidth: dimensions.getWidth(isMobile? 303 : 508)), // Adjust width as needed
              child: Text(
                widget.title,
                style: TextStyle(
                  fontFamily: "Supply",
                  fontSize: dimensions.getHeight(isMobile? 28 :48),
                  fontWeight: FontWeight.w700,
                  color: Color.fromRGBO(11, 10, 10, 1),
                ),
                textAlign: TextAlign.left,
                softWrap: true, // Allow wrapping
                overflow: TextOverflow.visible,
              ),
            ),
            ConstrainedBox(
              constraints: BoxConstraints(
                  maxWidth: dimensions.getWidth(isMobile? 303 :508)), // Adjust width as needed
              child: Text(
                widget.description,
                style: GoogleFonts.inter(
                  textStyle: TextStyle(
                    color: Color.fromRGBO(11, 10, 10, 1),
                  ),
                  fontSize: dimensions.getWidth(18),
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.left,
                softWrap: true, // Allow wrapping
                overflow: TextOverflow.visible,
              ),
            ),
            SizedBox(
              height: dimensions.getHeight(58),
            ),
            Borderbutton(
                height: dimensions.getHeight(isMobile? 56 :58),
                width: dimensions.getWidth(isMobile? 303 :265),
                action: () => {},
                backgroundColor: Color.fromRGBO(255, 235, 217, 1),
                borderColor: Color.fromRGBO(11, 10, 10, 1),
                text: "View Full Case Study",
                textColor: Color.fromRGBO(11, 10, 10, 1))
          ],
        ),
      )
    ];
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
        child: isMobile? Column(children: containers,) :Row(children: containers),
      ),
    );
  }
}
