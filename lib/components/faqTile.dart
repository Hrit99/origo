import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:website/dimensions/dimension.dart';
import 'package:website/main.dart';

class Faqtile extends StatefulWidget {
  final String number;
  final String question;
  final String answer;
  const Faqtile(
      {super.key,
      required this.number,
      required this.question,
      required this.answer});

  @override
  State<Faqtile> createState() => _FaqtileState();
}

class _FaqtileState extends State<Faqtile> {
  bool _isOpened = false;
  @override
  Widget build(BuildContext context) {
    final dimensions = Provider.of<Dimensions>(context,  listen: false);
    return Container(
      decoration: _isOpened ? BoxDecoration(
                      color: Color.fromRGBO(245, 118, 0, 1),
                      border: Border(
                          bottom: BorderSide(
                              color: Color.fromRGBO(250, 250, 250, 1),
                              width: dimensions.getWidth(1)),
                          left: BorderSide(
                              color: Color.fromRGBO(250, 250, 250, 1),
                              width: dimensions.getWidth(1)),
                          right: BorderSide(
                              color: Color.fromRGBO(250, 250, 250, 1),
                              width: dimensions.getWidth(1)),
                          top: BorderSide(
                              color: Color.fromRGBO(250, 250, 250, 1),
                              width: dimensions.getWidth(1)))):BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              color: Color.fromRGBO(250, 250, 250, 1),
                              width: dimensions.getWidth(1)),
                          left: BorderSide(
                              color: Color.fromRGBO(250, 250, 250, 1),
                              width: dimensions.getWidth(1)),
                          right: BorderSide(
                              color: Color.fromRGBO(250, 250, 250, 1),
                              width: dimensions.getWidth(1)),
                          top: BorderSide(
                              color: Color.fromRGBO(250, 250, 250, 1),
                              width: dimensions.getWidth(1)))) ,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: dimensions.getHeight(16)),
            width: dimensions.getWidth(isMobile? 40 : 52),
            child: Center(
              child: Text(
                widget.number,
                style: TextStyle(
                  fontFamily: "Supply",
                  fontSize: dimensions.getHeight(24),
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(250, 250, 250, 1),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          _isOpened
              ? Container(
                 width: dimensions.getWidth(isMobile? 240 :1091),
                  padding: EdgeInsets.symmetric(
                      horizontal: dimensions.getWidth(10),
                      vertical: dimensions.getHeight(16)),
                  alignment: Alignment.centerLeft,
              
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ConstrainedBox(
                        constraints:
                            BoxConstraints(maxWidth: dimensions.getWidth(isMobile? 240 :1091)),
                        child: Text(
                          widget.question,
                          style: TextStyle(
                            fontFamily: "Supply",
                            fontSize: dimensions.getHeight(isMobile? 18 :24),
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(11, 10, 10, 1),
                          ),
                          textAlign: TextAlign.left,
                          softWrap: true, // Allow wrapping
                          overflow: TextOverflow.visible,
                        ),
                      ),
                      ConstrainedBox(
                        constraints:
                            BoxConstraints(maxWidth: dimensions.getWidth(isMobile? 240 :1091)),
                        child: Text(
                          widget.answer,
                          style: GoogleFonts.inter(
                            textStyle:
                                TextStyle(color: Color.fromRGBO(11, 10, 10, 1)),
                            fontSize: dimensions.getWidth(18),
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.left,
                          softWrap: true, // Allow wrapping
                          overflow: TextOverflow.visible,
                        ),
                      ),
                    ],
                  ))
              : Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: dimensions.getWidth(10),
                      vertical: dimensions.getHeight(16)),
                  alignment: Alignment.centerLeft,
                  width: dimensions.getWidth(isMobile? 240 :1091),
                  child: ConstrainedBox(
                    constraints:
                        BoxConstraints(maxWidth: dimensions.getWidth(isMobile? 240 :1091)),
                    child: Text(
                      widget.question,
                      style: TextStyle(
                        fontFamily: "Supply",
                        fontSize: dimensions.getHeight(isMobile? 18 :24),
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(250, 250, 250, 1),
                      ),
                      textAlign: TextAlign.left,
                      softWrap: true, // Allow wrapping
                      overflow: TextOverflow.visible,
                    ),
                  )),
          Container(
            width: dimensions.getWidth(isMobile? 35 : 52),
            padding: EdgeInsets.symmetric(vertical: dimensions.getHeight(16)),
            child: Center(
                child: TextButton(
              onPressed: () => {
                setState(() {
                  _isOpened = !_isOpened;
                })
              },
              child: Center(
                child: Text(
                  _isOpened? "-" : "+",
                  style: TextStyle(
                    fontFamily: "Supply",
                    fontSize: dimensions.getHeight(24),
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(250, 250, 250, 1),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            )),
          ),
        ],
      ),
    );
  }
}
