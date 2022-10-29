import 'package:flutter/material.dart';
import 'package:liveasy/clipDrawings/curve_0E66AE.dart';
import 'package:liveasy/clipDrawings/curve_46A6DD.dart';
import 'package:sizer/sizer.dart';
import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';

class ThirdPageCurves extends StatelessWidget {
  const ThirdPageCurves({Key? key}) : super(key: key);

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
            painter: Curve46A6DD(),
          ),
          CustomPaint(
            size: Size(
                100.w,
                (38.w * 0.5833333333333334)
                    .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
            painter: Curve0E66AE(),
          ),
        ],
      ),
    );
  }
}
