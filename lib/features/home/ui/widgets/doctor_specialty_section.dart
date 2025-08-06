import 'package:appointment_app/core/helpers/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/helpers/assets.dart';
import '../../../../core/themes/colors.dart';
import '../../../../core/themes/text_styles.dart';

class DoctorSpecialtySection extends StatelessWidget {
  const DoctorSpecialtySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'Doctor Speciality',
              style: TextStyles.font18DarkBlueSemiBold,
            ),
            const Spacer(),
            Text('See All', style: TextStyles.font12BlueRegular),
          ],
        ),
        verticalSpacing(16.h),
        SizedBox(
          height: 100.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsetsDirectional.only(
                  start: index == 0 ? 0 : 24.w,
                ),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: ColorsManger.lighterGray,
                      child: SvgPicture.asset(
                        AssetsManger.doctorSpecialty,
                        height: 24.h,
                        width: 24.w,
                      ),
                    ),
                    verticalSpacing(10),
                    Text(
                      'General',
                      style: TextStyles.font12GrayRegular,
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
