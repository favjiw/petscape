import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:petscape/screens/home/shop_service_all_screen.dart';
import 'package:petscape/screens/product/treatment_detail_screen.dart';
import 'package:petscape/screens/vet/vets_all_screen.dart';
import 'package:petscape/shared/theme.dart';
import 'package:petscape/widgets/style/boxShadow.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
      },
      child: Scaffold(
        backgroundColor: neutral,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 40.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 280.w,
                          height: 36.h,
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
                                  prefixIcon: Image.asset(
                                    "assets/icons/search-icon.png",
                                    scale: 4,
                                  ),
                                  hintText: "Search Something",
                                  hintStyle: homeSearchHint,
                                  contentPadding: EdgeInsets.only(
                                      left: 13.w, top: 4.h, bottom: 7.h)),
                            ),
                          ),
                        ),
                        InkWell(
                            onTap: () {

                            },
                            child: Image.asset(
                              "assets/icons/bell-icon.png",
                              width: 24.w,
                              height: 24.h,
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 21.h,
                    ),
                    Container(
                      padding:
                          EdgeInsets.only(left: 9.w, top: 19.h, bottom: 16.h),
                      width: 324.w,
                      height: 148.h,
                      decoration: BoxDecoration(
                        color: secondary,
                        borderRadius: BorderRadius.circular(4.r),
                        image: DecorationImage(
                          image: AssetImage('assets/images/dog-paws-bg.png'),
                          scale: 1,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Consult My Pet",
                            style: homeWhiteTitle,
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          Text(
                            "Konsultasikan segala masalah\nhewanmu segera.",
                            style: homeWhiteSubTitle,
                          ),
                          SizedBox(
                            height: 12.h,
                          ),
                          SizedBox(
                            width: 166.w,
                            height: 30.h,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                "Konsultasi Sekarang",
                                style: homeBlackButton,
                              ),
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(whitish),
                                padding: MaterialStateProperty.all<EdgeInsets>(
                                  EdgeInsets.symmetric(
                                      horizontal: 10.w, vertical: 4.h),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Text(
                      "Your Pet",
                      style: homeCategoryTitle,
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      width: 20.w,
                    ),
                    SizedBox(
                      height: 64.h,
                      child: ListView.builder(
                          itemCount: 5,
                          physics: ScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: EdgeInsets.only(right: 16.w),
                              child: InkWell(
                                onTap: () {
                                  //change page to pet profile
                                },
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(100.r),
                                  child: Image.network(
                                    "https://www.wikihow.com/images_en/thumb/f/f0/Make-a-Dog-Love-You-Step-6-Version-4.jpg/v4-1200px-Make-a-Dog-Love-You-Step-6-Version-4.jpg",
                                    width: 64.w,
                                    height: 64.h,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 64.w,
                        height: 64.h,
                        decoration: BoxDecoration(
                            color: whitish,
                            shape: BoxShape.circle,
                            boxShadow: [
                              buildPrimaryBoxShadow(),
                            ]),
                        child: Center(
                          child: Image.asset(
                            'assets/icons/add-round-icon.png',
                            width: 28.w,
                            height: 28.h,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 32.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Shop & Services",
                          style: homeCategoryTitle,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const ShopServiceAll()),
                            );
                          },
                          child: Text(
                            "See All",
                            style: homeAllButton,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            //change page to food
                          },
                          child: SizedBox(
                            width: 60.w,
                            height: 86.h,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 60.w,
                                  height: 60.h,
                                  decoration: BoxDecoration(
                                      color: whitish,
                                      borderRadius: BorderRadius.circular(4.r),
                                      boxShadow: [
                                        buildPrimaryBoxShadow(),
                                      ]),
                                  child: Center(
                                    child: Image.asset(
                                      'assets/icons/dog-food-icon.png',
                                      width: 35.w,
                                      height: 35.h,
                                    ),
                                  ),
                                ),
                                Text(
                                  "Foods",
                                  style: homeShopItemTitle,
                                ),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            //change page to toys
                          },
                          child: SizedBox(
                            width: 60.w,
                            height: 86.h,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 60.w,
                                  height: 60.h,
                                  decoration: BoxDecoration(
                                      color: whitish,
                                      borderRadius: BorderRadius.circular(4.r),
                                      boxShadow: [
                                        buildPrimaryBoxShadow(),
                                      ]),
                                  child: Center(
                                    child: Image.asset(
                                      'assets/icons/bone-icon.png',
                                      width: 35.w,
                                      height: 35.h,
                                    ),
                                  ),
                                ),
                                Text(
                                  "Toys",
                                  style: homeShopItemTitle,
                                ),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            //change page to vets medicine
                          },
                          child: SizedBox(
                            width: 60.w,
                            height: 86.h,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 60.w,
                                  height: 60.h,
                                  decoration: BoxDecoration(
                                      color: whitish,
                                      borderRadius: BorderRadius.circular(4.r),
                                      boxShadow: [
                                        buildPrimaryBoxShadow(),
                                      ]),
                                  child: Center(
                                    child: Image.asset(
                                      'assets/icons/pill-icon.png',
                                      width: 35.w,
                                      height: 35.h,
                                    ),
                                  ),
                                ),
                                Text(
                                  "Medicine",
                                  style: homeShopItemTitle,
                                ),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const TreatmentDetailScreen()),
                            );
                          },
                          child: SizedBox(
                            width: 60.w,
                            height: 86.h,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 60.w,
                                  height: 60.h,
                                  decoration: BoxDecoration(
                                      color: whitish,
                                      borderRadius: BorderRadius.circular(4.r),
                                      boxShadow: [
                                        buildPrimaryBoxShadow(),
                                      ]),
                                  child: Center(
                                    child: Image.asset(
                                      'assets/icons/scissor-icon.png',
                                      width: 35.w,
                                      height: 35.h,
                                    ),
                                  ),
                                ),
                                Text(
                                  "Treatment",
                                  style: homeShopItemTreatmentTitlee,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 32.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Vets Recommendation",
                          style: homeCategoryTitle,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const VetsAllScreen()),
                            );
                          },

                          child: Text(
                            "See All",
                            style: homeAllButton,
                          ),
                        ),
                      ],
                    ),
                    ListView.builder(
                        itemCount: 5,
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) {
                          return InkWell(
                            onTap: () {
                              //change page to vets profile
                            },
                            child: Container(
                              margin: EdgeInsets.only(bottom: 16.h),
                              width: 324.w,
                              height: 80.h,
                              padding: EdgeInsets.only(
                                  top: 10.h,
                                  bottom: 10.h,
                                  left: 8.w,
                                  right: 12.w),
                              decoration: BoxDecoration(
                                  color: whitish,
                                  borderRadius: BorderRadius.circular(4.r),
                                  boxShadow: [
                                    buildPrimaryBoxShadow(),
                                  ]),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(4.r),
                                        child: Image.network(
                                          "https://www.pinnaclecare.com/wp-content/uploads/2017/12/bigstock-African-young-doctor-portrait-28825394.jpg",
                                          width: 54.w,
                                          height: 60.h,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 13.w,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Dr. Naegha Blak",
                                            style: homeDoctorName,
                                          ),
                                          Text(
                                            "Afrika Serikat",
                                            style: homeDoctorAddress,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Image.asset(
                                                "assets/icons/rating-icon.png",
                                                width: 18.w,
                                                height: 18.h,
                                              ),
                                              SizedBox(
                                                width: 4.w,
                                              ),
                                              Text(
                                                "4.5",
                                                style: homeRatingNum,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Image.asset(
                                    'assets/icons/right-arrow-icon.png',
                                    width: 15.w,
                                    height: 15.h,
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
