import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

Color primary = HexColor('#D03415');
Color secondary = HexColor('#F47157');
Color gray = HexColor('#C3C3C3');
Color whitish = HexColor('#FFFFFF');
Color neutral = HexColor('#FFFDF9');
Color black = Colors.black;

TextStyle homeWhiteTitle = GoogleFonts.poppins(
  fontSize: 18.sp,
  fontWeight: FontWeight.w600,
  color: whitish,
);

TextStyle homeWhiteSubTitle = GoogleFonts.poppins(
  fontSize: 13.sp,
  fontWeight: FontWeight.w400,
  color: whitish.withOpacity(0.80),
);

TextStyle homeBlackButton = GoogleFonts.poppins(
  fontSize: 14.sp,
  fontWeight: FontWeight.w500,
  color: black,
);

TextStyle homeCategoryTitle = GoogleFonts.poppins(
  fontSize: 16.sp,
  fontWeight: FontWeight.w600,
  color: black,
);

TextStyle homeAllButton = GoogleFonts.poppins(
  fontSize: 14.sp,
  fontWeight: FontWeight.w500,
  color: primary,
);

TextStyle homeShopItemTitle = GoogleFonts.poppins(
  fontSize: 13.sp,
  fontWeight: FontWeight.w500,
  color: HexColor('#464646'),
);

TextStyle homeShopItemTreatmentTitlee = GoogleFonts.poppins(
  fontSize: 11.sp,
  fontWeight: FontWeight.w500,
  color: HexColor('#464646'),
);

TextStyle homeDoctorName = GoogleFonts.poppins(
  fontSize: 14.sp,
  fontWeight: FontWeight.w500,
  color: black,
);

TextStyle homeDoctorAddress = GoogleFonts.poppins(
  fontSize: 12.sp,
  fontWeight: FontWeight.w400,
  color: black.withOpacity(0.60),
);

TextStyle homeRatingNum = GoogleFonts.poppins(
  fontSize: 12.sp,
  fontWeight: FontWeight.w500,
  color: black,
);

TextStyle homeSearchHint = GoogleFonts.poppins(
  fontSize: 15.sp,
  fontWeight: FontWeight.w400,
  color: black.withOpacity(0.50),
);

TextStyle homeSearchText = GoogleFonts.poppins(
  fontSize: 15.sp,
  fontWeight: FontWeight.w400,
  color: black,
);

TextStyle appBarTitle = GoogleFonts.poppins(
  fontSize: 18.sp,
  fontWeight: FontWeight.w600,
  color: black,
);

TextStyle shsvallItemTitle = GoogleFonts.poppins(
  fontSize: 15.sp,
  fontWeight: FontWeight.w500,
  color: black,
);

TextStyle shsvallItemSubTitle = GoogleFonts.poppins(
  fontSize: 13.sp,
  fontWeight: FontWeight.w400,
  color: black.withOpacity(0.75),
);

TextStyle productDetPrice = GoogleFonts.poppins(
  fontSize: 24.sp,
  fontWeight: FontWeight.w600,
  color: primary,
);

TextStyle productDetItemCount = GoogleFonts.poppins(
  fontSize: 18.sp,
  fontWeight: FontWeight.w400,
  color: black,
);

TextStyle productKeranjang = GoogleFonts.poppins(
  fontSize: 15.sp,
  fontWeight: FontWeight.w500,
  color: primary,
);

TextStyle productBuy = GoogleFonts.poppins(
  fontSize: 16.sp,
  fontWeight: FontWeight.w500,
  color: whitish,
);

TextStyle productItemTitle = GoogleFonts.poppins(
  fontSize: 18.sp,
  fontWeight: FontWeight.w500,
  color: black,
);

TextStyle productItemRatingBlack = GoogleFonts.poppins(
  fontSize: 16.sp,
  fontWeight: FontWeight.w500,
  color: black,
);

TextStyle productItemRatingBlackGray = GoogleFonts.poppins(
  fontSize: 16.sp,
  fontWeight: FontWeight.w400,
  color: black.withOpacity(0.60),
);

TextStyle productDescBigTitle = GoogleFonts.poppins(
  fontSize: 16.sp,
  fontWeight: FontWeight.w500,
  color: black,
);

TextStyle productDescSubTitleBlack = GoogleFonts.poppins(
  fontSize: 14.sp,
  fontWeight: FontWeight.w400,
  color: black.withOpacity(0.75),
);

TextStyle productDescSubTitlePrimary = GoogleFonts.poppins(
  fontSize: 14.sp,
  fontWeight: FontWeight.w500,
  color: primary,
);

TextStyle productDescText = GoogleFonts.poppins(
  fontSize: 12.5.sp,
  fontWeight: FontWeight.w400,
  color: black.withOpacity(0.80),
);

TextStyle productCategoryWhite = GoogleFonts.poppins(
  fontSize: 16.sp,
  fontWeight: FontWeight.w500,
  color: whitish,
);

TextStyle productCategoryBlack = GoogleFonts.poppins(
  fontSize: 16.sp,
  fontWeight: FontWeight.w500,
  color: black.withOpacity(0.80),
);

TextStyle producOntItemTitle = GoogleFonts.poppins(
  fontSize: 12.sp,
  fontWeight: FontWeight.w400,
  color: black.withOpacity(0.90),
);

TextStyle producOntItemPrice = GoogleFonts.poppins(
  fontSize: 16.sp,
  fontWeight: FontWeight.w600,
  color: primary,
);

TextStyle producOntItemRating = GoogleFonts.poppins(
  fontSize: 11.sp,
  fontWeight: FontWeight.w400,
  color: black.withOpacity(0.80),
);

TextStyle producOntItemLocation = GoogleFonts.poppins(
  fontSize: 11.sp,
  fontWeight: FontWeight.w400,
  color: black.withOpacity(0.75),
);

TextStyle vetFeatured = GoogleFonts.poppins(
  fontSize: 13.sp,
  fontWeight: FontWeight.w600,
  color: HexColor('#78E9FF'),
);

TextStyle vetNameBigWhite = GoogleFonts.poppins(
  fontSize: 19.sp,
  fontWeight: FontWeight.w700,
  color: whitish,
);

TextStyle vetDescFeatured = GoogleFonts.poppins(
  fontSize: 11.sp,
  fontWeight: FontWeight.w400,
  color: whitish.withOpacity(0.90),
);

TextStyle vetBlackOnButton= GoogleFonts.poppins(
  fontSize: 12.sp,
  fontWeight: FontWeight.w600,
  color: black,
);

TextStyle vetAllTitle= GoogleFonts.poppins(
  fontSize: 13.sp,
  fontWeight: FontWeight.w600,
  color: black,
);

TextStyle vetAllDesc= GoogleFonts.poppins(
  fontSize: 11.sp,
  fontWeight: FontWeight.w400,
  color: black.withOpacity(0.80),
);

TextStyle vetAllRating = GoogleFonts.poppins(
  fontSize: 10.sp,
  fontWeight: FontWeight.w500,
  color: black.withOpacity(0.80),
);

TextStyle vetDetailName = GoogleFonts.poppins(
  fontSize: 20.sp,
  fontWeight: FontWeight.w600,
  color: black,
);

TextStyle vetDetailJob = GoogleFonts.poppins(
  fontSize: 16.sp,
  fontWeight: FontWeight.w500,
  color: black.withOpacity(0.80),
);

TextStyle vetDetailLocation = GoogleFonts.poppins(
  fontSize: 13.5.sp,
  fontWeight: FontWeight.w400,
  color: black.withOpacity(0.75),
);

TextStyle vetDetailIDTitle = GoogleFonts.poppins(
  fontSize: 10.5.sp,
  fontWeight: FontWeight.w500,
  color: black.withOpacity(0.70),
);

TextStyle vetDetailIDBig = GoogleFonts.poppins(
  fontSize: 14.sp,
  fontWeight: FontWeight.w500,
  color: black,
);

TextStyle vetDetailIDBigGray = GoogleFonts.poppins(
  fontSize: 14.sp,
  fontWeight: FontWeight.w400,
  color: black.withOpacity(0.5),
);

TextStyle vetDetailContact = GoogleFonts.poppins(
  fontSize: 14.sp,
  fontWeight: FontWeight.w500,
  color: black.withOpacity(0.8),
);

TextStyle vetBookTitle = GoogleFonts.poppins(
  fontSize: 20.sp,
  fontWeight: FontWeight.w600,
  color: black,
);

TextStyle vetBookPart = GoogleFonts.poppins(
  fontSize: 14.sp,
  fontWeight: FontWeight.w500,
  color: primary,
);

TextStyle vetBookSubTitle= GoogleFonts.poppins(
  fontSize: 14.sp,
  fontWeight: FontWeight.w600,
  color: black.withOpacity(0.65),
);

TextStyle vetBookWhiteOnButton= GoogleFonts.poppins(
  fontSize: 16.sp,
  fontWeight: FontWeight.w600,
  color: whitish,
);

TextStyle vetBookDayOnPrimary= GoogleFonts.poppins(
  fontSize: 12.sp,
  fontWeight: FontWeight.w500,
  color: HexColor('#FFFDF9'),
);

TextStyle vetBookDateOnPrimary= GoogleFonts.poppins(
  fontSize: 20.sp,
  fontWeight: FontWeight.w600,
  color: whitish,
);

TextStyle vetBookDayOnWhite= GoogleFonts.poppins(
  fontSize: 12.sp,
  fontWeight: FontWeight.w500,
  color: black.withOpacity(0.75),
);

TextStyle vetBookDateOnWhite= GoogleFonts.poppins(
  fontSize: 20.sp,
  fontWeight: FontWeight.w600,
  color: black,
);

TextStyle vetBookOnBtnWhite= GoogleFonts.poppins(
  fontSize: 16.sp,
  fontWeight: FontWeight.w500,
  color: whitish,
);

TextStyle vetBookClockOnGray= GoogleFonts.poppins(
  fontSize: 16.sp,
  fontWeight: FontWeight.w500,
  color: black.withOpacity(0.60),
);

TextStyle vetBookClockOnWhite= GoogleFonts.poppins(
  fontSize: 16.sp,
  fontWeight: FontWeight.w500,
  color: black,
);

TextStyle vetBookClockOnPrimary= GoogleFonts.poppins(
  fontSize: 16.sp,
  fontWeight: FontWeight.w500,
  color: whitish,
);

TextStyle vetBookInputLabel= GoogleFonts.poppins(
  fontSize: 14.sp,
  fontWeight: FontWeight.w600,
  color: black.withOpacity(0.65),
);

TextStyle vetBookDropdownInput= GoogleFonts.poppins(
  fontSize: 14.sp,
  fontWeight: FontWeight.w500,
  color: black,
);

TextStyle vetBookInputLabelSmall= GoogleFonts.poppins(
  fontSize: 12.sp,
  fontWeight: FontWeight.w600,
  color: black.withOpacity(0.65),
);

TextStyle vetBookVetName= GoogleFonts.poppins(
  fontSize: 16.sp,
  fontWeight: FontWeight.w600,
  color: black,
);

TextStyle vetBookVetJob = GoogleFonts.poppins(
  fontSize: 13.sp,
  fontWeight: FontWeight.w500,
  color: black.withOpacity(0.75),
);

TextStyle vetBookEdit = GoogleFonts.poppins(
  fontSize: 14.sp,
  fontWeight: FontWeight.w500,
  color: primary,
  decoration: TextDecoration.underline
);

TextStyle vetBookLabelPrimary = GoogleFonts.poppins(
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    color: primary,
);

TextStyle vetBookPlace = GoogleFonts.poppins(
  fontSize: 13.sp,
  fontWeight: FontWeight.w400,
  color: black.withOpacity(0.80),
);

TextStyle vetBookDetLabel = GoogleFonts.poppins(
  fontSize: 13.sp,
  fontWeight: FontWeight.w500,
  color: black.withOpacity(0.60),
);

TextStyle vetBookDetValue = GoogleFonts.poppins(
  fontSize: 14.sp,
  fontWeight: FontWeight.w500,
  color: primary,
);

TextStyle vetBookOnPrimaryChip = GoogleFonts.poppins(
  fontSize: 14.sp,
  fontWeight: FontWeight.w600,
  color: whitish,
);

TextStyle vetBookOnWhiteChip = GoogleFonts.poppins(
  fontSize: 14.sp,
  fontWeight: FontWeight.w600,
  color: black,
);

TextStyle treatBookPetName = GoogleFonts.poppins(
  fontSize: 14.sp,
  fontWeight: FontWeight.w600,
  color: black,
);

TextStyle treatBookPetLoc = GoogleFonts.poppins(
  fontSize: 14.sp,
  fontWeight: FontWeight.w400,
  color: black.withOpacity(0.80),
);

TextStyle treatBookPrice = GoogleFonts.poppins(
  fontSize: 14.sp,
  fontWeight: FontWeight.w500,
  color: black,
);

TextStyle treatBookLabel = GoogleFonts.poppins(
  fontSize: 14.sp,
  fontWeight: FontWeight.w600,
  color: black.withOpacity(0.65),
);

TextStyle treatBookLoc = GoogleFonts.poppins(
  fontSize: 13.sp,
  fontWeight: FontWeight.w400,
  color: black.withOpacity(0.80),
);

TextStyle cartItemName = GoogleFonts.poppins(
  fontSize: 15.sp,
  fontWeight: FontWeight.w600,
  color: black,
);

TextStyle cartItemTotal = GoogleFonts.poppins(
  fontSize: 13.sp,
  fontWeight: FontWeight.w400,
  color: black.withOpacity(0.80),
);

TextStyle cartItemPrice = GoogleFonts.poppins(
  fontSize: 14.sp,
  fontWeight: FontWeight.w600,
  color: black,
);

TextStyle cartItemTotalPrice = GoogleFonts.poppins(
  fontSize: 18.sp,
  fontWeight: FontWeight.w600,
  color: black,
);