import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:petscape/shared/theme.dart';
import 'package:petscape/widgets/style/boxShadow.dart';
import 'package:percent_indicator/percent_indicator.dart';

class FeedScreen extends StatefulWidget {
  const FeedScreen({Key? key}) : super(key: key);

  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: neutral,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 33.h,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 18.w),
                  child: Text(
                    "Daily Feed",
                    style: feedDaily,
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                SizedBox(
                  height: 55.h,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 18.w,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(4.r),
                          child: SizedBox(
                            width: 60.w,
                            height: 36.h,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: secondary,
                              ),
                              child: Text(
                                "All",
                                style: productCategoryWhite,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 16.w,
                        ),
                        SizedBox(
                          width: 81.w,
                          height: 36.h,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.zero,
                                backgroundColor: Colors.transparent),
                            child: Container(
                              width: 81.w,
                              height: 36.h,
                              decoration: BoxDecoration(
                                  color: whitish,
                                  borderRadius: BorderRadius.circular(4.r),
                                  boxShadow: [
                                    buildPrimaryBoxShadow(),
                                  ]),
                              child: Center(
                                child: Text(
                                  "Dog",
                                  style: productCategoryBlack,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 16.w,
                        ),
                        SizedBox(
                          width: 78.w,
                          height: 36.h,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.zero,
                                backgroundColor: Colors.transparent),
                            child: Container(
                              width: 78.w,
                              height: 36.h,
                              decoration: BoxDecoration(
                                  color: whitish,
                                  borderRadius: BorderRadius.circular(4.r),
                                  boxShadow: [
                                    buildPrimaryBoxShadow(),
                                  ]),
                              child: Center(
                                child: Text(
                                  "Cat",
                                  style: productCategoryBlack,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 16.w,
                        ),
                        SizedBox(
                          width: 114.w,
                          height: 36.h,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.zero,
                                backgroundColor: Colors.transparent),
                            child: Container(
                              width: 114.w,
                              height: 36.h,
                              decoration: BoxDecoration(
                                  color: whitish,
                                  borderRadius: BorderRadius.circular(4.r),
                                  boxShadow: [
                                    buildPrimaryBoxShadow(),
                                  ]),
                              child: Center(
                                child: Text(
                                  "Donation",
                                  style: productCategoryBlack,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 16.w,
                        ),
                        SizedBox(
                          width: 114.w,
                          height: 36.h,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.zero,
                                backgroundColor: Colors.transparent),
                            child: Container(
                              width: 114.w,
                              height: 36.h,
                              decoration: BoxDecoration(
                                  color: whitish,
                                  borderRadius: BorderRadius.circular(4.r),
                                  boxShadow: [
                                    buildPrimaryBoxShadow(),
                                  ]),
                              child: Center(
                                child: Text(
                                  "Adoption",
                                  style: productCategoryBlack,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 18.w,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 11.w, vertical: 10.h),
                    width: 329.w,
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
                        SizedBox(height: 8.h,),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
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
                            SizedBox(width: 8.w),
                            Flexible(child: Text("Anjing kurus banget", style: feedCaption,)),
                          ],
                        ),
                        SizedBox(height: 8.h,),
                        Image.network("https://img.indonesiatoday.co.id/photos/post/1660446477-anjing-golden-retriever-yang-kurus-dan-tinggal-tulang-menunggu-pemiliknya-yang-telah-meninggalkannya.jpg", width: 309.w, height: 200.h, fit: BoxFit.cover,),
                        SizedBox(height: 8.h,),
                        Center(
                          child: LinearPercentIndicator(
                            padding: EdgeInsets.zero,
                            barRadius: Radius.circular(6.r),
                            animation: true,
                            animationDuration: 1000,
                            width: 300.w,
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
                      ],
                    ),
                  ),
                  SizedBox(height: 20.h,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 11.w, vertical: 10.h),
                    width: 329.w,
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
                        SizedBox(height: 8.h,),
                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dolor, aliquam venenatis loooossss morenos", style: feedCaption, maxLines: 2, overflow: TextOverflow.ellipsis),
                        SizedBox(height: 8.h,),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            IconButton(onPressed: () {}, icon: Image.asset("assets/icons/love-unselected-icon.png", width: 25.w, height: 25.h,),),
                            Text("12k", style: feedCounter,),
                            SizedBox(width: 32.w,),
                            IconButton(onPressed: () {}, icon: Image.asset("assets/icons/comment-icon.png", width: 25.w, height: 25.h,),),
                            Text("300", style: feedCounter,),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.h,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 11.w, vertical: 10.h),
                    width: 329.w,
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
                                    Text("Jeremiah K.", style: feedPostName,),
                                    Text("1h ago", style: feedPostTime,),
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
                        SizedBox(height: 8.h,),
                        Text("Tabby the cat", style: feedCaption, maxLines: 2, overflow: TextOverflow.ellipsis),
                        SizedBox(height: 8.h,),
                        Image.network("https://cdns.diadona.co.id/diadona.id/resized/640x320/news/2021/11/12/52877/265-nama-kucing-lucu-bikin-gemas-selalu-diingat-dan-ngangenin-211112b.jpg", width: 309.w, height: 200.h, fit: BoxFit.cover,),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            IconButton(onPressed: () {}, icon: Image.asset("assets/icons/love-unselected-icon.png", width: 25.w, height: 25.h,),),
                            Text("22k", style: feedCounter,),
                            SizedBox(width: 32.w,),
                            IconButton(onPressed: () {}, icon: Image.asset("assets/icons/comment-icon.png", width: 25.w, height: 25.h,),),
                            Text("1k", style: feedCounter,),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.h,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 11.w, vertical: 10.h),
                    width: 329.w,
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
                                    Text("Tim Sadie", style: feedPostName,),
                                    Text("4h ago", style: feedPostTime,),
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
                        SizedBox(height: 8.h,),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
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
                                    "Adoption",
                                    style: feedDonationSmallBtn,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 8.w),
                            Flexible(child: Text("Open Adoption", style: feedCaption,)),
                          ],
                        ),
                        SizedBox(height: 8.h,),
                        Image.network("https://cdns.diadona.co.id/diadona.id/resized/640x320/news/2021/11/12/52877/265-nama-kucing-lucu-bikin-gemas-selalu-diingat-dan-ngangenin-211112b.jpg", width: 309.w, height: 200.h, fit: BoxFit.cover,),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            IconButton(onPressed: () {}, icon: Image.asset("assets/icons/love-unselected-icon.png", width: 25.w, height: 25.h,),),
                            Text("41k", style: feedCounter,),
                            SizedBox(width: 32.w,),
                            IconButton(onPressed: () {}, icon: Image.asset("assets/icons/comment-icon.png", width: 25.w, height: 25.h,),),
                            Text("2.3k", style: feedCounter,),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.h,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
