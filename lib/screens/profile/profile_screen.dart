import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:petscape/shared/theme.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whitish,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 34.h,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.w),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(100.r),
                        child: Image.network(
                          "https://www.pinnaclecare.com/wp-content/uploads/2017/12/bigstock-African-young-doctor-portrait-28825394.jpg",
                          width: 64.w,
                          height: 64.h,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: 12.w,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 225.w,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: FittedBox(
                                  fit: BoxFit.scaleDown,
                                  child: Text("Muhammad Favian Jiwani", style: profileName)),
                            ),
                          ),
                          SizedBox(
                            width: 225.w,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: FittedBox(
                                  fit: BoxFit.scaleDown,
                                  child: Text("mfavianj@gmail.com", style: profileEmail)),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.h,),
            Container(
              width: 1.sw,
              height: 4.h,
              color: HexColor('#EAEAEA'),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 24.h,),
                  Text("Akun", style: profileItemLabel,),
                  SizedBox(height: 18.h),
                  InkWell(
                    onTap: () {},
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("assets/icons/edit-icon.png", width: 24.w, height: 24.h,),
                        SizedBox(
                          width: 288.w,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Ubah Profile", style: profileItemName,),
                                  Image.asset("assets/icons/arrow-right-gray-icon.png", width: 20.w, height: 20.h,),
                                ],
                              ),
                              SizedBox(height: 16.h,),
                              Container(
                                width: 288.w,
                                height: 1.h,
                                color: HexColor('#E5E5E5'),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 24.h,),
                  InkWell(
                    onTap: () {},
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("assets/icons/paw-icon.png", width: 24.w, height: 24.h,),
                        SizedBox(
                          width: 288.w,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Peliharaanmu", style: profileItemName,),
                                  Image.asset("assets/icons/arrow-right-gray-icon.png", width: 20.w, height: 20.h,),
                                ],
                              ),
                              SizedBox(height: 16.h,),
                              Container(
                                width: 288.w,
                                height: 1.h,
                                color: HexColor('#E5E5E5'),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 24.h,),
                  Text("Bantuan", style: profileItemLabel,),
                  SizedBox(height: 18.h),
                  InkWell(
                    onTap: () {},
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("assets/icons/contact-icon.png", width: 24.w, height: 24.h,),
                        SizedBox(
                          width: 288.w,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Kontak", style: profileItemName,),
                                  Image.asset("assets/icons/arrow-right-gray-icon.png", width: 20.w, height: 20.h,),
                                ],
                              ),
                              SizedBox(height: 16.h,),
                              Container(
                                width: 288.w,
                                height: 1.h,
                                color: HexColor('#E5E5E5'),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 18.h),
                  InkWell(
                    onTap: () {},
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("assets/icons/report-icon.png", width: 24.w, height: 24.h,),
                        SizedBox(
                          width: 288.w,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Laporkan Masalah", style: profileItemName,),
                                  Image.asset("assets/icons/arrow-right-gray-icon.png", width: 20.w, height: 20.h,),
                                ],
                              ),
                              SizedBox(height: 16.h,),
                              Container(
                                width: 288.w,
                                height: 1.h,
                                color: HexColor('#E5E5E5'),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 24.h,),
                  Text("Lainnya", style: profileItemLabel,),
                  SizedBox(height: 18.h),
                  InkWell(
                    onTap: () {},
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("assets/icons/star-black-icon.png", width: 24.w, height: 24.h,),
                        SizedBox(
                          width: 288.w,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Beri Rating", style: profileItemName,),
                                  Image.asset("assets/icons/arrow-right-gray-icon.png", width: 20.w, height: 20.h,),
                                ],
                              ),
                              SizedBox(height: 16.h,),
                              Container(
                                width: 288.w,
                                height: 1.h,
                                color: HexColor('#E5E5E5'),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 18.h),
                  InkWell(
                    onTap: () {},
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("assets/icons/order-icon.png", width: 24.w, height: 24.h,),
                        SizedBox(
                          width: 288.w,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Ketentuan Layanan", style: profileItemName,),
                                  Image.asset("assets/icons/arrow-right-gray-icon.png", width: 20.w, height: 20.h,),
                                ],
                              ),
                              SizedBox(height: 16.h,),
                              Container(
                                width: 288.w,
                                height: 1.h,
                                color: HexColor('#E5E5E5'),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 18.h),
                  InkWell(
                    onTap: () {},
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("assets/icons/shield-icon.png", width: 24.w, height: 24.h,),
                        SizedBox(
                          width: 288.w,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Kebijakan Privasi", style: profileItemName,),
                                  Image.asset("assets/icons/arrow-right-gray-icon.png", width: 20.w, height: 20.h,),
                                ],
                              ),
                              SizedBox(height: 16.h,),
                              Container(
                                width: 288.w,
                                height: 1.h,
                                color: HexColor('#E5E5E5'),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 18.h),
                  InkWell(
                    onTap: () {},
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("assets/icons/logout-icon.png", width: 24.w, height: 24.h,),
                        SizedBox(
                          width: 288.w,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Keluar", style: profileItemNamePrimary,),
                                  Image.asset("assets/icons/arrow-right-primary-icon.png", width: 20.w, height: 20.h,),
                                ],
                              ),
                              SizedBox(height: 16.h,),
                              Container(
                                width: 288.w,
                                height: 1.h,
                                color: HexColor('#E5E5E5'),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30.h,),
          ],
        ),
      ),
    );
  }
}
