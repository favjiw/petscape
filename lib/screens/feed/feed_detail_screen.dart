import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:petscape/screens/feed/feed_donation_screen.dart';
import 'package:petscape/shared/theme.dart';
import 'package:petscape/widgets/style/boxShadow.dart';
import 'package:percent_indicator/percent_indicator.dart';


class FeedDetailScreen extends StatefulWidget {
  const FeedDetailScreen({Key? key}) : super(key: key);

  @override
  State<FeedDetailScreen> createState() => _FeedDetailScreenState();
}

class _FeedDetailScreenState extends State<FeedDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whitish,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(72.h),
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
                "Post Detail",
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
              SizedBox(height: 24.h,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(100.r),
                        child: Image.network(
                          "https://www.pinnaclecare.com/wp-content/uploads/2017/12/bigstock-African-young-doctor-portrait-28825394.jpg",
                          width: 46.w,
                          height: 46.h,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: 12.w,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Jennifer Turner", style: feedPostName,),
                          Text("41m ago", style: feedPostTime,),
                        ],
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset('assets/icons/option-dot-icon.png', width: 20.w, height: 20.h,),
                  ),
                ],
              ),
              SizedBox(height: 24.h,),
              ClipRRect(
                borderRadius: BorderRadius.circular(4.r),
                child: SizedBox(
                  width: 87.w,
                  height: 25.h,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: secondary,
                    ),
                    child: Text(
                      "Donation",
                      style: feedDonationSmallBtn,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 8.h,),
              Text("Anjing terlantar di dekat pasar, kekurangan gizi", style: feedDetailTitle,),
              SizedBox(height: 10.h,),
              Image.network("https://img.indonesiatoday.co.id/photos/post/1660446477-anjing-golden-retriever-yang-kurus-dan-tinggal-tulang-menunggu-pemiliknya-yang-telah-meninggalkannya.jpg", width: 328.w, height: 200.h, fit: BoxFit.cover,),
              SizedBox(height: 10.h,),
              Center(
                child: LinearPercentIndicator(
                  padding: EdgeInsets.zero,
                  barRadius: Radius.circular(6.r),
                  animation: true,
                  animationDuration: 1000,
                  width: 323.w,
                  lineHeight: 10.h,
                  percent: 0.85,
                  progressColor: primary,
                ),
              ),
              SizedBox(height: 8.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Target: Rp2.000.000", style: feedDonationMoney,),
                  Text("85%", style: feedDonationPercent,),
                ],
              ),
              SizedBox(height: 18.h,),
              Container(
                width: 1.sw,
                height: 1.h,
                color: gray,
              ),
              SizedBox(height: 18.h,),
              Text("About Donation", style: feedDetailSubTitle,),
              SizedBox(height: 8.h,),
              Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eget enim sit etiam suspendisse quam pellentesque eu. Elit in hendrerit pharetra viverra id donec ullamcorper posuere feugiat.", style: feedDetailDesc,),
              SizedBox(height: 100.h,),
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
                  MaterialPageRoute(builder: (context) => const FeedDonationScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: primary,
              ),
              child: Text("Donasi", style: vetBookOnBtnWhite,),
            ),
          ),
        ),
      ),
    );
  }
}
