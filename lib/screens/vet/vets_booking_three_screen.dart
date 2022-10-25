import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:petscape/screens/vet/vets_booking_four_screen.dart';
import 'package:petscape/screens/vet/vets_booking_two_screen.dart';
import 'package:petscape/shared/theme.dart';
import 'package:petscape/widgets/style/boxShadow.dart';

class VetsBookingThreeScreen extends StatefulWidget {
  const VetsBookingThreeScreen({Key? key}) : super(key: key);

  @override
  State<VetsBookingThreeScreen> createState() => _VetsBookingThreeScreenState();
}

class _VetsBookingThreeScreenState extends State<VetsBookingThreeScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
      },
      child: Scaffold(
        backgroundColor: neutral,
        resizeToAvoidBottomInset: true,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(66.h),
          child: Container(
            decoration: BoxDecoration(color: whitish, boxShadow: [
              buildPrimaryBoxShadow(),
            ]),
            padding: EdgeInsets.only(
                top: 20.h, right: 18.w, bottom: 10.h, left: 18.w),
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
          child: Column(
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
                      "Pet Information",
                      style: vetBookTitle,
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Text(
                      "Step 3/4",
                      style: vetBookPart,
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    Text(
                      "Select pet",
                      style: vetBookInputLabel,
                    ),
                    SizedBox(
                      height: 6.h,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 12.w, vertical: 10.h),
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
                          Text(
                            "Select Your Pet",
                            style: vetBookDropdownInput,
                          ),
                          Image.asset(
                            "assets/icons/arrow-down-icon.png",
                            width: 18.w,
                            height: 18.h,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    Text(
                      "Pet Name",
                      style: vetBookInputLabel,
                    ),
                    SizedBox(
                      height: 6.h,
                    ),
                    Container(
                      width: 324.w,
                      height: 42.h,
                      decoration: BoxDecoration(
                          color: whitish,
                          borderRadius: BorderRadius.circular(4.r),
                          boxShadow: [
                            buildPrimaryBoxShadow(),
                          ]),
                      child: Center(
                        child: TextField(
                          style: homeSearchText,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Your pet name",
                              hintStyle: homeSearchHint,
                              contentPadding: EdgeInsets.only(
                                  left: 11.w, top: 11.h, bottom: 10.h)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    Text(
                      "Category",
                      style: vetBookInputLabel,
                    ),
                    SizedBox(
                      height: 6.h,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 12.w, vertical: 10.h),
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
                          Text(
                            "Select Category",
                            style: vetBookDropdownInput,
                          ),
                          Image.asset(
                            "assets/icons/arrow-down-icon.png",
                            width: 18.w,
                            height: 18.h,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    Text(
                      "Years Together",
                      style: vetBookInputLabel,
                    ),
                    SizedBox(
                      height: 6.h,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 12.w, vertical: 10.h),
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
                          Text(
                            "Select Years",
                            style: vetBookDropdownInput,
                          ),
                          Image.asset(
                            "assets/icons/arrow-down-icon.png",
                            width: 18.w,
                            height: 18.h,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Possible Problem ",
                          style: vetBookInputLabel,
                        ),
                        Text(
                          "(can select more than 1)",
                          style: vetBookInputLabelSmall,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 18.w,
                    ),
                    SizedBox(
                      width: 69.w,
                      height: 33.h,
                      child: TextButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(primary),
                            shape:
                                MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24.r),
                              ),
                            )),
                        child: Text(
                          "Flu",
                          style: vetBookOnPrimaryChip,
                        ),
                      ),
                    ),
                    SizedBox(width: 12.w,),
                    SizedBox(
                      width: 111.w,
                      height: 33.h,
                      child: TextButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(primary),
                            shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24.r),
                              ),
                            )),
                        child: Text(
                          "Infection",
                          style: vetBookOnPrimaryChip,
                        ),
                      ),
                    ),
                    SizedBox(width: 12.w,),
                    TextButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          padding: MaterialStateProperty.all(EdgeInsets.zero),
                            backgroundColor: MaterialStateProperty.all(whitish),
                            shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24.r),
                              ),
                            )),
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 6.h),
                          width: 84.w,
                          height: 33.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24.r),
                            color: whitish,
                            boxShadow: [
                              buildPrimaryBoxShadow(),
                            ]
                          ),
                          child: Text(
                            "Itchy",
                            style: vetBookOnWhiteChip,
                          ),
                        ),
                      ),
                    SizedBox(width: 12.w,),
                    TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all(EdgeInsets.zero),
                          backgroundColor: MaterialStateProperty.all(whitish),
                          shape:
                          MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24.r),
                            ),
                          )),
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 6.h),
                        width: 110.w,
                        height: 33.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24.r),
                            color: whitish,
                            boxShadow: [
                              buildPrimaryBoxShadow(),
                            ]
                        ),
                        child: Center(
                          child: Text(
                            "Allergies",
                            style: vetBookOnWhiteChip,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 12.w,),
                    TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all(EdgeInsets.zero),
                          backgroundColor: MaterialStateProperty.all(whitish),
                          shape:
                          MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24.r),
                            ),
                          )),
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 6.h),
                        width: 101.w,
                        height: 33.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24.r),
                            color: whitish,
                            boxShadow: [
                              buildPrimaryBoxShadow(),
                            ]
                        ),
                        child: Text(
                          "Urinary",
                          style: vetBookOnWhiteChip,
                        ),
                      ),
                    ),
                    SizedBox(width: 12.w,),
                    TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all(EdgeInsets.zero),
                          backgroundColor: MaterialStateProperty.all(whitish),
                          shape:
                          MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24.r),
                            ),
                          )),
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 6.h),
                        width: 88.w,
                        height: 33.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24.r),
                            color: whitish,
                            boxShadow: [
                              buildPrimaryBoxShadow(),
                            ]
                        ),
                        child: Text(
                          "Other",
                          style: vetBookOnWhiteChip,
                        ),
                      ),
                    ),
                    SizedBox(width: 18.w,),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 24.h,),
                    Text(
                      "Detail",
                      style: vetBookInputLabel,
                    ),
                    SizedBox(height: 6.h,),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      width: 324.w,
                      height: 89.h,
                      decoration: BoxDecoration(
                          color: whitish,
                          borderRadius: BorderRadius.circular(4.r),
                          boxShadow: [
                            buildPrimaryBoxShadow(),
                          ]),
                      child: Center(
                        child: TextFormField(
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(68),
                          ],
                          keyboardType: TextInputType.multiline,
                          maxLines: 3,
                          style: homeSearchText,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Input detail here",
                              hintStyle: homeSearchHint,
                              contentPadding: EdgeInsets.only(
                                  left: 11.w, top: 11.h, bottom: 10.h)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 110.h,
              ),
            ],
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const VetsBookingFourScreen()),
                  );
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
      ),
    );
  }
}
