import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:onboarding_login/onBoarding_screen.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: ((context, child) => MaterialApp(
            debugShowCheckedModeBanner: false,
            home: OnBoardingScreen(),
          )),
    );
  }
}
