import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:alt_sms_autofill/alt_sms_autofill.dart';
import 'package:flutter/services.dart';
import 'package:liveasy/page4.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter_session_manager/flutter_session_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';

class ScreenArguments {
  final String phoneNumber;
  ScreenArguments(this.phoneNumber);
}

class PageThird extends StatefulWidget {
  const PageThird({Key? key}) : super(key: key);

  static String id = 'page_third';

  @override
  State<PageThird> createState() => _PageThirdState();
}

class _PageThirdState extends State<PageThird> {
  late String otpText;
  late String phonenumber;
  late String temp;
  FirebaseAuth auth = FirebaseAuth.instance;
  TextEditingController textEditingController1 = TextEditingController();
  String _comingSms = 'Unknown';
  late String verificationid1;
  late int resendtoken1;

  @override
  void initState() {
    super.initState();
    initSmsListener();
    _firebaseAuth();
  }

  Future _firebaseAuth() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    phonenumber = prefs.getString("key")!;
    temp = "+91 $phonenumber";
    try {
      await auth.verifyPhoneNumber(
        phoneNumber: temp,
        verificationCompleted: (PhoneAuthCredential credential) async {
          await auth.signInWithCredential(credential);
          Navigator.pushNamed(context, PageFour.id);
        },
        verificationFailed: (FirebaseAuthException e) {
          if (e.code == 'invalid-phone-number') {
            print('invalid phonenumber');
            print(phonenumber);
            print(temp);
          } else {
            print(e);
          }
        },
        codeSent: (String verificationId, int? resendToken) async {
          verificationid1 = verificationId;
          resendtoken1 = resendToken!;
        },
        timeout: const Duration(seconds: 120),
        codeAutoRetrievalTimeout: (verificationId) {
          print(verificationId);
        },
        //forceResendingToken: resendtoken1,
      );
    } catch (e) {
      print(e);
    }
  }

  Future<void> initSmsListener() async {
    String? comingSms;
    try {
      comingSms = await AltSmsAutofill().listenForSms;
    } on PlatformException {
      comingSms = 'Failed to get Sms.';
    }
    if (!mounted) return;
    setState(() {
      _comingSms = comingSms!;

      textEditingController1.text = _comingSms[0] +
          _comingSms[1] +
          _comingSms[2] +
          _comingSms[3] +
          _comingSms[4] +
          _comingSms[
              5]; //used to set the code in the message to a string and setting it to a textcontroller. message length is 38. so my code is in string index 32-37.
    });
  }

  void signInWithPhoneAuthCredential(
      PhoneAuthCredential phoneAuthCredential) async {
    try {
      final authCredential =
          await auth.signInWithCredential(phoneAuthCredential);
      if (authCredential.user != null) {
        textEditingController1.clear();
        Navigator.pushNamed(context, PageFour.id);
      }
    } on FirebaseAuthException catch (e) {
      print(e);
    }
  }

  @override
  void dispose() {
    textEditingController1.dispose();
    AltSmsAutofill().unregisterListener();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: SessionManager().get("key"),
          builder: (BuildContext context, snapshot) {
            return !snapshot.hasData
                ? const CircularProgressIndicator()
                : Column(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 45,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          style: ButtonStyle(
                            foregroundColor:
                                MaterialStateProperty.resolveWith<Color?>(
                                    (states) {
                              return const Color(0xFF2F3037);
                            }),
                          ),
                          child: const Icon(Icons.arrow_back),
                        ),
                      ),
                      Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          //mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(
                              height: 50,
                            ),
                            const Text(
                              'Verify Phone',
                              style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Code is sent to ${snapshot.data}',
                              style: const TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                            ),
                            const SizedBox(
                              height: 28,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(11.0),
                              child: PinCodeTextField(
                                appContext: context,
                                pastedTextStyle: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Montserrat'),
                                controller: textEditingController1,
                                enableActiveFill: true,
                                pinTheme: PinTheme(
                                  shape: PinCodeFieldShape.box,
                                  borderRadius: BorderRadius.circular(2),
                                  activeFillColor: const Color(0xFF93D2F3),
                                  activeColor: const Color(0xFF93D2F3),
                                  inactiveColor: const Color(0xFF93D2F3),
                                  selectedFillColor: const Color(0xFF93D2F3),
                                  selectedColor: const Color(0xFF93D2F3),
                                  inactiveFillColor: const Color(0xFF93D2F3),
                                  fieldHeight: 48,
                                  fieldWidth: 48,
                                ),
                                keyboardType: TextInputType.phone,
                                length: 6,
                                onChanged: (value) {
                                  setState(() {
                                    otpText = value;
                                  });
                                },
                                onCompleted: (v) async {
                                  setState(() {
                                    otpText;
                                  });
                                  PhoneAuthCredential credential =
                                      PhoneAuthProvider.credential(
                                          smsCode: otpText,
                                          verificationId: verificationid1);
                                  signInWithPhoneAuthCredential(credential);
                                },
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "Didn't receive the code? ",
                                  style: TextStyle(
                                      fontFamily: 'Roboto',
                                      color: Color(0xFF6A6C7B),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                ),
                                TextButton(
                                    onPressed: () {},
                                    child: const Text(
                                      'Request Again',
                                      style: TextStyle(
                                          fontFamily: 'Roboto',
                                          color: Color(0xFF061D28),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400),
                                    )),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                              height: 6.h,
                              width: 91.w,
                              child: ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty
                                        .resolveWith<Color?>((states) {
                                      return const Color(0xFF2E3B62);
                                    }),
                                  ),
                                  onPressed: () async {
                                    Navigator.pushNamed(context, PageFour.id);
                                  },
                                  child: Text(
                                    'VERIFY AND CONTINUE',
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.w700),
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
          }),
    );
  }
}
