import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:petscape/screens/product/product_detail_screen.dart';
import 'package:petscape/screens/vet/vets_booking_two_screen.dart';
import 'package:petscape/shared/theme.dart';
import 'package:petscape/widgets/style/boxShadow.dart';

class VetsBookingOneScreen extends StatefulWidget {
  const VetsBookingOneScreen({Key? key}) : super(key: key);

  @override
  State<VetsBookingOneScreen> createState() => _VetsBookingOneScreenState();
}

class _VetsBookingOneScreenState extends State<VetsBookingOneScreen> {
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  "Select Time & Place",
                  style: vetBookTitle,
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  "Step 1/4",
                  style: vetBookPart,
                ),
                SizedBox(
                  height: 24.h,
                ),
                Text(
                  "Place",
                  style: vetBookSubTitle,
                ),
                SizedBox(
                  height: 6.h,
                ),
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(4.r),
                      child: SizedBox(
                        width: 123.w,
                        height: 40.h,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: primary,
                          ),
                          child: Text(
                            "In Person",
                            style: vetBookWhiteOnButton,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 12.w,
                    ),
                    SizedBox(
                      width: 144.w,
                      height: 40.h,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.zero,
                            backgroundColor: Colors.transparent),
                        child: Container(
                          width: 144.w,
                          height: 40.h,
                          decoration: BoxDecoration(
                              color: whitish,
                              borderRadius: BorderRadius.circular(4.r),
                              boxShadow: [
                                buildPrimaryBoxShadow(),
                              ]),
                          child: Center(
                            child: Text(
                              "Online Meet",
                              style: productCategoryBlack,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 32.h,
                ),
                Text(
                  "Time",
                  style: vetBookSubTitle,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 6.h,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(
                  width: 18.w,
                ),
                SizedBox(
                  width: 60.w,
                  height: 80.h,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.zero,
                        backgroundColor: Colors.transparent),
                    child: Container(
                      width: 60.w,
                      height: 80.h,
                      decoration: BoxDecoration(
                        color: primary,
                        borderRadius: BorderRadius.circular(6.r),
                        boxShadow: [buildPrimaryBoxShadow()],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Sel",
                            style: vetBookDayOnPrimary,
                          ),
                          SizedBox(
                            height: 6.h,
                          ),
                          Text(
                            "20",
                            style: vetBookDateOnPrimary,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 100.h,
                  child: ListView.builder(
                      itemCount: 5,
                      physics: ScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        return Row(
                          children: [
                            SizedBox(
                              width: 6.w,
                            ),
                            SizedBox(
                              width: 60.w,
                              height: 80.h,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.zero,
                                    backgroundColor: Colors.transparent),
                                child: Container(
                                  width: 60.w,
                                  height: 80.h,
                                  decoration: BoxDecoration(
                                    color: whitish,
                                    borderRadius: BorderRadius.circular(6.r),
                                    boxShadow: [buildPrimaryBoxShadow()],
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Rab",
                                        style: vetBookDayOnWhite,
                                      ),
                                      SizedBox(
                                        height: 6.h,
                                      ),
                                      Text(
                                        "21",
                                        style: vetBookDateOnWhite,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      }),
                ),
                SizedBox(width: 18.w,),
              ],
            ),
          ),
          SizedBox(height: 20.h,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(width: 18.w,),
                SizedBox(
                  width: 89.w,
                  height: 40.h,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      padding: EdgeInsets.zero
                    ),
                    child: Container(
                      width: 89.w,
                      height: 40.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.r),
                        color: gray,
                        boxShadow: [
                          buildPrimaryBoxShadow(),
                        ]
                      ),
                      child: Center(
                        child: Text("10:00", style: vetBookClockOnGray,),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 8.w,),
                SizedBox(
                  width: 89.w,
                  height: 40.h,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        padding: EdgeInsets.zero
                    ),
                    child: Container(
                      width: 89.w,
                      height: 40.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4.r),
                          color: primary,
                          boxShadow: [
                            buildPrimaryBoxShadow(),
                          ]
                      ),
                      child: Center(
                        child: Text("11:00", style: vetBookClockOnPrimary,),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 60.h,
                  child: ListView.builder(
                      itemCount: 5,
                      physics: ScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        return Row(
                          children: [
                            SizedBox(
                              width: 8.w,
                            ),
                            SizedBox(
                              width: 89.w,
                              height: 40.h,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.transparent,
                                    padding: EdgeInsets.zero
                                ),
                                child: Container(
                                  width: 89.w,
                                  height: 40.h,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4.r),
                                      color: whitish,
                                      boxShadow: [
                                        buildPrimaryBoxShadow(),
                                      ]
                                  ),
                                  child: Center(
                                    child: Text("12:00", style: vetBookClockOnWhite,),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      }),
                ),
                SizedBox(width: 18.w,)
              ],
            ),
          ),
        ],
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
                  MaterialPageRoute(builder: (context) => const VetsBookingTwoScreen()),
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
    );
  }
}
