import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:website/components/borderButton.dart';
import 'package:website/components/trustedBy.dart';
import 'package:website/dimensions/dimension.dart';
import 'package:website/main.dart';
import 'package:website/screens/homeScreen/aboutContent.dart';
import 'package:website/screens/homeScreen/blogContent.dart';
import 'package:website/screens/homeScreen/faqContent.dart';
import 'package:website/screens/homeScreen/hero.dart';
import 'package:website/screens/homeScreen/homeScreenBg.dart';
import 'package:website/screens/homeScreen/portfolioContent.dart';
import 'package:website/screens/homeScreen/servicesContent.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dimensions = Provider.of<Dimensions>(context, listen: false);
    print("hs ${dimensions.screenWidth}");
    return SingleChildScrollView(
      child: Column(
        children: [
          HeroComponent(),
          Trustedby(),
          Homescreenbg(
            bgColor: Color.fromRGBO(250, 250, 250, 1),
            title: "__About us__",
            headingColor: Color.fromRGBO(30, 51, 75, 1),
            headingText: "30+ Years Experience_",
            child: Aboutcontent(),
          ),
          Homescreenbg(
            bgColor: Color.fromRGBO(11, 10, 10, 1),
            title: "__Our Services__",
            headingColor: Color.fromRGBO(193, 210, 230, 1),
            headingText: "Explore Our Services_",
            bottomText:
                "Understanding the essence of your business holds equal importance to mapping out strategies for achieving your objectives.",
            bottomTextColor: Color.fromRGBO(193, 210, 230, 1),
            child: Servicescontent(),
          ),
          Homescreenbg(
            bgColor: Color.fromRGBO(250, 250, 250, 1),
            title: "___Our Portfolio___",
            headingColor: Color.fromRGBO(30, 51, 75, 1),
            headingText: "Scope Of Work_",
            bottomText:
                "Like we said... Meticulous execution, over and over again.",
            bottomTextColor: Color.fromRGBO(11, 10, 10, 1),
            child: Portfoliocontent(),
          ),
          Homescreenbg(
            bgColor: Color.fromRGBO(11, 10, 10, 1),
            title: "___ENGAGE / SERVICES___",
            headingColor: Color.fromRGBO(193, 210, 230, 1),
            headingText: "Frequently Asked_ Questions",
            child: Faqcontent(),
          ),
          Homescreenbg(
            bgColor: Color.fromRGBO(250, 250, 250, 1),
            title: "___Blog___",
            headingColor: Color.fromRGBO(30, 51, 75, 1),
            headingText: "Blueprint To The Future_",
            bottomText:
                "Like we said... Meticulous execution, over and over again.",
            bottomTextColor: Color.fromRGBO(11, 10, 10, 1),
            child: Blogcontent(),
          ),
          Borderbutton(
              height: dimensions.getHeight(56),
              width: dimensions.getWidth(327),
              action: () => {},
              backgroundColor: Color.fromRGBO(250, 250, 250, 1),
              borderColor: Color.fromRGBO(11, 10, 10, 1),
              text: "Explore All",
              textColor: Color.fromRGBO(11, 10, 10, 1)),
          Container(
            margin: EdgeInsets.only(top: dimensions.getHeight(20)),
            width: MediaQuery.of(context).size.width,
            color: Color.fromRGBO(11, 10, 10, 1),
             padding: EdgeInsets.symmetric(
                    vertical: dimensions.getHeight(isMobile? 32: 54),
                    horizontal: dimensions.getWidth(isMobile? 24 : 54)),
            child: Center(
              child: Container(
                width: dimensions.getWidth(isMobile? 307 : 1224),
                height: dimensions.getWidth(isMobile? 350 : 270),
                color: Color.fromRGBO(245, 118, 0, 1),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Let Us Grow Your Business!",
                        style: TextStyle(
                          fontFamily: "Supply",
                          fontSize: dimensions.getHeight(isMobile? 28: 56 ),
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(11, 10, 10, 1),
                        ),
                        textAlign: TextAlign.center,
                        softWrap: true, // Allow wrapping
                        overflow: TextOverflow.visible,
                      ),
                      SizedBox(
                        height: dimensions.getHeight(40),
                      ),
                      Borderbutton(
                          height: dimensions.getHeight(isMobile? 56 : 68),
                          width: dimensions.getWidth(isMobile? 270 : 212),
                          action: () => {},
                          backgroundColor: Color.fromRGBO(11, 10, 10, 1),
                          borderColor: Color.fromRGBO(11, 10, 10, 1),
                          text: "Let's Talk Now",
                          textColor: Color.fromRGBO(250, 250, 250, 1))
                    ],
                  ),
                ),
              ),
            ),
          ),
         isMobile?  Container(
          width: dimensions.screenWidth,
          color: Color(0xFFF57600),
           child: Container(
             width: 375,
             height: 657,
             padding: const EdgeInsets.only(top: 32, left: 24, right: 24),
             decoration: BoxDecoration(color: Color(0xFFF57600)),
             child: SingleChildScrollView(
               child: Column(
                 mainAxisSize: MainAxisSize.min,
                 mainAxisAlignment: MainAxisAlignment.start,
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                   Container(
            width: double.infinity,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: double.infinity,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Home',
                        style: TextStyle(
                          color: Color(0xFF0B0A0A),
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(width: 18),
                      Text(
                        'About us',
                        style: TextStyle(
                          color: Color(0xFF0B0A0A),
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(width: 18),
                      Text(
                        'FAQ',
                        style: TextStyle(
                          color: Color(0xFF0B0A0A),
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                Container(
                  width: double.infinity,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Work',
                        style: TextStyle(
                          color: Color(0xFF0B0A0A),
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(width: 18),
                      Text(
                        'Blog',
                        style: TextStyle(
                          color: Color(0xFF0B0A0A),
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(width: 18),
                      Text(
                        'Contact Us',
                        style: TextStyle(
                          color: Color(0xFF0B0A0A),
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                Container(
                  width: double.infinity,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Marketing Services',
                        style: TextStyle(
                          color: Color(0xFF0B0A0A),
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(width: 18),
                      Text(
                        'Consulting Services',
                        style: TextStyle(
                          color: Color(0xFF0B0A0A),
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
                   ),
                   const SizedBox(height: 32),
                   Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 12),
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1, color: Color(0xFFF57600)),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Origo',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF0B0A0A),
                    fontSize: 64,
                    fontFamily: 'Supply',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 18),
                Text(
                  'inc',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF0B0A0A),
                    fontSize: 18,
                    fontFamily: 'Supply',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 18),
                SizedBox(
                  width: 221,
                  child: Text(
                    'Marketing & Consulting',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF0B0A0A),
                      fontSize: 32,
                      fontFamily: 'Supply',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
                   ),
                   const SizedBox(height: 32),
                   Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Origoinc 2024. All rights reserved',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF0B0A0A),
                    fontSize: 16,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Terms & Conditions',
                      style: TextStyle(
                        color: Color(0xFF0B0A0A),
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'Privacy Policy',
                      style: TextStyle(
                        color: Color(0xFF0B0A0A),
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
                   ),
                 ],
               ),
             ),
           ),
         )
:Container(
            width: dimensions.screenWidth,
            padding: isMobile? const EdgeInsets.only(top: 180):const EdgeInsets.only(top: 180),
            decoration: BoxDecoration(color: Color(0xFFF57600)),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 300),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          height: 111,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 199,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: double.infinity,
                                      child: Text(
                                        'Home',
                                        style: TextStyle(
                                          color: Color(0xFF0B0A0A),
                                          fontSize: 18,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w600,
                                          height: 0.08,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 18),
                                    SizedBox(
                                      width: double.infinity,
                                      child: Text(
                                        'About us',
                                        style: TextStyle(
                                          color: Color(0xFF0B0A0A),
                                          fontSize: 18,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w600,
                                          height: 0.08,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 18),
                                    SizedBox(
                                      width: double.infinity,
                                      child: Text(
                                        'FAQ',
                                        style: TextStyle(
                                          color: Color(0xFF0B0A0A),
                                          fontSize: 18,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w600,
                                          height: 0.08,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 32),
                              Container(
                                width: 199,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: double.infinity,
                                      child: Text(
                                        'Services',
                                        style: TextStyle(
                                          color: Color(0xFF0B0A0A),
                                          fontSize: 18,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w600,
                                          height: 0.08,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 18),
                                    Text(
                                      'Marketing Services',
                                      style: TextStyle(
                                        color: Color(0xFF0B0A0A),
                                        fontSize: 18,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w600,
                                        height: 0.08,
                                      ),
                                    ),
                                    const SizedBox(height: 18),
                                    Text(
                                      'Consulting Services',
                                      style: TextStyle(
                                        color: Color(0xFF0B0A0A),
                                        fontSize: 18,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w600,
                                        height: 0.08,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 32),
                              Container(
                                width: 199,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: double.infinity,
                                      child: Text(
                                        'Work',
                                        style: TextStyle(
                                          color: Color(0xFF0B0A0A),
                                          fontSize: 18,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w600,
                                          height: 0.08,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 18),
                                    Text(
                                      'Blog',
                                      style: TextStyle(
                                        color: Color(0xFF0B0A0A),
                                        fontSize: 18,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w600,
                                        height: 0.08,
                                      ),
                                    ),
                                    const SizedBox(height: 18),
                                    Text(
                                      'Contact Us',
                                      style: TextStyle(
                                        color: Color(0xFF0B0A0A),
                                        fontSize: 18,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w600,
                                        height: 0.08,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 32),
                              Container(
                                width: 199,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: double.infinity,
                                      child: Text(
                                        'Nashville, TN, USA',
                                        style: TextStyle(
                                          color: Color(0xFF0B0A0A),
                                          fontSize: 18,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w600,
                                          height: 0.08,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 18),
                                    Text(
                                      'contact@origolnc.com',
                                      style: TextStyle(
                                        color: Color(0xFF0B0A0A),
                                        fontSize: 18,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w600,
                                        height: 0.08,
                                      ),
                                    ),
                                    const SizedBox(height: 18),
                                    SizedBox(
                                      width: double.infinity,
                                      child: Text(
                                        '1-800-560-4764',
                                        style: TextStyle(
                                          color: Color(0xFF0B0A0A),
                                          fontSize: 18,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w600,
                                          height: 0.08,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 309,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20, vertical: 40), // Adjusted padding
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFFFF9D42)),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment:
                        MainAxisAlignment.center, // Centered vertically
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment:
                            MainAxisAlignment.center, // Centered horizontally
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Origo',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF0B0A0A),
                              fontSize: 120,
                              fontFamily: 'Supply',
                              fontWeight: FontWeight.w700,
                              height: 1.1, // Adjusted line height
                            ),
                          ),
                          Text(
                            'inc',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF0B0A0A),
                              fontSize: 32,
                              fontFamily: 'Supply',
                              fontWeight: FontWeight.w500,
                              height: 1.1, // Adjusted line height
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                          height: 20), // Increased space between elements
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          'Marketing & Consulting',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF0B0A0A),
                            fontSize: 56,
                            fontFamily: 'Supply',
                            fontWeight: FontWeight.w700,
                            height: 1.2, // Adjusted line height
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 188, vertical: 20),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Origoinc 2024. All rights reserved',
                        style: TextStyle(
                          color: Color(0xFF0B0A0A),
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 0.07,
                        ),
                      ),
                      const SizedBox(width: 163),
                      Container(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Terms & Conditions',
                              style: TextStyle(
                                color: Color(0xFF0B0A0A),
                                fontSize: 16,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
                                height: 0.07,
                              ),
                            ),
                            const SizedBox(width: 60),
                            Text(
                              'Privacy Policy',
                              style: TextStyle(
                                color: Color(0xFF0B0A0A),
                                fontSize: 16,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
                                height: 0.07,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
