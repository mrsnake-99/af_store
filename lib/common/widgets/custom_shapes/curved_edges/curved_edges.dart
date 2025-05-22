import 'package:flutter/material.dart';

class FCustomCurvedEdges extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);

    final firstCurve = Offset(0, size.height - 20);
    final lastCurve = Offset(30, size.height - 20);

    path.quadraticBezierTo(
        firstCurve.dx, firstCurve.dy, lastCurve.dx, lastCurve.dy);

    final lineStart = Offset(0, size.height - 20);
    final lineEnd = Offset(size.width - 30, size.height - 20);

    path.quadraticBezierTo(lineStart.dx, lineStart.dy, lineEnd.dx, lineEnd.dy);

    final secondfirstCurve = Offset(size.width, size.height - 20);
    final secondlastCurve = Offset(size.width, size.height);

    path.quadraticBezierTo(secondfirstCurve.dx, secondfirstCurve.dy,
        secondlastCurve.dx, secondlastCurve.dy);

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
// Commit at 2022-02-03 13:07:33
// Commit at 2022-04-04 18:25:23
// Commit at 2023-01-16 10:33:56
// Commit at 2024-06-18 18:50:04
// Commit at 2024-01-08 14:00:40
// Commit at 2024-05-08 14:57:05
// Random commit
