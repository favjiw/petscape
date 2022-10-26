import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:petscape/shared/theme.dart';
import 'package:petscape/widgets/style/boxShadow.dart';

class PetProfileScreen extends StatefulWidget {
  const PetProfileScreen({Key? key}) : super(key: key);

  @override
  State<PetProfileScreen> createState() => _PetProfileScreenState();
}

class _PetProfileScreenState extends State<PetProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: neutral,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(66.h),
        child: Container(
          decoration: BoxDecoration(
              color: whitish,
              boxShadow: [
                buildPrimaryBoxShadow(),
              ]
          ),
          padding: EdgeInsets.only(
              top: 20.h,
              right: 18.w,
              bottom: 10.h,
              left: 18.w
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Image.asset("assets/icons/arrow-left-icon.png"),
              ),
              Text(
                "Pet Details",
                style: appBarTitle,
              ),
              IconButton(
                onPressed: () {
                  print("print");
                },
                icon: Image.asset("assets/icons/pencil-icon.png", scale: 4,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
