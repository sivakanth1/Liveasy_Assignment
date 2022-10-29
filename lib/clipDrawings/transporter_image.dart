import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class TransporterImage extends StatefulWidget {
  const TransporterImage({Key? key}) : super(key: key);

  @override
  State<TransporterImage> createState() => _TransporterImageState();
}

class _TransporterImageState extends State<TransporterImage> {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(10.5.w, (3.5.h * 1).toDouble()),
      painter: TransporterImageDrawing(),
    );
  }
}

class TransporterImageDrawing extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.9583325, 0);
    path_0.lineTo(size.width * 0.1666668, 0);
    path_0.cubicTo(
        size.width * 0.1462917,
        0,
        size.width * 0.1289167,
        size.height * 0.02356664,
        size.width * 0.1255625,
        size.height * 0.05570000);
    path_0.lineTo(size.width * 0.08970825, size.height * 0.4000000);
    path_0.lineTo(size.width * 0.04166675, size.height * 0.4000000);
    path_0.cubicTo(size.width * 0.01866668, size.height * 0.4000000, 0,
        size.height * 0.4298680, 0, size.height * 0.4666680);
    path_0.lineTo(0, size.height * 0.8000000);
    path_0.cubicTo(
        0,
        size.height * 0.8368000,
        size.width * 0.01866668,
        size.height * 0.8666680,
        size.width * 0.04166675,
        size.height * 0.8666680);
    path_0.lineTo(size.width * 0.1322917, size.height * 0.8666680);
    path_0.cubicTo(
        size.width * 0.1495000,
        size.height * 0.9442000,
        size.width * 0.1956875,
        size.height,
        size.width * 0.2500000,
        size.height);
    path_0.cubicTo(
        size.width * 0.3043125,
        size.height,
        size.width * 0.3505000,
        size.height * 0.9442000,
        size.width * 0.3677075,
        size.height * 0.8666680);
    path_0.lineTo(size.width * 0.6322925, size.height * 0.8666680);
    path_0.cubicTo(
        size.width * 0.6495200,
        size.height * 0.9442000,
        size.width * 0.6957075,
        size.height,
        size.width * 0.7500000,
        size.height);
    path_0.cubicTo(
        size.width * 0.8042925,
        size.height,
        size.width * 0.8504800,
        size.height * 0.9442000,
        size.width * 0.8677075,
        size.height * 0.8666680);
    path_0.lineTo(size.width * 0.9583325, size.height * 0.8666680);
    path_0.cubicTo(size.width * 0.9813325, size.height * 0.8666680, size.width,
        size.height * 0.8368000, size.width, size.height * 0.8000000);
    path_0.lineTo(size.width, size.height * 0.06666680);
    path_0.cubicTo(size.width, size.height * 0.02986668, size.width * 0.9813325,
        0, size.width * 0.9583325, 0);
    path_0.close();
    path_0.moveTo(size.width * 0.2916675, size.height * 0.1333332);
    path_0.lineTo(size.width * 0.2916675, size.height * 0.4000000);
    path_0.lineTo(size.width * 0.1741875, size.height * 0.4000000);
    path_0.lineTo(size.width * 0.2019582, size.height * 0.1333332);
    path_0.lineTo(size.width * 0.2916675, size.height * 0.1333332);
    path_0.close();
    path_0.moveTo(size.width * 0.2500000, size.height * 0.8666680);
    path_0.cubicTo(
        size.width * 0.2270208,
        size.height * 0.8666680,
        size.width * 0.2083332,
        size.height * 0.8367680,
        size.width * 0.2083332,
        size.height * 0.8000000);
    path_0.cubicTo(
        size.width * 0.2083332,
        size.height * 0.7632320,
        size.width * 0.2270208,
        size.height * 0.7333320,
        size.width * 0.2500000,
        size.height * 0.7333320);
    path_0.cubicTo(
        size.width * 0.2729575,
        size.height * 0.7333320,
        size.width * 0.2916450,
        size.height * 0.7632000,
        size.width * 0.2916675,
        size.height * 0.7999320);
    path_0.cubicTo(
        size.width * 0.2916675,
        size.height * 0.7999320,
        size.width * 0.2916675,
        size.height * 0.7999680,
        size.width * 0.2916675,
        size.height * 0.8000000);
    path_0.cubicTo(
        size.width * 0.2916675,
        size.height * 0.8000320,
        size.width * 0.2916675,
        size.height * 0.8000680,
        size.width * 0.2916675,
        size.height * 0.8000680);
    path_0.cubicTo(
        size.width * 0.2916450,
        size.height * 0.8368000,
        size.width * 0.2729575,
        size.height * 0.8666680,
        size.width * 0.2500000,
        size.height * 0.8666680);
    path_0.close();
    path_0.moveTo(size.width * 0.7500000, size.height * 0.8666680);
    path_0.cubicTo(
        size.width * 0.7270200,
        size.height * 0.8666680,
        size.width * 0.7083325,
        size.height * 0.8367680,
        size.width * 0.7083325,
        size.height * 0.8000000);
    path_0.cubicTo(
        size.width * 0.7083325,
        size.height * 0.7632320,
        size.width * 0.7270200,
        size.height * 0.7333320,
        size.width * 0.7500000,
        size.height * 0.7333320);
    path_0.cubicTo(
        size.width * 0.7729800,
        size.height * 0.7333320,
        size.width * 0.7916675,
        size.height * 0.7632320,
        size.width * 0.7916675,
        size.height * 0.8000000);
    path_0.cubicTo(
        size.width * 0.7916675,
        size.height * 0.8367680,
        size.width * 0.7729800,
        size.height * 0.8666680,
        size.width * 0.7500000,
        size.height * 0.8666680);
    path_0.close();
    path_0.moveTo(size.width * 0.9166675, size.height * 0.7333320);
    path_0.lineTo(size.width * 0.8677075, size.height * 0.7333320);
    path_0.cubicTo(
        size.width * 0.8504800,
        size.height * 0.6558000,
        size.width * 0.8042925,
        size.height * 0.6000000,
        size.width * 0.7500000,
        size.height * 0.6000000);
    path_0.cubicTo(
        size.width * 0.6957075,
        size.height * 0.6000000,
        size.width * 0.6495200,
        size.height * 0.6558000,
        size.width * 0.6322925,
        size.height * 0.7333320);
    path_0.lineTo(size.width * 0.3677075, size.height * 0.7333320);
    path_0.cubicTo(
        size.width * 0.3505000,
        size.height * 0.6558000,
        size.width * 0.3043125,
        size.height * 0.6000000,
        size.width * 0.2500000,
        size.height * 0.6000000);
    path_0.cubicTo(
        size.width * 0.1956875,
        size.height * 0.6000000,
        size.width * 0.1495000,
        size.height * 0.6558000,
        size.width * 0.1322917,
        size.height * 0.7333320);
    path_0.lineTo(size.width * 0.08333325, size.height * 0.7333320);
    path_0.lineTo(size.width * 0.08333325, size.height * 0.5333320);
    path_0.lineTo(size.width * 0.3333325, size.height * 0.5333320);
    path_0.cubicTo(
        size.width * 0.3563325,
        size.height * 0.5333320,
        size.width * 0.3750000,
        size.height * 0.5034680,
        size.width * 0.3750000,
        size.height * 0.4666680);
    path_0.lineTo(size.width * 0.3750000, size.height * 0.1333332);
    path_0.lineTo(size.width * 0.9166675, size.height * 0.1333332);
    path_0.lineTo(size.width * 0.9166675, size.height * 0.7333320);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = const Color(0xff2F3037).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
