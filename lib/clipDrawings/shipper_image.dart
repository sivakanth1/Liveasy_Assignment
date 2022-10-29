import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';

class ShipperImage extends StatelessWidget {
  const ShipperImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ColumnSuper(
      innerDistance: -3.5.h,
      children: [
        CustomPaint(
          size: Size(10.5.w, 5.h),
          painter: ShipperTop(),
        ),
        CustomPaint(
          size: Size(8.5.w, 3.5.h),
          painter: ShipperGoods(),
        ),
      ],
    );
  }
}

class ShipperTop extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.4860000, 0);
    path_0.lineTo(0, size.height * 0.2970000);
    path_0.lineTo(0, size.height);
    path_0.lineTo(size.width * 0.05900000, size.height);
    path_0.lineTo(size.width * 0.05900000, size.height * 0.3300000);
    path_0.lineTo(size.width * 0.4860000, size.height * 0.06900000);
    path_0.lineTo(size.width * 0.9410000, size.height * 0.3310000);
    path_0.lineTo(size.width * 0.9410000, size.height);
    path_0.lineTo(size.width, size.height);
    path_0.lineTo(size.width, size.height * 0.2960000);
    path_0.lineTo(size.width * 0.4860000, 0);
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

class ShipperGoods extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.7600000, size.height * 0.01185185);
    path_0.lineTo(size.width * 0.2400004, size.height * 0.01185185);
    path_0.lineTo(size.width * 0.2400004, size.height * 0.4607407);
    path_0.lineTo(size.width * 0.02285768, size.height * 0.4607407);
    path_0.lineTo(size.width * 0.02285768, size.height);
    path_0.lineTo(size.width * 0.4571429, size.height);
    path_0.lineTo(size.width * 0.5428571, size.height);
    path_0.lineTo(size.width * 0.9771429, size.height);
    path_0.lineTo(size.width * 0.9771429, size.height * 0.4607407);
    path_0.lineTo(size.width * 0.7600000, size.height * 0.4607407);
    path_0.lineTo(size.width * 0.7600000, size.height * 0.01185185);
    path_0.close();
    path_0.moveTo(size.width * 0.3242861, size.height * 0.1007407);
    path_0.lineTo(size.width * 0.4142857, size.height * 0.1007407);
    path_0.lineTo(size.width * 0.4142857, size.height * 0.2059259);
    path_0.lineTo(size.width * 0.5842857, size.height * 0.2059259);
    path_0.lineTo(size.width * 0.5842857, size.height * 0.1007407);
    path_0.lineTo(size.width * 0.6742857, size.height * 0.1007407);
    path_0.lineTo(size.width * 0.6742857, size.height * 0.4607407);
    path_0.lineTo(size.width * 0.5428571, size.height * 0.4607407);
    path_0.lineTo(size.width * 0.4571429, size.height * 0.4607407);
    path_0.lineTo(size.width * 0.3242861, size.height * 0.4607407);
    path_0.lineTo(size.width * 0.3242861, size.height * 0.1007407);
    path_0.close();
    path_0.moveTo(size.width * 0.1071432, size.height * 0.9125926);
    path_0.lineTo(size.width * 0.1071432, size.height * 0.5481481);
    path_0.lineTo(size.width * 0.1971432, size.height * 0.5481481);
    path_0.lineTo(size.width * 0.1971432, size.height * 0.6533333);
    path_0.lineTo(size.width * 0.3671429, size.height * 0.6533333);
    path_0.lineTo(size.width * 0.3671429, size.height * 0.5511111);
    path_0.lineTo(size.width * 0.4571429, size.height * 0.5511111);
    path_0.lineTo(size.width * 0.4571429, size.height * 0.9111111);
    path_0.lineTo(size.width * 0.1071432, size.height * 0.9111111);
    path_0.lineTo(size.width * 0.1071432, size.height * 0.9125926);
    path_0.close();
    path_0.moveTo(size.width * 0.8928571, size.height * 0.9125926);
    path_0.lineTo(size.width * 0.5428571, size.height * 0.9125926);
    path_0.lineTo(size.width * 0.5428571, size.height * 0.5511111);
    path_0.lineTo(size.width * 0.6328571, size.height * 0.5511111);
    path_0.lineTo(size.width * 0.6328571, size.height * 0.6533333);
    path_0.lineTo(size.width * 0.8028571, size.height * 0.6533333);
    path_0.lineTo(size.width * 0.8028571, size.height * 0.5481481);
    path_0.lineTo(size.width * 0.8928571, size.height * 0.5481481);
    path_0.lineTo(size.width * 0.8928571, size.height * 0.9125926);
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
