import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ImageGalleryIcon extends StatelessWidget {
  const ImageGalleryIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(20.w, (20.w * 1).toDouble()),
      painter: ImageIconDrawing(),
    );
  }
}

class ImageIconDrawing extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.7916661, size.height * 0.1250000);
    path_0.lineTo(size.width * 0.2083339, size.height * 0.1250000);
    path_0.cubicTo(
        size.width * 0.1623096,
        size.height * 0.1250000,
        size.width * 0.1250000,
        size.height * 0.1623096,
        size.width * 0.1250000,
        size.height * 0.2083339);
    path_0.lineTo(size.width * 0.1250000, size.height * 0.7916661);
    path_0.cubicTo(
        size.width * 0.1250000,
        size.height * 0.8376911,
        size.width * 0.1623096,
        size.height * 0.8750000,
        size.width * 0.2083339,
        size.height * 0.8750000);
    path_0.lineTo(size.width * 0.7916661, size.height * 0.8750000);
    path_0.cubicTo(
        size.width * 0.8376911,
        size.height * 0.8750000,
        size.width * 0.8750000,
        size.height * 0.8376911,
        size.width * 0.8750000,
        size.height * 0.7916661);
    path_0.lineTo(size.width * 0.8750000, size.height * 0.2083339);
    path_0.cubicTo(
        size.width * 0.8750000,
        size.height * 0.1623096,
        size.width * 0.8376911,
        size.height * 0.1250000,
        size.width * 0.7916661,
        size.height * 0.1250000);
    path_0.close();

    Paint paint_0_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.03571429;
    paint_0_stroke.color = Colors.black.withOpacity(1.0);
    paint_0_stroke.strokeCap = StrokeCap.round;
    paint_0_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_0, paint_0_stroke);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.3541661, size.height * 0.4166661);
    path_1.cubicTo(
        size.width * 0.3886839,
        size.height * 0.4166661,
        size.width * 0.4166661,
        size.height * 0.3886839,
        size.width * 0.4166661,
        size.height * 0.3541661);
    path_1.cubicTo(
        size.width * 0.4166661,
        size.height * 0.3196482,
        size.width * 0.3886839,
        size.height * 0.2916661,
        size.width * 0.3541661,
        size.height * 0.2916661);
    path_1.cubicTo(
        size.width * 0.3196482,
        size.height * 0.2916661,
        size.width * 0.2916661,
        size.height * 0.3196482,
        size.width * 0.2916661,
        size.height * 0.3541661);
    path_1.cubicTo(
        size.width * 0.2916661,
        size.height * 0.3886839,
        size.width * 0.3196482,
        size.height * 0.4166661,
        size.width * 0.3541661,
        size.height * 0.4166661);
    path_1.close();

    Paint paint_1_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.03571429;
    paint_1_stroke.color = Colors.black.withOpacity(1.0);
    paint_1_stroke.strokeCap = StrokeCap.round;
    paint_1_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_1, paint_1_stroke);

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.8750000, size.height * 0.6250000);
    path_2.lineTo(size.width * 0.6666661, size.height * 0.4166661);
    path_2.lineTo(size.width * 0.2083339, size.height * 0.8750000);

    Paint paint_2_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.03571429;
    paint_2_stroke.color = Colors.black.withOpacity(1.0);
    paint_2_stroke.strokeCap = StrokeCap.round;
    paint_2_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_2, paint_2_stroke);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
