import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:petscape/shared/theme.dart';
import 'package:petscape/widgets/style/boxShadow.dart';

class FeedPostAddScreen extends StatefulWidget {
  const FeedPostAddScreen({Key? key}) : super(key: key);

  @override
  State<FeedPostAddScreen> createState() => _FeedPostAddScreenState();
}

class _FeedPostAddScreenState extends State<FeedPostAddScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
      },
      child: Scaffold(
        backgroundColor: neutral,
        resizeToAvoidBottomInset: true,
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
                  "Postingan",
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
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  "Foto",
                  style: vetBookInputLabel,
                ),
                SizedBox(
                  height: 6.h,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding:
                    EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
                    width: 328.w,
                    height: 42.h,
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
                        Text("Upload Foto", style: vetBookDropdownInput,),
                        Image.asset("assets/icons/upload-icon.png", width: 18.w, height: 18.h,),
                      ],
                    ),
                  ),
                ),
                //if image selected
                // ClipRRect(
                //     borderRadius: BorderRadius.circular(4.r),
                //     child: Image.network("https://img.indonesiatoday.co.id/photos/post/1660446477-anjing-golden-retriever-yang-kurus-dan-tinggal-tulang-menunggu-pemiliknya-yang-telah-meninggalkannya.jpg", width: 328.w, height: 151.h, fit: BoxFit.cover,)),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  "Konten",
                  style: vetBookInputLabel,
                ),
                SizedBox(
                  height: 6.h,
                ),
                Stack(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      width: 328.w,
                      height: 42.h,
                      decoration: BoxDecoration(
                          color: whitish,
                          borderRadius: BorderRadius.circular(4.r),
                          boxShadow: [
                            buildPrimaryBoxShadow(),
                          ]),
                    ),
                    Center(
                      child: SizedBox(
                        width: 328.w,
                        height: 42.h,
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Harap isi';
                            }
                            return null;
                          },
                          keyboardType: TextInputType.text,
                          style: homeSearchText,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Jalan - jalan tadi pagii",
                              hintStyle: homeSearchHint,
                              contentPadding: EdgeInsets.only(
                                  left: 11.w, top: 11.h, bottom: 10.h)),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 24.h,
                ),
                Text(
                  "Kategori",
                  style: vetBookInputLabel,
                ),
                SizedBox(
                  height: 6.h,
                ),
                Container(
                  padding:
                  EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
                  width: 324.w,
                  height: 42.h,
                  decoration: BoxDecoration(
                    color: whitish,
                    borderRadius: BorderRadius.circular(4.r),
                    boxShadow: [
                      buildPrimaryBoxShadow(),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Dog",
                        style: vetBookDropdownInput,
                      ),
                      Image.asset(
                        "assets/icons/arrow-down-icon.png",
                        width: 18.w,
                        height: 18.h,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomSheet: Container(
          padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 9.h),
          width: 1.sw,
          height: 72.h,
          decoration: BoxDecoration(color: whitish, boxShadow: [
            buildSecondaryBoxShadow(),
          ]),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(4.r),
            child: SizedBox(
              width: 324.w,
              height: 54.h,
              child: ElevatedButton(
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => const FeedDonationScreen()),
                  // );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: primary,
                ),
                child: Text(
                  "Post",
                  style: vetBookOnBtnWhite,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
