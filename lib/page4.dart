import 'package:flutter/material.dart';
import 'package:liveasy/clipDrawings/shipper_image.dart';
import 'package:liveasy/clipDrawings/transporter_image.dart';
import 'package:sizer/sizer.dart';

class PageFour extends StatefulWidget {
  const PageFour({Key? key}) : super(key: key);

  static String id = 'page_four';

  @override
  State<PageFour> createState() => _PageFourState();
}

class _PageFourState extends State<PageFour> {
  final List name = ['Shipper', 'Transporter'];
  late String select = name[0];

  @override
  Widget build(BuildContext context) {
    Container addRadioButton(String btnname, String title, Widget drawing) {
      return Container(
        margin: const EdgeInsets.all(15),
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
        ),
        width: 100.w,
        height: 11.4.h,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Radio(
                autofocus: true,
                activeColor: const Color(0xFF2E3B62),
                value: btnname,
                groupValue: select,
                onChanged: (value) {
                  setState(() {
                    select = value!;
                  });
                }),
            Padding(padding: EdgeInsets.all(0.5.w)),
            drawing,
            Padding(padding: EdgeInsets.all(2.w)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w400),
                ),
                Padding(padding: EdgeInsets.all(1.w)),
                Text(
                  '''Lorem ipsum dolor sit amet,
consectetur adipiscing
                ''',
                  textAlign: TextAlign.start,
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w400),
                ),
              ],
            )
          ],
        ),
      );
    }

    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        SizedBox(
          height: 15.h,
        ),
        Text(
          'Please select your profile',
          style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 18.sp,
              fontWeight: FontWeight.w700),
        ),
        SizedBox(
          height: 3.5.h,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            addRadioButton('Shipper', 'Shipper', const ShipperImage()),
            addRadioButton(
                'Transporter', 'Transporter', const TransporterImage()),
          ],
        ),
        SizedBox(
          height: 2.h,
        ),
        SizedBox(
          height: 6.h,
          width: 92.w,
          child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.resolveWith<Color?>((states) {
                  return const Color(0xFF2E3B62);
                }),
              ),
              onPressed: () async {
                //await SessionManager().set("key", phonenumber);
                //Navigator.pushNamed(context, PageThird.id);
              },
              child: Text(
                'CONTINUE',
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w700),
              )),
        ),
      ]),
    );
  }
}
