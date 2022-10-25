import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:petscape/screens/vet/vets_booking_three_screen.dart';
import 'package:petscape/shared/theme.dart';
import 'package:petscape/widgets/style/boxShadow.dart';

class VetsBookingTwoScreen extends StatefulWidget {
  const VetsBookingTwoScreen({Key? key}) : super(key: key);

  @override
  State<VetsBookingTwoScreen> createState() => _VetsBookingTwoScreenState();
}

class _VetsBookingTwoScreenState extends State<VetsBookingTwoScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: neutral,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(66.h),
          child: Container(
            decoration: BoxDecoration(color: whitish, boxShadow: [
              buildPrimaryBoxShadow(),
            ]),
            padding:
            EdgeInsets.only(top: 20.h, right: 18.w, bottom: 10.h, left: 18.w),
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
                  "Booking Appointment",
                  style: appBarTitle,
                ),
                Container(
                  width: 29.w,
                  height: 29.h,
                  color: Colors.transparent,
                ),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  "Personal Information",
                  style: vetBookTitle,
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  "Step 2/4",
                  style: vetBookPart,
                ),
                SizedBox(
                  height: 24.h,
                ),
                Text("Name", style: vetBookInputLabel,),
                SizedBox(height: 6.h,),
                Container(
                  width: 324.w,
                  height: 42.h,
                  decoration: BoxDecoration(
                    color: whitish,
                    borderRadius: BorderRadius.circular(4.r),
                    boxShadow: [
                      buildPrimaryBoxShadow(),
                    ]
                  ),
                  child: Center(
                    child: TextField(
                      style: homeSearchText,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Your Name",
                          hintStyle: homeSearchHint,
                          contentPadding: EdgeInsets.only(
                              left: 11.w, top: 11.h, bottom: 10.h)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text("Email Address", style: vetBookInputLabel,),
                SizedBox(height: 6.h,),
                Container(
                  width: 324.w,
                  height: 42.h,
                  decoration: BoxDecoration(
                      color: whitish,
                      borderRadius: BorderRadius.circular(4.r),
                      boxShadow: [
                        buildPrimaryBoxShadow(),
                      ]
                  ),
                  child: Center(
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      style: homeSearchText,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "User@gmail.com",
                          hintStyle: homeSearchHint,
                          contentPadding: EdgeInsets.only(
                              left: 11.w, top: 11.h, bottom: 10.h)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                Text("Phone Number", style: vetBookInputLabel,),
                SizedBox(height: 6.h,),
                Container(
                  width: 324.w,
                  height: 42.h,
                  decoration: BoxDecoration(
                      color: whitish,
                      borderRadius: BorderRadius.circular(4.r),
                      boxShadow: [
                        buildPrimaryBoxShadow(),
                      ]
                  ),
                  child: Center(
                    child: TextField(
                      keyboardType: TextInputType.number,
                      style: homeSearchText,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "+62",
                          hintStyle: homeSearchHint,
                          contentPadding: EdgeInsets.only(
                              left: 11.w, top: 11.h, bottom: 10.h)),
                    ),
                  ),
                ),
                SizedBox(height: 24.h,),
                Text("Experience with pet", style: vetBookInputLabel,),
                SizedBox(height: 6.h,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
                  width: 324.w,
                  height: 42.h,
                  decoration: BoxDecoration(
                      color: whitish,
                      borderRadius: BorderRadius.circular(4.r),
                      boxShadow: [
                        buildPrimaryBoxShadow(),
                      ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Select Years", style: vetBookDropdownInput,),
                      Image.asset("assets/icons/arrow-down-icon.png", width: 18.w, height: 18.h,),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomSheet: Container(
          padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 9.h),
          width: 1.sw,
          height: 72.h,
          decoration: BoxDecoration(
              color: whitish,
              boxShadow: [
                buildSecondaryBoxShadow(),
              ]
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(4.r),
            child: SizedBox(
              width: 324.w,
              height: 54.h,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const VetsBookingThreeScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: primary,
                ),
                child: Text("Continue", style: vetBookOnBtnWhite,),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

