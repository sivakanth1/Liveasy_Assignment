import 'package:flutter/material.dart';

class Curve46A6DD extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(0, size.height * 0.4166667);
    path_0.lineTo(size.width * 0.02416667, size.height * 0.3703701);
    path_0.cubicTo(
        size.width * 0.04750000,
        size.height * 0.3240743,
        size.width * 0.09500000,
        size.height * 0.2314812,
        size.width * 0.1425000,
        size.height * 0.2083333);
    path_0.cubicTo(
        size.width * 0.1908333,
        size.height * 0.1851854,
        size.width * 0.2383333,
        size.height * 0.2314812,
        size.width * 0.2858333,
        size.height * 0.3009257);
    path_0.cubicTo(
        size.width * 0.3333333,
        size.height * 0.3703701,
        size.width * 0.3808333,
        size.height * 0.4629632,
        size.width * 0.4283333,
        size.height * 0.5092590);
    path_0.cubicTo(
        size.width * 0.4758333,
        size.height * 0.5555556,
        size.width * 0.5241667,
        size.height * 0.5555556,
        size.width * 0.5716667,
        size.height * 0.5092590);
    path_0.cubicTo(
        size.width * 0.6191667,
        size.height * 0.4629632,
        size.width * 0.6666667,
        size.height * 0.3703701,
        size.width * 0.7141667,
        size.height * 0.3935187);
    path_0.cubicTo(
        size.width * 0.7616667,
        size.height * 0.4166667,
        size.width * 0.8091667,
        size.height * 0.5555556,
        size.width * 0.8575000,
        size.height * 0.5092590);
    path_0.cubicTo(
        size.width * 0.9050000,
        size.height * 0.4629632,
        size.width * 0.9525000,
        size.height * 0.2314812,
        size.width * 0.9758333,
        size.height * 0.1157410);
    path_0.lineTo(size.width, 0);
    path_0.lineTo(size.width, size.height * 1.388889);
    path_0.lineTo(size.width * 0.9758333, size.height * 1.388889);
    path_0.cubicTo(
        size.width * 0.9525000,
        size.height * 1.388889,
        size.width * 0.9050000,
        size.height * 1.388889,
        size.width * 0.8575000,
        size.height * 1.388889);
    path_0.cubicTo(
        size.width * 0.8091667,
        size.height * 1.388889,
        size.width * 0.7616667,
        size.height * 1.388889,
        size.width * 0.7141667,
        size.height * 1.388889);
    path_0.cubicTo(
        size.width * 0.6666667,
        size.height * 1.388889,
        size.width * 0.6191667,
        size.height * 1.388889,
        size.width * 0.5716667,
        size.height * 1.388889);
    path_0.cubicTo(
        size.width * 0.5241667,
        size.height * 1.388889,
        size.width * 0.4758333,
        size.height * 1.388889,
        size.width * 0.4283333,
        size.height * 1.388889);
    path_0.cubicTo(
        size.width * 0.3808333,
        size.height * 1.388889,
        size.width * 0.3333333,
        size.height * 1.388889,
        size.width * 0.2858333,
        size.height * 1.388889);
    path_0.cubicTo(
        size.width * 0.2383333,
        size.height * 1.388889,
        size.width * 0.1908333,
        size.height * 1.388889,
        size.width * 0.1425000,
        size.height * 1.388889);
    path_0.cubicTo(
        size.width * 0.09500000,
        size.height * 1.388889,
        size.width * 0.04750000,
        size.height * 1.388889,
        size.width * 0.02416667,
        size.height * 1.388889);
    path_0.lineTo(0, size.height * 1.388889);
    path_0.lineTo(0, size.height * 0.4166667);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = const Color(0xff46A6DD).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
