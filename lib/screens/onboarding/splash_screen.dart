import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:petscape/shared/theme.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whitish,
      body: Stack(
        children: [
          Positioned(
            top: 200.h,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 127.w),
              child: Image.asset("assets/icons/petscape-logo-img.png", width: 104.55.w, height: 150.h,),
            ),
          ),
          Positioned(
            bottom: 34.h,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 155.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("By", style: splashBy,),
                  Text("ORBIT", style: splashOrbit,)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
