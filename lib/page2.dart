import 'package:flutter/material.dart';
import 'package:flutter_session_manager/flutter_session_manager.dart';
import 'package:liveasy/PageCurves/third_page_curves.dart';
import 'package:liveasy/page3.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';

class PageSecond extends StatefulWidget {
  PageSecond({Key? key}) : super(key: key);

  static String id = 'page_second';

  @override
  State<PageSecond> createState() => _PageSecondState();
}

class _PageSecondState extends State<PageSecond> {
  final phonenumberTextController = TextEditingController();

  late String phonenumber;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ButtonStyle(
                foregroundColor:
                    MaterialStateProperty.resolveWith<Color?>((states) {
                  return const Color(0xFF2F3037);
                }),
              ),
              child: const Icon(Icons.close),
            ),
          ),
          SizedBox(
            height: 11.h,
          ),
          Text(
            'Please enter your mobile number',
            style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 17.5.sp,
                fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 1.32.h,
          ),
          Text(
            '''You'll receive a 6 digit code
            to verify next.
            ''',
            style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 13.sp,
                fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: 2.h,
          ),
          Container(
            margin: const EdgeInsets.all(15),
            padding: const EdgeInsets.all(3),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
            ),
            height: 6.h,
            width: 91.w,
            child: Row(
              children: [
                Padding(padding: EdgeInsets.all(1.w)),
                Image.asset(
                  'images/Indiaflag.png',
                  scale: 2.w,
                ),
                Padding(padding: EdgeInsets.all(2.w)),
                Text(
                  '+91   -',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFF2F3037),
                  ),
                ),
                Padding(padding: EdgeInsets.all(2.w)),
                Expanded(
                  child: TextField(
                    controller: phonenumberTextController,
                    keyboardType: TextInputType.phone,
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w700,
                    ),
                    onChanged: (value) {
                      phonenumber = value;
                    },
                    decoration: const InputDecoration(
                      hintText: 'Mobile Number',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 6.h,
            width: 91.w,
            child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.resolveWith<Color?>((states) {
                    return const Color(0xFF2E3B62);
                  }),
                ),
                onPressed: () async {
                  phonenumberTextController.clear();
                  await SessionManager().set("key", phonenumber);
                  final prefs = await SharedPreferences.getInstance();
                  await prefs.setString("key", phonenumber);
                  Navigator.pushNamed(context, PageThird.id,
                      arguments: ScreenArguments(phonenumber));
                },
                child: Text(
                  'CONTINUE',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w700),
                )),
          ),
          SizedBox(
            height: 32.h,
          ),
          const ThirdPageCurves(),
        ],
      ),
    );
  }
}
