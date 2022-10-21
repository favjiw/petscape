import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:petscape/screens/product/food_item_screen.dart';
import 'package:petscape/screens/product/product_item_screen.dart';
import 'package:petscape/shared/theme.dart';
import 'package:petscape/widgets/style/boxShadow.dart';

class ShopServiceAll extends StatefulWidget {
  const ShopServiceAll({Key? key}) : super(key: key);

  @override
  State<ShopServiceAll> createState() => _ShopServiceAllState();
}

class _ShopServiceAllState extends State<ShopServiceAll> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: neutral,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(66.h),
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
                "Shop & Services",
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
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.w),
        child: Column(
          children: [
            SizedBox(
              height: 24.h,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FoodItemScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                  minimumSize: Size.zero, // Set this
                  padding: EdgeInsets.zero, // and this
                  backgroundColor: Colors.transparent
              ),
              child: Container(
                width: 324.w,
                height: 72.h,
                padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 12.h),
                decoration: BoxDecoration(
                    color: whitish,
                    borderRadius: BorderRadius.circular(4.r),
                    boxShadow: [buildPrimaryBoxShadow()]),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 48.w,
                      height: 48.h,
                      decoration: BoxDecoration(
                        color: HexColor('#FFF4DC'),
                        borderRadius: BorderRadius.circular(4.r),
                      ),
                      child: Center(
                        child: Image.asset(
                          "assets/icons/dog-food-icon.png",
                          width: 30.w,
                          height: 30.h,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 12.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Food",
                          style: shsvallItemTitle,
                        ),
                        Text(
                          "Find food for your pet",
                          style: shsvallItemSubTitle,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProductItemScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                  minimumSize: Size.zero, // Set this
                  padding: EdgeInsets.zero, // and this
                  backgroundColor: Colors.transparent
              ),
              child: Container(
                width: 324.w,
                height: 72.h,
                padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 12.h),
                decoration: BoxDecoration(
                    color: whitish,
                    borderRadius: BorderRadius.circular(4.r),
                    boxShadow: [buildPrimaryBoxShadow()]),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 48.w,
                      height: 48.h,
                      decoration: BoxDecoration(
                        color: HexColor('#DCE8FF'),
                        borderRadius: BorderRadius.circular(4.r),
                      ),
                      child: Center(
                        child: Image.asset(
                          "assets/icons/bone-icon.png",
                          width: 30.w,
                          height: 30.h,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 12.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Toys",
                          style: shsvallItemTitle,
                        ),
                        Text(
                          "Make your pet happy with toy",
                          style: shsvallItemSubTitle,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                minimumSize: Size.zero, // Set this
                padding: EdgeInsets.zero, // and this
                backgroundColor: Colors.transparent
              ),
              child: Container(
                width: 324.w,
                height: 72.h,
                padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 12.h),
                decoration: BoxDecoration(
                    color: whitish,
                    borderRadius: BorderRadius.circular(4.r),
                    boxShadow: [buildPrimaryBoxShadow()]),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 48.w,
                      height: 48.h,
                      decoration: BoxDecoration(
                        color: HexColor('#FFE2DC'),
                        borderRadius: BorderRadius.circular(4.r),
                      ),
                      child: Center(
                        child: Image.asset(
                          "assets/icons/pill-icon.png",
                          width: 30.w,
                          height: 30.h,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 12.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Medicine",
                          style: shsvallItemTitle,
                        ),
                        Text(
                          "Buy medicine from nearest shop",
                          style: shsvallItemSubTitle,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  minimumSize: Size.zero, // Set this
                  padding: EdgeInsets.zero, // and this
                  backgroundColor: Colors.transparent
              ),
              child: Container(
                width: 324.w,
                height: 72.h,
                padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 12.h),
                decoration: BoxDecoration(
                    color: whitish,
                    borderRadius: BorderRadius.circular(4.r),
                    boxShadow: [buildPrimaryBoxShadow()]),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 48.w,
                      height: 48.h,
                      decoration: BoxDecoration(
                        color: HexColor('#DDFFDC'),
                        borderRadius: BorderRadius.circular(4.r),
                      ),
                      child: Center(
                        child: Image.asset(
                          "assets/icons/scissor-icon.png",
                          width: 30.w,
                          height: 30.h,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 12.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Treatment",
                          style: shsvallItemTitle,
                        ),
                        Text(
                          "Get the best treatment for your pet",
                          style: shsvallItemSubTitle,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  minimumSize: Size.zero, // Set this
                  padding: EdgeInsets.zero, // and this
                  backgroundColor: Colors.transparent
              ),
              child: Container(
                width: 324.w,
                height: 72.h,
                padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 12.h),
                decoration: BoxDecoration(
                    color: whitish,
                    borderRadius: BorderRadius.circular(4.r),
                    boxShadow: [buildPrimaryBoxShadow()]),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 48.w,
                      height: 48.h,
                      decoration: BoxDecoration(
                        color: HexColor('#FADCFF'),
                        borderRadius: BorderRadius.circular(4.r),
                      ),
                      child: Center(
                        child: Image.asset(
                          "assets/icons/accessories-icon.png",
                          width: 30.w,
                          height: 30.h,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 12.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Accessories",
                          style: shsvallItemTitle,
                        ),
                        Text(
                          "Cool pets, Cool owner.",
                          style: shsvallItemSubTitle,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
