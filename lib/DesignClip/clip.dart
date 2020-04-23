import 'package:flutter/material.dart';

class Mypainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint1 = Paint();
    paint1.color = Colors.purple[400];
    paint1.style = PaintingStyle.fill;
    var path1 = Path();
    path1.addRect(Rect.fromLTWH(0, 0, size.width, size.height));
    path1.close();
    canvas.drawPath(path1, paint1);

    var paint2 = Paint();
    paint2.color = Colors.indigo[600];
    paint2.style = PaintingStyle.fill;
    var path2 = Path();
    path2.lineTo(0, size.height);
    var e2 = Offset(size.width, 0);
    var c2 = Offset(size.width / 2 + 100, size.height / 2 + 50);
    path2.quadraticBezierTo(c2.dx, c2.dy, e2.dx, e2.dy);
    canvas.drawPath(path2, paint2);

    var paint3 = Paint();
    paint3.color = Colors.red[400];
    paint3.style = PaintingStyle.fill;
    var path3 = Path();
    path3.lineTo(0, size.height / 2);
    var endPoint = Offset(size.width / 2, 0);
    var conPoint = Offset(size.width / 4 + 50, size.height / 4 + 50);
    path3.quadraticBezierTo(conPoint.dx, conPoint.dy, endPoint.dx, endPoint.dy);
    canvas.drawPath(path3, paint3);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
