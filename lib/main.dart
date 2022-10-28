import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:petscape/screens/feed/feed_screen.dart';
import 'package:petscape/screens/home/home_screen.dart';
import 'package:petscape/screens/onboarding/onboarding_screen.dart';
import 'package:petscape/screens/onboarding/splash_screen.dart';
import 'package:petscape/screens/order/order_screen.dart';
import 'package:petscape/screens/product/product_detail_screen.dart';
import 'package:petscape/screens/profile/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 640),
        builder: (context, child) {
          return const MaterialApp(
            debugShowCheckedModeBanner: false,
            home: OnBoardingScreen(),
          );
        }
    );
  }
}
