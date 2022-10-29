import 'dart:async';
import 'package:sizer/sizer.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:liveasy/page1.dart';
import 'package:liveasy/page2.dart';
import 'package:liveasy/page3.dart';
import 'package:liveasy/page4.dart';

void main() {
  runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
    runApp(const MyApp());
  }, (Object error, StackTrace stack) {
    var myBackend;
    myBackend.sendError(error, stack);
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: PageFirst.id,
        routes: {
          PageFirst.id: (context) => const PageFirst(),
          PageSecond.id: (context) => PageSecond(),
          PageThird.id: (context) => const PageThird(),
          PageFour.id: (context) => const PageFour(),
        },
      );
    });
  }
}
