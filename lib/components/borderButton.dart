import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:website/dimensions/dimension.dart';

class Borderbutton extends StatelessWidget {
   final double height;
   final double width;
   final VoidCallback action;
   final Color backgroundColor;
   final Color borderColor;
   final String text;
   final Color textColor;
  Borderbutton({super.key, required this.height,required this.width,required this.action, required this.backgroundColor, required this.borderColor,required this.text, required this.textColor});

  @override
  Widget build(BuildContext context) {
    final dimensions = Provider.of<Dimensions>(context,  listen: false);
    return TextButton(onPressed: action, child: CornerBorderContainer(
      borderColor: borderColor,
      child: Padding(
          padding: const EdgeInsets.all(2),
        child: Container(
          height: height,
          width: width,
          color: backgroundColor,
          alignment: Alignment.center,
          child: Text(text, style: GoogleFonts.inter(
                  textStyle: TextStyle(
                    color:  textColor,
                  ),
                  fontSize: dimensions.getWidth(18),
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
                ),
        ),
      ),
    ));
  }
}

class CornerBorderContainer extends StatelessWidget {
  final Widget child;
  final double cornerLength;
  final double strokeWidth;
  final Color borderColor;

  CornerBorderContainer({
    required this.child,
    this.cornerLength = 10.0,
    this.strokeWidth = 2.0,
    this.borderColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: CornerBorderPainter(
        cornerLength: cornerLength,
        strokeWidth: strokeWidth,
        borderColor: borderColor,
      ),
      child: child,
    );
  }
}

class CornerBorderPainter extends CustomPainter {
  final double cornerLength;
  final double strokeWidth;
  final Color borderColor;

  CornerBorderPainter({
    required this.cornerLength,
    required this.strokeWidth,
    required this.borderColor,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = borderColor
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;

    // Top left corner
    canvas.drawLine(Offset(0, 0), Offset(cornerLength, 0), paint);
    canvas.drawLine(Offset(0, 0), Offset(0, cornerLength), paint);

    // Top right corner
    canvas.drawLine(Offset(size.width - cornerLength, 0), Offset(size.width, 0), paint);
    canvas.drawLine(Offset(size.width, 0), Offset(size.width, cornerLength), paint);

    // Bottom left corner
    canvas.drawLine(Offset(0, size.height), Offset(0, size.height - cornerLength), paint);
    canvas.drawLine(Offset(0, size.height), Offset(cornerLength, size.height), paint);

    // Bottom right corner
    canvas.drawLine(Offset(size.width, size.height), Offset(size.width, size.height - cornerLength), paint);
    canvas.drawLine(Offset(size.width, size.height), Offset(size.width - cornerLength, size.height), paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}