import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:petscape/shared/theme.dart';
import 'package:petscape/widgets/style/boxShadow.dart';

class PetProfileScreen extends StatefulWidget {
  const PetProfileScreen({Key? key}) : super(key: key);

  @override
  State<PetProfileScreen> createState() => _PetProfileScreenState();
}

class _PetProfileScreenState extends State<PetProfileScreen> {
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
                "Pet Details",
                style: appBarTitle,
              ),
              IconButton(
                onPressed: () {
                  print("print");
                },
                icon: Image.asset("assets/icons/pencil-icon.png", scale: 4,),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 24.h,),
                Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100.r),
                    child: Image.network("https://www.wikihow.com/images_en/thumb/f/f0/Make-a-Dog-Love-You-Step-6-Version-4.jpg/v4-1200px-Make-a-Dog-Love-You-Step-6-Version-4.jpg", width: 80.w, height: 80.h, fit: BoxFit.cover,),
                  ),
                ),
                SizedBox(height: 10.h,),
                Text("Anying", style: petNameBig,),
                Text("Anying teranying", style: petNameDesc,),
                SizedBox(height: 24.h,),
              ],
            ),
            Container(
              width: 1.sw,
              height: 4.h,
              color: HexColor('#EAEAEA'),
            ),
            SizedBox(height: 24.h,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Name:", style: petLabel,),
                  SizedBox(height: 6.h,),
                  Text("Anying", style: petValue,),
                  SizedBox(height: 18.h,),
                  Text("Breed:", style: petLabel,),
                  SizedBox(height: 6.h,),
                  Text("Anying Galak", style: petValue,),
                  SizedBox(height: 18.h,),
                  Text("Sex:", style: petLabel,),
                  SizedBox(height: 6.h,),
                  Text("Gay", style: petValue,),
                  SizedBox(height: 18.h,),
                  Text("Condition:", style: petLabel,),
                  SizedBox(height: 6.h,),
                  Text("Sekarat - 1 ton", style: petValue,),
                  SizedBox(height: 24.h,),
                ],
              ),
            ),
            Container(
              width: 1.sw,
              height: 4.h,
              color: HexColor('#EAEAEA'),
            ),
            SizedBox(height: 24.h,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Health History", style: petHealth,),
                  SizedBox(height: 16.h,),
                  ListView.builder(
                    itemCount: 5,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index){
                        return Column(
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.transparent,
                                padding: EdgeInsets.zero,
                              ),
                              child: Container(
                                padding: EdgeInsets.only(left: 16.w, top: 15.h, right: 8.w, bottom: 15.h),
                                width: 324.w,
                                height: 96.h,
                                decoration: BoxDecoration(
                                    color: whitish,
                                    borderRadius: BorderRadius.circular(4.r),
                                    boxShadow: [
                                      buildPrimaryBoxShadow(),
                                    ]
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("12 July 2022", style: petDatePrimary,),
                                        SizedBox(height: 6.h,),
                                        Text("Daily Check July 2022", style: petDateBlack,),
                                        SizedBox(height: 4.h),
                                        SizedBox(
                                          width: 250.w,
                                          child: Text("Lorem ipsum dolor sit amet, consectetur lorem lorem lorem", style: petDateDesc, overflow: TextOverflow.ellipsis,),),
                                      ],
                                    ),
                                    Image.asset("assets/icons/arrow-right-gray-icon.png", width: 24.w, height: 24.h,),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 16.h,),
                          ],
                        );
                      }
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
