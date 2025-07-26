import 'package:appointment_app/core/helpers/assets.dart';
import 'package:appointment_app/core/themes/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DocLogAndName extends StatelessWidget {
  const DocLogAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(AssetsManger.docLog),
          SizedBox(width: 10.w),
          Text('DocDoc', style: TextStyles.font24BlackBold),
        ],
      ),
    );
  }
}
