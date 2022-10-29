import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';

class CurvePainter extends StatelessWidget {
  const CurvePainter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: //ColumnSuper(
          //   alignment: Alignment.bottomCenter,
          //   innerDistance: -12.h,
          //   children: [
          //     CustomPaint(
          //       size: Size(
          //           100.w,
          //           (50.h * 0.25)
          //               .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
          //       painter: Curve1(),
          //     ),
          //     CustomPaint(
          //       size: Size(
          //           100.w,
          //           (50.h * 0.25)
          //               .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
          //       painter: Curve2(),
          //     ),
          //   ],
          // ),
          CustomPaint(
        size: Size(
            100.w,
            (50.h * 0.25)
                .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
        painter: Curve2(),
      ),
    );
  }
}

class Curve2 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_1 = Path();
    path_1.moveTo(0, size.height * 0.1944167);
    path_1.lineTo(size.width * 0.04629639, size.height * 0.1319167);
    path_1.cubicTo(
        size.width * 0.09259250,
        size.height * 0.06941656,
        size.width * 0.1851853,
        size.height * -0.05558344,
        size.width * 0.2777778,
        size.height * 0.02774990);
    path_1.cubicTo(
        size.width * 0.3703694,
        size.height * 0.1110833,
        size.width * 0.4629639,
        size.height * 0.4027500,
        size.width * 0.5555556,
        size.height * 0.5694167);
    path_1.cubicTo(
        size.width * 0.6481472,
        size.height * 0.7360833,
        size.width * 0.7407417,
        size.height * 0.7777500,
        size.width * 0.8333333,
        size.height * 0.6735833);
    path_1.cubicTo(
        size.width * 0.9259250,
        size.height * 0.5694167,
        size.width * 1.018519,
        size.height * 0.3194167,
        size.width * 1.064814,
        size.height * 0.1944167);
    path_1.lineTo(size.width * 1.111111, size.height * 0.06941656);
    path_1.lineTo(size.width * 1.111111, size.height * 1.069417);
    path_1.lineTo(size.width * 1.064814, size.height * 1.069417);
    path_1.cubicTo(
        size.width * 1.018519,
        size.height * 1.069417,
        size.width * 0.9259250,
        size.height * 1.069417,
        size.width * 0.8333333,
        size.height * 1.069417);
    path_1.cubicTo(
        size.width * 0.7407417,
        size.height * 1.069417,
        size.width * 0.6481472,
        size.height * 1.069417,
        size.width * 0.5555556,
        size.height * 1.069417);
    path_1.cubicTo(
        size.width * 0.4629639,
        size.height * 1.069417,
        size.width * 0.3703694,
        size.height * 1.069417,
        size.width * 0.2777778,
        size.height * 1.069417);
    path_1.cubicTo(
        size.width * 0.1851853,
        size.height * 1.069417,
        size.width * 0.09259250,
        size.height * 1.069417,
        size.width * 0.04629639,
        size.height * 1.069417);
    path_1.lineTo(0, size.height * 1.069417);
    path_1.lineTo(0, size.height * 0.1944167);
    path_1.close();

    Paint paint_1_fill = Paint()..style = PaintingStyle.fill;
    paint_1_fill.color = Color(0xff93D2F3).withOpacity(1.0);
    canvas.drawPath(path_1, paint_1_fill);

    Path path_0 = Path();
    path_0.moveTo(0, size.height * 0.05432100);
    path_0.lineTo(size.width * 0.03055556, size.height * 0.1654322);
    path_0.cubicTo(
        size.width * 0.06111111,
        size.height * 0.2765433,
        size.width * 0.1222222,
        size.height * 0.4987656,
        size.width * 0.1861111,
        size.height * 0.5654322);
    path_0.cubicTo(
        size.width * 0.2472222,
        size.height * 0.6320989,
        size.width * 0.3083333,
        size.height * 0.5432100,
        size.width * 0.3694444,
        size.height * 0.4320989);
    path_0.cubicTo(
        size.width * 0.4333333,
        size.height * 0.3209878,
        size.width * 0.4944444,
        size.height * 0.1876544,
        size.width * 0.5555556,
        size.height * 0.09876544);
    path_0.cubicTo(
        size.width * 0.6166667,
        size.height * 0.009876544,
        size.width * 0.6777778,
        size.height * -0.03456789,
        size.width * 0.7416667,
        size.height * 0.03209878);
    path_0.cubicTo(
        size.width * 0.8027778,
        size.height * 0.09876544,
        size.width * 0.8638889,
        size.height * 0.2765433,
        size.width * 0.9250000,
        size.height * 0.3209878);
    path_0.cubicTo(
        size.width * 0.9888889,
        size.height * 0.3654322,
        size.width * 1.050000,
        size.height * 0.2765433,
        size.width * 1.080556,
        size.height * 0.2320989);
    path_0.lineTo(size.width * 1.111111, size.height * 0.1876544);
    path_0.lineTo(size.width * 1.111111, size.height * 1.254322);
    path_0.lineTo(size.width * 1.080556, size.height * 1.254322);
    path_0.cubicTo(
        size.width * 1.050000,
        size.height * 1.254322,
        size.width * 0.9888889,
        size.height * 1.254322,
        size.width * 0.9250000,
        size.height * 1.254322);
    path_0.cubicTo(
        size.width * 0.8638889,
        size.height * 1.254322,
        size.width * 0.8027778,
        size.height * 1.254322,
        size.width * 0.7416667,
        size.height * 1.254322);
    path_0.cubicTo(
        size.width * 0.6777778,
        size.height * 1.254322,
        size.width * 0.6166667,
        size.height * 1.254322,
        size.width * 0.5555556,
        size.height * 1.254322);
    path_0.cubicTo(
        size.width * 0.4944444,
        size.height * 1.254322,
        size.width * 0.4333333,
        size.height * 1.254322,
        size.width * 0.3694444,
        size.height * 1.254322);
    path_0.cubicTo(
        size.width * 0.3083333,
        size.height * 1.254322,
        size.width * 0.2472222,
        size.height * 1.254322,
        size.width * 0.1861111,
        size.height * 1.254322);
    path_0.cubicTo(
        size.width * 0.1222222,
        size.height * 1.254322,
        size.width * 0.06111111,
        size.height * 1.254322,
        size.width * 0.03055556,
        size.height * 1.254322);
    path_0.lineTo(0, size.height * 1.254322);
    path_0.lineTo(0, size.height * 0.05432100);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = const Color(0xff2E3B62).withOpacity(0.5);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class Curve1 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(0, size.height * 0.1944167);
    path_0.lineTo(size.width * 0.04629639, size.height * 0.1319167);
    path_0.cubicTo(
        size.width * 0.09259250,
        size.height * 0.06941656,
        size.width * 0.1851853,
        size.height * -0.05558344,
        size.width * 0.2777778,
        size.height * 0.02774990);
    path_0.cubicTo(
        size.width * 0.3703694,
        size.height * 0.1110833,
        size.width * 0.4629639,
        size.height * 0.4027500,
        size.width * 0.5555556,
        size.height * 0.5694167);
    path_0.cubicTo(
        size.width * 0.6481472,
        size.height * 0.7360833,
        size.width * 0.7407417,
        size.height * 0.7777500,
        size.width * 0.8333333,
        size.height * 0.6735833);
    path_0.cubicTo(
        size.width * 0.9259250,
        size.height * 0.5694167,
        size.width * 1.018519,
        size.height * 0.3194167,
        size.width * 1.064814,
        size.height * 0.1944167);
    path_0.lineTo(size.width * 1.111111, size.height * 0.06941656);
    path_0.lineTo(size.width * 1.111111, size.height * 1.069417);
    path_0.lineTo(size.width * 1.064814, size.height * 1.069417);
    path_0.cubicTo(
        size.width * 1.018519,
        size.height * 1.069417,
        size.width * 0.9259250,
        size.height * 1.069417,
        size.width * 0.8333333,
        size.height * 1.069417);
    path_0.cubicTo(
        size.width * 0.7407417,
        size.height * 1.069417,
        size.width * 0.6481472,
        size.height * 1.069417,
        size.width * 0.5555556,
        size.height * 1.069417);
    path_0.cubicTo(
        size.width * 0.4629639,
        size.height * 1.069417,
        size.width * 0.3703694,
        size.height * 1.069417,
        size.width * 0.2777778,
        size.height * 1.069417);
    path_0.cubicTo(
        size.width * 0.1851853,
        size.height * 1.069417,
        size.width * 0.09259250,
        size.height * 1.069417,
        size.width * 0.04629639,
        size.height * 1.069417);
    path_0.lineTo(0, size.height * 1.069417);
    path_0.lineTo(0, size.height * 0.1944167);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xff93D2F3).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
