import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:petscape/screens/product/treatment_booking_screen.dart';
import 'package:petscape/screens/vet/vets_booking_three_screen.dart';
import 'package:petscape/shared/theme.dart';
import 'package:petscape/widgets/style/boxShadow.dart';

class TreatmentDetailScreen extends StatefulWidget {
  const TreatmentDetailScreen({Key? key}) : super(key: key);

  @override
  State<TreatmentDetailScreen> createState() => _TreatmentDetailScreenState();
}

class _TreatmentDetailScreenState extends State<TreatmentDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whitish,
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
                "Detail Treatment",
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              "https://www.wikihow.com/images_en/thumb/f/f0/Make-a-Dog-Love-You-Step-6-Version-4.jpg/v4-1200px-Make-a-Dog-Love-You-Step-6-Version-4.jpg",
              width: 1.sw,
              height: 290.h,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 16.h,
                  ),
                  Text(
                    "Rp 56.000",
                    style: productDetPrice,
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  Text("Dog Care - Suntik Mati", style: productItemTitle,),
                  SizedBox(
                    height: 8.h,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset("assets/icons/rating-icon.png", width: 20.w, height: 20.h,),
                      SizedBox(width: 6.w,),
                      Text("4.5", style: productItemRatingBlack,),
                      Text("/5", style: productItemRatingBlackGray,),
                      SizedBox(width: 6.w,),
                      Container(
                        width: 1.w,
                        height: 15.h,
                        color: black.withOpacity(0.60),
                      ),
                      SizedBox(width: 6.w,),
                      Text("210", style: productItemRatingBlack,),
                      Text(" Terjual", style: productItemRatingBlackGray,),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.h,),
            Container(
              width: 1.sw,
              height: 1.h,
              color: gray,
            ),
            SizedBox(height: 16.h,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Treatment Description", style: productDescBigTitle,),
                  SizedBox(height: 10.h,),
                  Row(
                    children: [
                      Text("Kategori:", style: productDescSubTitleBlack,),
                      SizedBox(width: 40.w,),
                      Text("Anying", style: productDescSubTitlePrimary,),
                    ],
                  ),
                  SizedBox(height: 12.h,),
                  Row(
                    children: [
                      Text("Toko:", style: productDescSubTitleBlack,),
                      SizedBox(width: 66.w,),
                      Text("Petcuttie", style: productDescSubTitlePrimary,),
                    ],
                  ),
                  SizedBox(height: 12.h,),
                  Row(
                    children: [
                      Text("Lokasi:", style: productDescSubTitleBlack,),
                      SizedBox(width: 56.w,),
                      Text("Bandung", style: productDescSubTitlePrimary,),
                    ],
                  ),
                  SizedBox(height: 12.h,),
                  Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit faucibus amet nullam cras volutpat. Consectetur dignissim lorem condimentum arcu sit. Ridiculus malesuada dolor ultrices semper erat suscipit eget.", style: productDescText,),
                  SizedBox(height: 106.h,)
                ],
              ),
            ),
          ],
        ),
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
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const TreatmentBookingScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: primary,
              ),
              child: Text(
                "Pesan Sekarang - Rp56.000",
                style: vetBookOnBtnWhite,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

