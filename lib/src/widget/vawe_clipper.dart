import 'package:flutter/material.dart';

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final  path = Path();

    path.lineTo(0.0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 20.0);
    path.quadraticBezierTo(size.width * 0.90, 0.0, size.width * 0.80, 20.0);
    path.quadraticBezierTo(size.width * 0.70, 50.0, size.width * 0.60, 30.0);
    path.quadraticBezierTo(size.width * 0.50, 0.0, size.width * 0.40, 10.0);
    path.quadraticBezierTo(size.width * 0.30, 20.0, size.width * 0.20, 10.0);
    path.quadraticBezierTo(size.width * 0.10, 0.0, size.width * 0.0, 10.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
