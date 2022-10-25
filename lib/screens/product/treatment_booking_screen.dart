import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:petscape/screens/vet/vets_booking_three_screen.dart';
import 'package:petscape/shared/theme.dart';
import 'package:petscape/widgets/style/boxShadow.dart';


class TreatmentBookingScreen extends StatefulWidget {
  const TreatmentBookingScreen({Key? key}) : super(key: key);

  @override
  State<TreatmentBookingScreen> createState() => _TreatmentBookingScreenState();
}

class _TreatmentBookingScreenState extends State<TreatmentBookingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: neutral,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(72.h),
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
                "Buat Pesanan",
                style: appBarTitle,
              ),
              SizedBox(
                width: 29.w,
                height: 29.h,
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 16.h,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
                  width: 324.w,
                  height: 96.h,
                  decoration: BoxDecoration(
                    color: whitish,
                    borderRadius: BorderRadius.circular(4.r),
                    boxShadow: [
                      buildPrimaryBoxShadow(),
                    ]
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(6.r),
                        child: Image.network("https://www.wikihow.com/images_en/thumb/f/f0/Make-a-Dog-Love-You-Step-6-Version-4.jpg/v4-1200px-Make-a-Dog-Love-You-Step-6-Version-4.jpg", width: 72.w, height: 72.h, fit: BoxFit.cover,),
                      ),
                      SizedBox(width: 12.w,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Dog Care - Suntik Mati", style: treatBookPetName,),
                          SizedBox(height: 4.h,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("Petcuttie", style: treatBookPetLoc,),
                              SizedBox(width: 4.w,),
                              Container(
                                width: 1.w,
                                height: 15.h,
                                color: black.withOpacity(0.60),
                              ),
                              SizedBox(width: 4.w,),
                              Text("Bandung", style: treatBookPetLoc,),
                            ],
                          ),
                          SizedBox(height: 4.h,),
                          Text("Rp56.000", style: treatBookPrice,),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.h,),
                Text("Detail Lokasi", style: treatBookLabel,),
                SizedBox(height: 6.h,),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.r),
                    color: whitish,
                    boxShadow: [
                      buildPrimaryBoxShadow(),
                    ]
                  ),
                  child: Text("Jl. Kliningan No.6 RT 02 RW 05, Bandung, Jawa Barat, Indonesia", style: treatBookLoc,),
                ),
                SizedBox(height: 20.h,),
                Text("Waktu", style: treatBookLabel,),
              ],
            ),
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
        padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 15.h),
        width: 1.sw,
        height: 72.h,
        decoration: BoxDecoration(color: whitish, boxShadow: [
          buildSecondaryBoxShadow(),
        ]),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(4.r),
          child: SizedBox(
            width: 324.w,
            height: 42.h,
            child: ElevatedButton(
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //       builder: (context) => const TreatmentBookingScreen()),
                // );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: primary,
              ),
              child: Text(
                "Proses Pembayaran - Rp56.000",
                style: vetBookOnBtnWhite,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
