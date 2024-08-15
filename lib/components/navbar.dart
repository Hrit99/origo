import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:website/components/borderButton.dart';
import 'package:website/dimensions/dimension.dart';

const String svgString = '''
<svg width="53" height="52" viewBox="0 0 53 52" fill="none" xmlns="http://www.w3.org/2000/svg">
  <path d="M48.8419 19.4715C49.4782 19.2741 49.8373 18.5976 49.611 17.971C48.3567 14.497 46.3596 11.3347 43.7544 8.70875C41.1508 6.08445 38.01 4.06656 34.555 2.79113C33.9286 2.55986 33.2483 2.91658 33.0483 3.55374L31.1812 9.50377C30.9817 10.1394 31.3367 10.8124 31.9558 11.0584C34.0829 11.9034 36.0182 13.18 37.6379 14.8126C39.2574 16.445 40.5204 18.3919 41.3524 20.5289C41.5946 21.1512 42.2678 21.5105 42.9056 21.3127L48.8419 19.4715Z" fill="#FAFAFA"/>
  <path d="M29.3673 2.69969C29.4654 2.04034 29.0108 1.42321 28.3476 1.35623C25.1045 1.02872 21.8249 1.33217 18.6899 2.25409C15.5536 3.17638 12.6289 4.69798 10.0749 6.73122C9.55415 7.1458 9.50486 7.90935 9.94227 8.41109L14.0345 13.1052C14.4737 13.609 15.2361 13.6564 15.7693 13.2533C17.3728 12.0409 19.1843 11.1269 21.1176 10.5583C23.0514 9.98966 25.0685 9.77801 27.0713 9.9301C27.7368 9.98064 28.3519 9.52986 28.45 8.86971L29.3673 2.69969Z" fill="#FAFAFA"/>
  <path d="M43.8785 42.6145C44.3789 43.0576 45.1465 43.0118 45.5637 42.4896C47.6145 39.9229 49.151 36.9778 50.0835 33.8164C51.0164 30.6538 51.3248 27.3429 50.9959 24.0691C50.9291 23.405 50.3111 22.9498 49.6511 23.0485L43.5058 23.9678C42.8466 24.0664 42.3965 24.6805 42.4469 25.3452C42.6004 27.3694 42.3857 29.4083 41.8095 31.3614C41.2333 33.3149 40.3072 35.1431 39.08 36.7579C38.6772 37.2878 38.7206 38.0466 39.2189 38.488L43.8785 42.6145Z" fill="#FAFAFA"/>
  <path d="M24.7652 20.2518C25.2297 19.4449 26.394 19.4449 26.8585 20.2518L31.8328 28.8927C32.2962 29.6979 31.7151 30.703 30.7861 30.703H20.8377C19.9086 30.703 19.3275 29.6979 19.791 28.8927L24.7652 20.2518Z" fill="#FAFAFA"/>
  <path fill-rule="evenodd" clip-rule="evenodd" d="M0.526494 27.775C0.256398 21.8567 2.05877 16.0435 5.5996 11.3329C6.00119 10.7986 6.76708 10.7301 7.28035 11.1582L12.0596 15.1443C12.5708 15.5707 12.6367 16.3279 12.2497 16.8696C10.0747 19.9143 8.97413 23.6145 9.14594 27.3793C9.26549 29.9989 9.99564 32.5309 11.2518 34.7832C11.4221 35.0885 11.4659 35.4503 11.358 35.7829L9.57372 41.2862C9.26353 42.2429 10.1902 43.1374 11.1354 42.7936L16.2764 40.9236C16.63 40.795 17.022 40.8409 17.3459 41.0322C19.6688 42.4041 22.3075 43.2021 25.0422 43.3287C28.7933 43.5024 32.4806 42.4018 35.516 40.2246C36.0592 39.8351 36.8202 39.9016 37.2466 40.4163L41.2199 45.2122C41.6446 45.7248 41.5761 46.4869 41.0451 46.8882C36.346 50.44 30.5471 52.2467 24.6442 51.9733C18.3399 51.6814 12.3717 49.0379 7.91005 44.5613C3.44837 40.0847 0.815058 34.098 0.526494 27.775Z" fill="#FAFAFA"/>
  <path fill-rule="evenodd" clip-rule="evenodd" d="M52.4998 10.1446C52.4998 10.8937 51.3651 11.1567 50.9802 10.5142C49.9316 8.7636 48.6724 7.13997 47.2257 5.68176C45.6262 4.06953 43.8239 2.68617 41.8707 1.56323C41.2116 1.18436 41.4719 0 42.232 0H51.8097C52.1909 0 52.4998 0.308978 52.4998 0.690122V10.1446Z" fill="#FAFAFA"/>
</svg>
''';

class Navbar extends StatefulWidget implements PreferredSizeWidget {
  final double customHeight;
  String state;

  Navbar({super.key, this.customHeight = 200, this.state = "home"});

  @override
  State<Navbar> createState() => _NavbarState();

    @override
  Size get preferredSize => Size.fromHeight(customHeight);
}


class _NavbarState extends State<Navbar> {


  void _changeStateNavbar(state) {
    setState(() {
      widget.state = state; 
    });
  }
  @override
  Widget build(BuildContext context) {
    final dimensions = Provider.of<Dimensions>(context);
    return Container(
      height: widget.customHeight,
      width: dimensions.getWidth(1600),
      padding: EdgeInsets.symmetric(vertical: dimensions.getHeight(23), horizontal: dimensions.getWidth(188)),
      color: Color.fromRGBO(11, 10, 10, 1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SvgPicture.string(
                svgString,
                width: dimensions.getWidth(52),
                height: dimensions.getHeight(52),
              ),
              SizedBox(width: 10),
              Text(
                "Origo Inc.",
                style: GoogleFonts.inter(
                  textStyle: TextStyle(
                    color: Color.fromRGBO(250, 250, 250, 1),
                  ),
                  fontSize: dimensions.getWidth(24),
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          Container(
            child: Row(
              children: [
                TextButton(onPressed: () => _changeStateNavbar("home"), child: Text("Home", style: GoogleFonts.inter(
                  textStyle: TextStyle(
                    color: (widget.state == "home") ? Color.fromRGBO(245 , 118, 0, 1): Color.fromRGBO(193 , 210, 230, 1),
                  ),
                  fontSize: dimensions.getWidth(16),
                  fontWeight: (widget.state == "home") ? FontWeight.w700: FontWeight.w400,
                )  ,)),
                 TextButton(onPressed: () => _changeStateNavbar("about"), child: Text("About us", style: GoogleFonts.inter(
                  textStyle: TextStyle(
                    color: (widget.state == "about") ? Color.fromRGBO(245 , 118, 0, 1): Color.fromRGBO(193 , 210, 230, 1),
                  ),
                  fontSize: dimensions.getWidth(16),
                  fontWeight: (widget.state == "about") ? FontWeight.w700: FontWeight.w400,
                )  ,)),
                 TextButton(onPressed: () => _changeStateNavbar("marketing"), child: Text("Marketing", style: GoogleFonts.inter(
                  textStyle: TextStyle(
                    color: (widget.state == "marketing") ? Color.fromRGBO(245 , 118, 0, 1): Color.fromRGBO(193 , 210, 230, 1),
                  ),
                  fontSize: dimensions.getWidth(16),
                  fontWeight: (widget.state == "marketing") ? FontWeight.w700: FontWeight.w400,
                )  ,)),
                 TextButton(onPressed: () => _changeStateNavbar("consulting"), child: Text("Consulting", style: GoogleFonts.inter(
                  textStyle: TextStyle(
                    color: (widget.state == "consulting") ? Color.fromRGBO(245 , 118, 0, 1): Color.fromRGBO(193 , 210, 230, 1),
                  ),
                  fontSize: dimensions.getWidth(16),
                  fontWeight: (widget.state == "consulting") ? FontWeight.w700: FontWeight.w400,
                )  ,)),
                 TextButton(onPressed: () => _changeStateNavbar("portfolio"), child: Text("Portfolio", style: GoogleFonts.inter(
                  textStyle: TextStyle(
                    color: (widget.state == "portfolio") ? Color.fromRGBO(245 , 118, 0, 1): Color.fromRGBO(193 , 210, 230, 1),
                  ),
                  fontSize: dimensions.getWidth(16),
                  fontWeight: (widget.state == "portfolio") ? FontWeight.w700: FontWeight.w400,
                )  ,))
              ],
            ),
          ),
          Borderbutton(height: dimensions.getHeight(58), width: dimensions.getWidth(149), action: () => {}, backgroundColor: Color.fromRGBO(11, 10, 10, 1), borderColor: Color.fromRGBO(245, 118, 0, 1), text: "Contact", textColor: Color.fromRGBO(250, 250, 250, 1))
        ],
      ),
    );
  }


}