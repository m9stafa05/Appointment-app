import 'package:appointment_app/core/themes/colors.dart';
import 'package:appointment_app/core/themes/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  //  ####### Blue - #[12 - 24 - 32] #######
  static TextStyle font12BlueRegular = TextStyle(
    fontSize: 12.sp,
    color: ColorsManger.mainBlue,
    fontWeight: FontWeightHelper.regular,
  );

  static TextStyle font13BlueSemiBold = TextStyle(
    fontSize: 13.sp,
    color: ColorsManger.mainBlue,
    fontWeight: FontWeightHelper.semiBold,
  );

  static TextStyle font24BlueBold = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeightHelper.bold,
    color: ColorsManger.mainBlue,
  );

  static TextStyle font32BlueBold = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeightHelper.bold,
    color: ColorsManger.mainBlue,
  );

  //  ####### Dark Blue - #[12 - 14 - 15] #######
  static TextStyle font12DarkBlueRegular = TextStyle(
    fontSize: 12.sp,
    color: ColorsManger.darkBlue,
    fontWeight: FontWeightHelper.regular,
  );
  static TextStyle font13DarkBlueSemiBold = TextStyle(
    fontSize: 13.sp,
    color: ColorsManger.darkBlue,
    fontWeight: FontWeightHelper.semiBold,
  );

  static TextStyle font14DarkBlueMedium = TextStyle(
    fontSize: 14.sp,
    color: ColorsManger.darkBlue,
    fontWeight: FontWeightHelper.medium,
  );
  static TextStyle font14DarkBlueSemiBold = TextStyle(
    fontSize: 14.sp,
    color: ColorsManger.darkBlue,
    fontWeight: FontWeightHelper.semiBold,
  );

  static TextStyle font15DarkBlueMedium = TextStyle(
    fontSize: 15.sp,
    color: ColorsManger.darkBlue,
    fontWeight: FontWeightHelper.medium,
  );
  static TextStyle font18DarkBlueSemiBold = TextStyle(
    fontSize: 18.sp,
    color: ColorsManger.darkBlue,
    fontWeight: FontWeightHelper.semiBold,
  );
  
  static TextStyle font18DarkBlueBold = TextStyle(
    fontSize: 18.sp,
    color: ColorsManger.darkBlue,
    fontWeight: FontWeightHelper.bold,
  );

  //  ####### gray / LightGray - #[12 - 14 - 32] #######
  static TextStyle font12GrayRegular = TextStyle(
    fontSize: 12.sp,
    color: ColorsManger.gray,
    fontWeight: FontWeightHelper.regular,
  );

  static TextStyle font14GrayRegular = TextStyle(
    fontSize: 14.sp,
    color: ColorsManger.gray,
    fontWeight: FontWeightHelper.regular,
  );

  static TextStyle font14LightGrayRegular = TextStyle(
    fontSize: 14.sp,
    color: ColorsManger.lightGray,
    fontWeight: FontWeightHelper.regular,
  );

  // #######################
  static TextStyle font16WhiteSemiBold = TextStyle(
    color: Colors.white,
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.semiBold,
  );
  static TextStyle font18WhiteMedium = TextStyle(
    color: Colors.white,
    fontSize: 18.sp,
    fontWeight: FontWeightHelper.medium,
  );

  static TextStyle font24BlackBold = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeightHelper.bold,
    color: Colors.black,
  );
}
