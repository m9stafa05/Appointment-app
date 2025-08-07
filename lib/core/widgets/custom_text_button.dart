import 'package:appointment_app/core/themes/colors.dart';
import 'package:appointment_app/core/themes/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.buttonText,
    this.textStyle,
    required this.onPressed,
    this.borderRadius,
    this.backgroundColor,
    this.buttonWidth,
    this.buttonHeight,
    this.verticalPadding,
    this.horizontalPadding,
  });
  final String buttonText;
  final TextStyle? textStyle;
  final VoidCallback onPressed;
  final double? borderRadius;
  final Color? backgroundColor;
  final double? buttonWidth;
  final double? buttonHeight;
  final double? verticalPadding;
  final double? horizontalPadding;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 16),
          ),
        ),
        backgroundColor: WidgetStateProperty.all(
          backgroundColor ?? ColorsManger.mainBlue,
        ),
        padding: WidgetStateProperty.all(
          EdgeInsets.symmetric(
            vertical: verticalPadding?.h ?? 12.h,
            horizontal: horizontalPadding?.w ?? 14.w,
          ),
        ),
        fixedSize: WidgetStateProperty.all(
          Size(buttonWidth ?? double.maxFinite, buttonHeight?.h ?? 50.h),
        ),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: WidgetStateProperty.all(const Size(double.infinity, 52)),
      ),
      onPressed: onPressed,
      child: Text(
        buttonText,
        style: textStyle ?? TextStyles.font16WhiteSemiBold,
      ),
    );
  }
}
