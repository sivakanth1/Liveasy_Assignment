import 'package:flutter/material.dart';

class Curve2E3B62 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width, size.height * 0.4687500);
    path_0.lineTo(size.width * 0.9758333, size.height * 0.4166664);

    path_0.cubicTo(
        size.width * 0.9525000,
        size.height * 0.3645836,
        size.width * 0.9050000,
        size.height * 0.2604164,
        size.width * 0.8575000,
        size.height * 0.2343750);
    path_0.cubicTo(
        size.width * 0.8091667,
        size.height * 0.2083336,
        size.width * 0.7616667,
        size.height * 0.2604164,
        size.width * 0.7141667,
        size.height * 0.3385414);
    path_0.cubicTo(
        size.width * 0.6666667,
        size.height * 0.4166664,
        size.width * 0.6191667,
        size.height * 0.5208336,
        size.width * 0.5716667,
        size.height * 0.5729164);
    path_0.cubicTo(
        size.width * 0.5241667,
        size.height * 0.6250000,
        size.width * 0.4758333,
        size.height * 0.6250000,
        size.width * 0.4283333,
        size.height * 0.5729164);
    path_0.cubicTo(
        size.width * 0.3808333,
        size.height * 0.5208336,
        size.width * 0.3333333,
        size.height * 0.4166664,
        size.width * 0.2858333,
        size.height * 0.4427086);
    path_0.cubicTo(
        size.width * 0.2383333,
        size.height * 0.4687500,
        size.width * 0.1908333,
        size.height * 0.6250000,
        size.width * 0.1425000,
        size.height * 0.5729164);
    path_0.cubicTo(
        size.width * 0.09500000,
        size.height * 0.5208336,
        size.width * 0.04750000,
        size.height * 0.2604164,
        size.width * 0.02416661,
        size.height * 0.1302086);
    path_0.lineTo(0, 0);
    path_0.lineTo(0, size.height * 1.562500);
    path_0.lineTo(size.width * 0.02416661, size.height * 1.562500);
    path_0.cubicTo(
        size.width * 0.04750000,
        size.height * 1.562500,
        size.width * 0.09500000,
        size.height * 1.562500,
        size.width * 0.1425000,
        size.height * 1.562500);
    path_0.cubicTo(
        size.width * 0.1908333,
        size.height * 1.562500,
        size.width * 0.2383333,
        size.height * 1.562500,
        size.width * 0.2858333,
        size.height * 1.562500);
    path_0.cubicTo(
        size.width * 0.3333333,
        size.height * 1.562500,
        size.width * 0.3808333,
        size.height * 1.562500,
        size.width * 0.4283333,
        size.height * 1.562500);
    path_0.cubicTo(
        size.width * 0.4758333,
        size.height * 1.562500,
        size.width * 0.5241667,
        size.height * 1.562500,
        size.width * 0.5716667,
        size.height * 1.562500);
    path_0.cubicTo(
        size.width * 0.6191667,
        size.height * 1.562500,
        size.width * 0.6666667,
        size.height * 1.562500,
        size.width * 0.7141667,
        size.height * 1.562500);
    path_0.cubicTo(
        size.width * 0.7616667,
        size.height * 1.562500,
        size.width * 0.8091667,
        size.height * 1.562500,
        size.width * 0.8575000,
        size.height * 1.562500);
    path_0.cubicTo(
        size.width * 0.9050000,
        size.height * 1.562500,
        size.width * 0.9525000,
        size.height * 1.562500,
        size.width * 0.9758333,
        size.height * 1.562500);
    path_0.lineTo(size.width, size.height * 1.562500);
    path_0.lineTo(size.width, size.height * 0.4687500);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = const Color(0xff2E3B62).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
