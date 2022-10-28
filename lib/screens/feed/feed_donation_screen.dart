import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:petscape/shared/theme.dart';
import 'package:petscape/widgets/style/boxShadow.dart';

class FeedDonationScreen extends StatefulWidget {
  const FeedDonationScreen({Key? key}) : super(key: key);

  @override
  State<FeedDonationScreen> createState() => _FeedDonationScreenState();
}

class _FeedDonationScreenState extends State<FeedDonationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: neutral,
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
                "Donasi",
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
              Container(
                padding: EdgeInsets.all(12),
                width: 328.w,
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
                    Image.network("https://img.indonesiatoday.co.id/photos/post/1660446477-anjing-golden-retriever-yang-kurus-dan-tinggal-tulang-menunggu-pemiliknya-yang-telah-meninggalkannya.jpg", width: 80.w, height: 64.h, fit: BoxFit.cover,),
                    SizedBox(width: 10.w,),
                    Flexible(child: Text("Anjing terlantar di dekat pasar, kekurangan gizi", style: feedCaption, maxLines: 2, overflow: TextOverflow.ellipsis,)),
                  ],
                ),
              ),
              SizedBox(height: 32.h,),
              Text("Pilih Jumlah", style: feedDonationLabel,),
              SizedBox(height: 10.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      width: 159.w,
                      height: 54.h,
                      decoration: BoxDecoration(
                          color: whitish,
                          borderRadius: BorderRadius.circular(4.r),
                          boxShadow: [
                            buildPrimaryBoxShadow(),
                          ]
                      ),
                      child: Center(child: Text("Rp 10.000", style: feedDonationMoneyItem,)),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      width: 159.w,
                      height: 54.h,
                      decoration: BoxDecoration(
                          color: whitish,
                          borderRadius: BorderRadius.circular(4.r),
                          boxShadow: [
                            buildPrimaryBoxShadow(),
                          ]
                      ),
                      child: Center(child: Text("Rp 20.000", style: feedDonationMoneyItem,)),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      width: 159.w,
                      height: 54.h,
                      decoration: BoxDecoration(
                          color: whitish,
                          borderRadius: BorderRadius.circular(4.r),
                          boxShadow: [
                            buildPrimaryBoxShadow(),
                          ]
                      ),
                      child: Center(child: Text("Rp 50.000", style: feedDonationMoneyItem,)),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      width: 159.w,
                      height: 54.h,
                      decoration: BoxDecoration(
                          color: whitish,
                          borderRadius: BorderRadius.circular(4.r),
                          boxShadow: [
                            buildPrimaryBoxShadow(),
                          ]
                      ),
                      child: Center(child: Text("Rp 100.000", style: feedDonationMoneyItem,)),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 132.w,
                    height: 1.h,
                    color: black.withOpacity(0.15),
                  ),
                  Text("atau", style: homeSearchHint,),
                  Container(
                    width: 132.w,
                    height: 1.h,
                    color: black.withOpacity(0.15),
                  ),
                ],
              ),
              SizedBox(height: 11.h,),
              Stack(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    width: 328.w,
                    height: 52.h,
                    decoration: BoxDecoration(
                        color: whitish,
                        borderRadius: BorderRadius.circular(4.r),
                        boxShadow: [
                          buildPrimaryBoxShadow(),
                        ]),
                  ),
                  Center(
                    child: TextFormField(
                      validator: (value){
                        if(value == null || value.isEmpty){
                          return 'Harap isi';
                        }
                        return null;
                      },
                      keyboardType: TextInputType.number,
                      maxLines: 3,
                      style: homeSearchText,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Masukkan Jumlah",
                          hintStyle: homeSearchHint,
                          contentPadding: EdgeInsets.only(
                              left: 11.w, top: 11.h, bottom: 10.h)),
                    ),
                  ),
                ],
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
                  MaterialPageRoute(builder: (context) => const FeedDonationScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: primary,
              ),
              child: Text("Konfirmasi & Bayar", style: vetBookOnBtnWhite,),
            ),
          ),
        ),
      ),
    );
  }
}


