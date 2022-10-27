import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:petscape/shared/theme.dart';
import 'package:petscape/widgets/style/boxShadow.dart';

class OrderAppointmentPendingScreen extends StatefulWidget {
  const OrderAppointmentPendingScreen({Key? key}) : super(key: key);

  @override
  State<OrderAppointmentPendingScreen> createState() => _OrderAppointmentPendingScreenState();
}

class _OrderAppointmentPendingScreenState extends State<OrderAppointmentPendingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                "Detail Order",
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 16.h,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
              width: 324.w,
              height: 46.h,
              decoration: BoxDecoration(
                  color: whitish,
                  borderRadius: BorderRadius.circular(6.r),
                  boxShadow: [
                    buildPrimaryBoxShadow(),
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Status Transaksi",
                    style: orderStatusLabel,
                  ),
                  Container(
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: pending,
                      borderRadius: BorderRadius.circular(6.r),
                    ),
                    child: Center(
                      child: Text(
                        "Pending",
                        style: orderItemStatusPending,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12.h,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 11.w, vertical: 12.h),
              width: 324.w,
              height: 96.h,
              decoration: BoxDecoration(
                  color: whitish,
                  borderRadius: BorderRadius.circular(6.r),
                  boxShadow: [
                    buildPrimaryBoxShadow(),
                  ]
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Transfer Ke", style: orderStatusLabel,),
                  Text("BNI - 7224185934", style: orderBankAccount,),
                  Text("Tenggat: 27 Okt", style: orderPaymentDeadline,),
                ],
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 11.w, vertical: 12.h),
              width: 323.w,
              decoration: BoxDecoration(
                color: whitish,
                borderRadius: BorderRadius.circular(6.r),
                boxShadow: [
                  buildPrimaryBoxShadow(),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Appointment Detail",
                    style: orderStatusLabel,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(100.r),
                        child: Image.network(
                          "https://www.pinnaclecare.com/wp-content/uploads/2017/12/bigstock-African-young-doctor-portrait-28825394.jpg",
                          width: 54.w,
                          height: 54.h,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: 12.w,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Dr. Tracy Frost", style: orderStatusLabel,),
                          SizedBox(height: 4.h,),
                          Text("Cat Specialist", style: orderLocation,),
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
                      Text("Place", style: orderTotalTxt,),
                      Text("Rp56.000", style: orderPriceSmall,),
                    ],
                  ),
                  SizedBox(height: 8.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Lokasi", style: orderTotalTxt,),
                      Text("20 Agustus", style: orderPriceSmall,),
                    ],
                  ),
                  SizedBox(height: 8.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Jam", style: orderTotalTxt,),
                      Text("12:00-13:00", style: orderPriceSmall,),
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
                      Text("Total Harga", style: orderTotalTxt,),
                      Text("Rp56.000", style: orderStatusLabel,),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 12.h,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 11.w, vertical: 12.h),
              width: 323.w,
              decoration: BoxDecoration(
                color: whitish,
                borderRadius: BorderRadius.circular(6.r),
                boxShadow: [
                  buildPrimaryBoxShadow(),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Lokasi Toko",
                    style: orderStatusLabel,
                  ),
                  SizedBox(height: 4.h,),
                  Text("Jl. Kliningan No.6 RT 02 RW 05, Bandung, Jawa Barat, Indonesia", style: orderLocation,),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
