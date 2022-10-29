import 'package:flutter/material.dart';
import 'package:liveasy/clipDrawings/CurvePainter.dart';
import 'package:liveasy/PageCurves/second_page_curves.dart';
import 'package:liveasy/clipDrawings/image_icon.dart';
import 'package:liveasy/page2.dart';
import 'package:sizer/sizer.dart';

class PageFirst extends StatefulWidget {
  const PageFirst({Key? key}) : super(key: key);

  static String id = 'page_first';

  @override
  State<PageFirst> createState() => _PageFirstState();
}

class _PageFirstState extends State<PageFirst> {
  final List<String> items = ['--Select--', 'English', 'Hindi'];
  late String? dropdownvalue = items[0];
  late bool changeDrawings = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 13.h,
          ),
          const ImageGalleryIcon(),
          SizedBox(
            height: 5.h,
          ),
          Text(
            'Please select your Language',
            style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 17.5.sp,
                fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 1.32.h,
          ),
          Text(
            '''You can change the language
              at any time
            ''',
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 13.sp,
              fontWeight: FontWeight.w400,
              color: const Color(0xFF6A6C7B),
            ),
          ),
          SizedBox(
            height: 1.8.h,
          ),
          Container(
            margin: const EdgeInsets.all(15),
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xFF2F3037)),
            ),
            width: 65.w,
            height: 6.h,
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                iconSize: 30,
                isExpanded: true,
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400,
                    fontSize: 15.sp,
                    color: changeDrawings
                        ? Colors.black
                        : const Color(0xFF2F3037)),
                value: dropdownvalue,
                icon: const Icon(
                  Icons.arrow_drop_down,
                ),
                items: items.map((String items) {
                  return DropdownMenuItem(
                      value: items,
                      child: Text(
                        items,
                      ));
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    dropdownvalue = newValue as String;
                    changeDrawings = true;
                  });
                },
              ),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          SizedBox(
            height: 6.h,
            width: 65.w,
            child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.resolveWith<Color?>((states) {
                    return const Color(0xFF2E3B62);
                  }),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, PageSecond.id);
                },
                child: const Text(
                  'NEXT',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 16,
                      fontWeight: FontWeight.w700),
                )),
          ),
          SizedBox(
            height: 26.h,
          ),
          changeDrawings ? const SecondPageCurves() : const CurvePainter(),
        ],
      ),
    );
  }
}
