import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:petscape/shared/theme.dart';
import 'package:petscape/widgets/style/boxShadow.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({Key? key}) : super(key: key);

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  int itemCount = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whitish,
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
                "Detail Product",
                style: appBarTitle,
              ),
              IconButton(
                  onPressed: () {
                    print("print");
                  },
                  icon: Image.asset("assets/icons/bag-icon.png"),
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
              "https://i.pinimg.com/1200x/da/66/47/da6647f1615e67791fa6644d1a7663fa.jpg",
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Rp 56.000",
                        style: productDetPrice,
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                itemCount--;
                              });
                              if (itemCount <= 1) {
                                itemCount = 1;
                              }
                            },
                            child: Image.asset(
                              itemCount > 1
                                  ? "assets/icons/subtract-primary-icon.png"
                                  : "assets/icons/subtract-icon.png",
                              width: 30.w,
                              height: 30.h,
                            ),
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          Text(
                            itemCount.toString(),
                            style: productDetItemCount,
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          InkWell(
                              onTap: () {
                                setState(() {
                                  itemCount++;
                                });
                              },
                              child: Image.asset(
                                "assets/icons/add-primary-icon.png",
                                width: 30.w,
                                height: 30.h,
                              )),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  Text("Pharma Hemp Chicken Treats", style: productItemTitle,),
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
                  Text("Product Description", style: productDescBigTitle,),
                  SizedBox(height: 10.h,),
                  Row(
                    children: [
                      Text("Kategori:", style: productDescSubTitleBlack,),
                      SizedBox(width: 40.w,),
                      Text("Kucing", style: productDescSubTitlePrimary,),
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(4.r),
              child: SizedBox(
                width: 154.w,
                height: 42.h,
                child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(
                      width: 1.w,
                      color: primary,
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/icons/bag-primary.png",
                        width: 23.w,
                        height: 23.h,
                      ),
                      SizedBox(
                        width: 6.w,
                      ),
                      Text(
                        "Keranjang",
                        style: productKeranjang,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(4.r),
              child: SizedBox(
                width: 154.w,
                height: 42.h,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primary,
                  ),
                  child: Text(
                    "Beli Sekarang",
                    style: productBuy,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
