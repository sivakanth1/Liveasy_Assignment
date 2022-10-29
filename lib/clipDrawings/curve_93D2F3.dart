import 'package:flutter/material.dart';

class Curve93D2F3 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_1 = Path();
    path_1.moveTo(size.width, size.height * 0.4166667);
    path_1.lineTo(size.width * 0.9758333, size.height * 0.3703701);
    path_1.cubicTo(
        size.width * 0.9525000,
        size.height * 0.3240743,
        size.width * 0.9050000,
        size.height * 0.2314812,
        size.width * 0.8575000,
        size.height * 0.2083333);
    path_1.cubicTo(
        size.width * 0.8091667,
        size.height * 0.1851854,
        size.width * 0.7616667,
        size.height * 0.2314812,
        size.width * 0.7141667,
        size.height * 0.3009257);
    path_1.cubicTo(
        size.width * 0.6666667,
        size.height * 0.3703701,
        size.width * 0.6191667,
        size.height * 0.4629632,
        size.width * 0.5716667,
        size.height * 0.5092590);
    path_1.cubicTo(
        size.width * 0.5241667,
        size.height * 0.5555556,
        size.width * 0.4758333,
        size.height * 0.5555556,
        size.width * 0.4283333,
        size.height * 0.5092590);
    path_1.cubicTo(
        size.width * 0.3808333,
        size.height * 0.4629632,
        size.width * 0.3333333,
        size.height * 0.3703701,
        size.width * 0.2858333,
        size.height * 0.3935187);
    path_1.cubicTo(
        size.width * 0.2383333,
        size.height * 0.4166667,
        size.width * 0.1908333,
        size.height * 0.5555556,
        size.width * 0.1425000,
        size.height * 0.5092590);
    path_1.cubicTo(
        size.width * 0.09500000,
        size.height * 0.4629632,
        size.width * 0.04750000,
        size.height * 0.2314812,
        size.width * 0.02416661,
        size.height * 0.1157410);
    path_1.lineTo(0, 0);
    path_1.lineTo(0, size.height * 1.388889);
    path_1.lineTo(size.width * 0.02416661, size.height * 1.388889);
    path_1.cubicTo(
        size.width * 0.04750000,
        size.height * 1.388889,
        size.width * 0.09500000,
        size.height * 1.388889,
        size.width * 0.1425000,
        size.height * 1.388889);
    path_1.cubicTo(
        size.width * 0.1908333,
        size.height * 1.388889,
        size.width * 0.2383333,
        size.height * 1.388889,
        size.width * 0.2858333,
        size.height * 1.388889);
    path_1.cubicTo(
        size.width * 0.3333333,
        size.height * 1.388889,
        size.width * 0.3808333,
        size.height * 1.388889,
        size.width * 0.4283333,
        size.height * 1.388889);
    path_1.cubicTo(
        size.width * 0.4758333,
        size.height * 1.388889,
        size.width * 0.5241667,
        size.height * 1.388889,
        size.width * 0.5716667,
        size.height * 1.388889);
    path_1.cubicTo(
        size.width * 0.6191667,
        size.height * 1.388889,
        size.width * 0.6666667,
        size.height * 1.388889,
        size.width * 0.7141667,
        size.height * 1.388889);
    path_1.cubicTo(
        size.width * 0.7616667,
        size.height * 1.388889,
        size.width * 0.8091667,
        size.height * 1.388889,
        size.width * 0.8575000,
        size.height * 1.388889);
    path_1.cubicTo(
        size.width * 0.9050000,
        size.height * 1.388889,
        size.width * 0.9525000,
        size.height * 1.388889,
        size.width * 0.9758333,
        size.height * 1.388889);
    path_1.lineTo(size.width, size.height * 1.388889);
    path_1.lineTo(size.width, size.height * 0.4166667);
    path_1.close();

    Paint paint_1_fill = Paint()..style = PaintingStyle.fill;
    paint_1_fill.color = const Color(0xff93D2F3).withOpacity(1.0);
    canvas.drawPath(path_1, paint_1_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
