import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:petscape/screens/vet/vets_booking_screen.dart';
import 'package:petscape/screens/vet/vets_booking_three_screen.dart';
import 'package:petscape/screens/vet/vets_booking_two_screen.dart';
import 'package:petscape/shared/theme.dart';
import 'package:petscape/widgets/style/boxShadow.dart';

class VetsBookingFourScreen extends StatefulWidget {
  const VetsBookingFourScreen({Key? key}) : super(key: key);

  @override
  State<VetsBookingFourScreen> createState() => _VetsBookingFourScreenState();
}

class _VetsBookingFourScreenState extends State<VetsBookingFourScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                "Booking Confirmation",
                style: vetBookTitle,
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                "Step 4/4",
                style: vetBookPart,
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "Doctor Information",
                style: vetBookInputLabel,
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                padding: EdgeInsets.only(top: 12.h, bottom: 12.h, left: 16.w),
                width: 324.w,
                height: 78.h,
                decoration: BoxDecoration(
                    color: whitish,
                    borderRadius: BorderRadius.circular(4.r),
                    boxShadow: [
                      buildPrimaryBoxShadow(),
                    ]),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(100.r),
                        child: Image.network(
                          "https://www.pinnaclecare.com/wp-content/uploads/2017/12/bigstock-African-young-doctor-portrait-28825394.jpg",
                          width: 54.w,
                          height: 54.h,
                          fit: BoxFit.cover,
                        )),
                    SizedBox(width: 12.w,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Dr. Naegha Blak", style: vetBookVetName,),
                        Text("Cat Specialist", style: vetBookVetJob,),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24.w,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Place & Time",
                    style: vetBookInputLabel,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const VetsBookingOneScreen()),
                      );
                    },
                    child: Text(
                      "Edit",
                      style: vetBookEdit,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.h,),
              Container(
                padding: EdgeInsets.only(top: 12.h, bottom: 12.h, left: 16.w),
                width: 324.w,
                height: 74.h,
                decoration: BoxDecoration(
                  color: whitish,
                  borderRadius: BorderRadius.circular(4.r),
                  boxShadow: [
                    buildPrimaryBoxShadow(),
                  ]
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text("In Person: ", style: vetBookLabelPrimary,),
                        Text("Margahayu Raya", style: vetBookPlace,),
                      ],
                    ),
                    Row(
                      children: [
                        Text("Selasa, 20 Agustus | (12:00-13:00)", style: vetBookLabelPrimary,),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Personal Information",
                    style: vetBookInputLabel,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const VetsBookingTwoScreen()),
                      );
                    },
                    child: Text(
                      "Edit",
                      style: vetBookEdit,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.h,),
              Container(
                padding: EdgeInsets.only(top: 12.h, bottom: 12.h, left: 16.w, right: 16.w),
                width: 324.w,
                height: 235.h,
                decoration: BoxDecoration(
                    color: whitish,
                    borderRadius: BorderRadius.circular(4.r),
                    boxShadow: [
                      buildPrimaryBoxShadow(),
                    ]
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Name:", style: vetBookDetLabel,),
                    Text("Muhammad Favian Jiwani", style: vetBookDetValue,),
                    SizedBox(height: 12.h,),
                    Text("Email:", style: vetBookDetLabel,),
                    Text("mfavianj@gmail.com", style: vetBookDetValue,),
                    SizedBox(height: 12.h,),
                    Text("Phone:", style: vetBookDetLabel,),
                    Text("+6282154785548", style: vetBookDetValue,),
                    SizedBox(height: 12.h,),
                    Text("Experience:", style: vetBookDetLabel,),
                    Text("+3 years", style: vetBookDetValue,),
                  ],
                ),
              ),
              SizedBox(height: 24.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Pet Information",
                    style: vetBookInputLabel,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const VetsBookingThreeScreen()),
                      );
                    },
                    child: Text(
                      "Edit",
                      style: vetBookEdit,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.h,),
              Container(
                padding: EdgeInsets.only(top: 12.h, bottom: 12.h, left: 16.w, right: 16.w),
                width: 324.w,
                height: 320.h,
                decoration: BoxDecoration(
                    color: whitish,
                    borderRadius: BorderRadius.circular(4.r),
                    boxShadow: [
                      buildPrimaryBoxShadow(),
                    ]
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Name:", style: vetBookDetLabel,),
                    Text("Mochi", style: vetBookDetValue,),
                    SizedBox(height: 12.h,),
                    Text("Category:", style: vetBookDetLabel,),
                    Text("Cat", style: vetBookDetValue,),
                    SizedBox(height: 12.h,),
                    Text("Years Together:", style: vetBookDetLabel,),
                    Text("+3 years", style: vetBookDetValue,),
                    SizedBox(height: 12.h,),
                    Text("Possible Problem:", style: vetBookDetLabel,),
                    Text("Already Dead, Sorry", style: vetBookDetValue,),
                    SizedBox(height: 12.h,),
                    Text("Detail:", style: vetBookDetLabel,),
                    Text("My cat got flu, maybe because some infectionnnnnnnnnnnnnnnnnnnnnnnnnn", style: vetBookDetValue,),
                  ],
                ),
              ),
              SizedBox(height: 110.h,),
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 9.h),
        width: 1.sw,
        height: 72.h,
        decoration: BoxDecoration(color: whitish, boxShadow: [
          buildSecondaryBoxShadow(),
        ]),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(4.r),
          child: SizedBox(
            width: 324.w,
            height: 54.h,
            child: ElevatedButton(
              onPressed: () {

              },
              style: ElevatedButton.styleFrom(
                backgroundColor: primary,
              ),
              child: Text(
                "Continue",
                style: vetBookOnBtnWhite,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
