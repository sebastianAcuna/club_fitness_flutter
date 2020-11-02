
import 'package:flutter/material.dart';
class UserPainter extends CustomClipper<Path>{

  @override
  Path getClip( Size size) {

      final height = size.height;
      final width = size.width;

      final rounded = 50.0;
      Path mainLine  = Path();

      mainLine.moveTo(0, 0);
      mainLine.lineTo(0,  height / 1.5);
      mainLine.lineTo((width / 2) - rounded , height / 2.5);
      // mainLine.quadraticBezierTo(width / 2, height / 2.5, 50 , height / 2.5);
      mainLine.lineTo(width,0);
      return mainLine;

    }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
   return true;
  }
  
}