import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import '../clipDrawings/curve_2E3B62.dart';
import '../clipDrawings/curve_93D2F3.dart';

class SecondPageCurves extends StatelessWidget {
  const SecondPageCurves({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: ColumnSuper(
        alignment: Alignment.bottomCenter,
        innerDistance: -10.h,
        children: [
          CustomPaint(
            size: Size(
                100.w,
                (44.w * 0.5833333333333334)
                    .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
            painter: Curve93D2F3(),
          ),
          CustomPaint(
            size: Size(
                100.w,
                (38.w * 0.5833333333333334)
                    .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
            painter: Curve2E3B62(),
          ),
        ],
      ),
    );
  }
}
