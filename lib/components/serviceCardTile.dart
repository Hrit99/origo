import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:website/components/borderButton.dart';
import 'package:website/dimensions/dimension.dart';

class Servicecardtile extends StatefulWidget {
  final String svg;
  final String title;
  final String description;
  final String heading;
  final bool last;
  const Servicecardtile(
      {super.key,
      required this.description,
      required this.svg,
      required this.title,
      required this.heading,
      this.last = false});

  @override
  _ServicecardtileState createState() => _ServicecardtileState();
}

class _ServicecardtileState extends State<Servicecardtile> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    final dimensions = Provider.of<Dimensions>(context);
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
      child: (widget.last)?  Container(
              margin: EdgeInsets.only(top: dimensions.getHeight(20)),
              padding: EdgeInsets.all(dimensions.getWidth(20)),
              width: dimensions.getWidth(288),
              height: dimensions.getHeight(410),
              color: Color.fromRGBO(245, 118, 0, 1),
               child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                      widget.heading,
                      style: TextStyle(
                        fontFamily: "Supply",
                        fontSize: dimensions.getHeight(24),
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(11, 10, 10, 1),
                      ),
                      textAlign: TextAlign.left,
                       softWrap: true, // Allow wrapping
                    overflow: TextOverflow.visible,
                    ),
                    SizedBox(
                      height: dimensions.getHeight(52),
                    ),
                  SvgPicture.string(
                    widget.svg,
                    width: dimensions.getWidth(58),
                    height: dimensions.getHeight(58),
                  ),
                  SizedBox(height: dimensions.getHeight(18),),
                  ConstrainedBox(
                    constraints: BoxConstraints(
                        maxWidth:
                            dimensions.getWidth(248)), // Adjust width as needed
                    child: Text(
                      widget.title,
                      style: TextStyle(
                        fontFamily: "Supply",
                        fontSize: dimensions.getHeight(24),
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(11, 10, 10, 1),
                      ),
                      textAlign: TextAlign.left,
                       softWrap: true, // Allow wrapping
                    overflow: TextOverflow.visible,
                    ),
                  ),
                  SizedBox(height: dimensions.getHeight(18),),
                  ConstrainedBox(
                    constraints: BoxConstraints(
                        maxWidth:
                            dimensions.getWidth(248)), // Adjust width as needed
                    child: Text(
                      widget.description,
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          color: Color.fromRGBO(11, 10, 10, 1),
                        ),
                        fontSize: dimensions.getWidth(16),
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.center,
                       softWrap: true, // Allow wrapping
                    overflow: TextOverflow.visible,
                    ),
                  ),
                  Borderbutton(height: dimensions.getHeight(58), width: dimensions.getWidth(245), action: () => {}, backgroundColor: Color.fromRGBO(11, 10, 10, 1), borderColor: Color.fromRGBO(11, 10, 10, 1), text: "Explore All", textColor: Color.fromRGBO(250, 250, 250, 1))
                ],
              ),
            ) :_isHovering
          ? Container(
              margin: EdgeInsets.only(top: dimensions.getHeight(20)),
              padding: EdgeInsets.all(dimensions.getWidth(20)),
              width: dimensions.getWidth(288),
              height: dimensions.getHeight(410),
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0.00, -1.00),
                  end: Alignment(0, 1),
                  colors: [Color(0xFF231000), Color(0x00F57600)],
                ),
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: Color(0xFF7A7474)),
                ),
              ),
               child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                      widget.heading,
                      style: TextStyle(
                        fontFamily: "Supply",
                        fontSize: dimensions.getHeight(24),
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(250, 250, 250, 1),
                      ),
                      textAlign: TextAlign.left,
                       softWrap: true, // Allow wrapping
                    overflow: TextOverflow.visible,
                    ),
                    SizedBox(
                      height: dimensions.getHeight(52),
                    ),
                  SvgPicture.string(
                    widget.svg,
                    width: dimensions.getWidth(58),
                    height: dimensions.getHeight(58),
                  ),
                  SizedBox(height: dimensions.getHeight(18),),
                  ConstrainedBox(
                    constraints: BoxConstraints(
                        maxWidth:
                            dimensions.getWidth(248)), // Adjust width as needed
                    child: Text(
                      widget.title,
                      style: TextStyle(
                        fontFamily: "Supply",
                        fontSize: dimensions.getHeight(24),
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(250, 250, 250, 1),
                      ),
                      textAlign: TextAlign.left,
                       softWrap: true, // Allow wrapping
                    overflow: TextOverflow.visible,
                    ),
                  ),
                  SizedBox(height: dimensions.getHeight(18),),
                  ConstrainedBox(
                    constraints: BoxConstraints(
                        maxWidth:
                            dimensions.getWidth(248)), // Adjust width as needed
                    child: Text(
                      widget.description,
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          color: Color.fromRGBO(250, 250, 250, 1),
                        ),
                        fontSize: dimensions.getWidth(16),
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.center,
                       softWrap: true, // Allow wrapping
                    overflow: TextOverflow.visible,
                    ),
                  ),
                ],
              ),
            )
          : Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(11, 10, 10, 1),
                border: Border.all(
                  color: Color.fromRGBO(122, 116, 116, 1), // #7A7474
                  width: dimensions.getWidth(1),
                ),
              ),
              margin: EdgeInsets.only(top: dimensions.getHeight(20)),
              padding: EdgeInsets.all(dimensions.getWidth(20)),
              width: dimensions.getWidth(288),
              height: dimensions.getHeight(410),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   Text(
                      widget.heading,
                      style: TextStyle(
                        fontFamily: "Supply",
                        fontSize: dimensions.getHeight(24),
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(250, 250, 250, 1),
                      ),
                      textAlign: TextAlign.left,
                       softWrap: true, // Allow wrapping
                    overflow: TextOverflow.visible,
                    ),
                    SizedBox(
                      height: dimensions.getHeight(52),
                    ),
                  SvgPicture.string(
                    widget.svg,
                    width: dimensions.getWidth(58),
                    height: dimensions.getHeight(58),
                  ),
                  SizedBox(height: dimensions.getHeight(18),),
                  ConstrainedBox(
                    constraints: BoxConstraints(
                        maxWidth:
                            dimensions.getWidth(248)), // Adjust width as needed
                    child: Text(
                      widget.title,
                      style: TextStyle(
                        fontFamily: "Supply",
                        fontSize: dimensions.getHeight(24),
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(250, 250, 250, 1),
                      ),
                      textAlign: TextAlign.left,
                       softWrap: true, // Allow wrapping
                    overflow: TextOverflow.visible,
                    ),
                  ),
                  SizedBox(height: dimensions.getHeight(18),),
                  ConstrainedBox(
                    constraints: BoxConstraints(
                        maxWidth:
                            dimensions.getWidth(248)), // Adjust width as needed
                    child: Text(
                      widget.description,
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          color: Color.fromRGBO(250, 250, 250, 1),
                        ),
                        fontSize: dimensions.getWidth(16),
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.center,
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




//  child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Container(
//                     width: 612,
//                     height: 616,
//                     child: Stack(),
//                   ),
//                   SizedBox(
//                     width: double.infinity,
//                     child: Text(
//                       '02',
//                       textAlign: TextAlign.center,
//                       style: TextStyle(
//                         color: Color(0xFFFAFAFA),
//                         fontSize: 18,
//                         fontFamily: 'Inter',
//                         fontWeight: FontWeight.w700,
//                         height: 0.07,
//                       ),
//                     ),
//                   ),
//                   Container(
//                     width: double.infinity,
//                     height: 290,
//                     child: Column(
//                       mainAxisSize: MainAxisSize.min,
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         Expanded(
//                           child: Container(
//                             width: double.infinity,
//                             child: Column(
//                               mainAxisSize: MainAxisSize.min,
//                               mainAxisAlignment: MainAxisAlignment.start,
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               children: [
//                                 Container(
//                                   width: double.infinity,
//                                   height: 190,
//                                   child: Column(
//                                     mainAxisSize: MainAxisSize.min,
//                                     mainAxisAlignment: MainAxisAlignment.start,
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.center,
//                                     children: [
//                                       Container(
//                                         width: 58,
//                                         height: 58,
//                                         child: FlutterLogo(),
//                                       ),
//                                       const SizedBox(height: 18),
//                                       SizedBox(
//                                         width: 178,
//                                         height: 58,
//                                         child: Text(
//                                           'Content Creation_',
//                                           textAlign: TextAlign.center,
//                                           style: TextStyle(
//                                             color: Color(0xFFFAFAFA),
//                                             fontSize: 24,
//                                             fontFamily: 'Supply',
//                                             fontWeight: FontWeight.w700,
//                                             height: 0.05,
//                                           ),
//                                         ),
//                                       ),
//                                       const SizedBox(height: 18),
//                                       SizedBox(
//                                         width: double.infinity,
//                                         child: Text(
//                                           'Pick a plan and load up as many requests as you would like.',
//                                           textAlign: TextAlign.center,
//                                           style: TextStyle(
//                                             color: Color(0xFFFAFAFA),
//                                             fontSize: 16,
//                                             fontFamily: 'Inter',
//                                             fontWeight: FontWeight.w400,
//                                             height: 0.07,
//                                           ),
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                         const SizedBox(height: 72),
//                         SizedBox(
//                           width: double.infinity,
//                           child: Text(
//                             '_ Learn More _',
//                             textAlign: TextAlign.center,
//                             style: TextStyle(
//                               color: Color(0xFFF57600),
//                               fontSize: 18,
//                               fontFamily: 'Inter',
//                               fontWeight: FontWeight.w700,
//                               height: 0.07,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),