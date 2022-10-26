import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:petscape/shared/theme.dart';
import 'package:petscape/widgets/style/boxShadow.dart';

class CartDetailScreen extends StatefulWidget {
  const CartDetailScreen({Key? key}) : super(key: key);

  @override
  State<CartDetailScreen> createState() => _CartDetailScreenState();
}

class _CartDetailScreenState extends State<CartDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
      },
      child: Scaffold(
        backgroundColor: neutral,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(72.h),
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
                  "Order Details",
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
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 16.h),
                Text(
                  "Alamat",
                  style: treatBookLabel,
                ),
                SizedBox(
                  height: 4.h,
                ),
                Stack(
                  children: [
                    Container(
                      width: 324.w,
                      height: 42.h,
                      decoration: BoxDecoration(
                          color: whitish,
                          borderRadius: BorderRadius.circular(4.r),
                          boxShadow: [
                            buildPrimaryBoxShadow(),
                          ]),
                    ),
                    Center(
                      child: TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your address';
                          }
                          return null;
                        },
                        style: homeSearchText,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Alamat anda",
                            hintStyle: homeSearchHint,
                            contentPadding: EdgeInsets.only(
                                left: 11.w, top: 11.h, bottom: 10.h)),
                      ),
                    ),
                  ],
                ),
                ListView.builder(
                  itemCount: 5,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index){
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 12.h,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 11.w, vertical: 12.h),
                            width: 323.w,
                            height: 135.h,
                            decoration: BoxDecoration(
                                color: whitish,
                                borderRadius: BorderRadius.circular(6.r),
                                boxShadow: [
                                  buildPrimaryBoxShadow(),
                                ]),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(4.r),
                                      child: Image.network(
                                        "https://i.pinimg.com/1200x/da/66/47/da6647f1615e67791fa6644d1a7663fa.jpg",
                                        width: 64.w,
                                        height: 64.h,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 8.w,
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                            width: 225.w,
                                            child: Text(
                                              "Pharma Hemp Chicken Treats",
                                              style: cartItemName,
                                              overflow: TextOverflow.ellipsis,
                                            )),
                                        Text("5 barang", style: cartItemTotal,),
                                        Text("Rp36.000", style: cartItemPrice,),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(height: 12.h,),
                                Container(
                                  width: 301.w,
                                  height: 1.h,
                                  color: gray,
                                ),
                                SizedBox(height: 12.h,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Subtotal", style: cartItemTotal,),
                                    Text("Rp180.000", style: cartItemPrice,),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                ),
                SizedBox(height: 100.h,),
              ],
            ),
          ),
        ),
        bottomSheet: Container(
          padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 12.h),
          width: 1.sw,
          height: 80.h,
          decoration: BoxDecoration(color: whitish, boxShadow: [
            buildSecondaryBoxShadow(),
          ]),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Total Tagihan", style: cartItemTotal,),
                  Text("Rp300.000", style: cartItemTotalPrice,),
                ],
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(6.r),
                child: SizedBox(
                  width: 203.w,
                  height: 54.h,
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
                      "Proses Pembayaran",
                      style: vetBookOnBtnWhite,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
