import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/assets.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/themes/colors.dart';
import '../../../../core/themes/text_styles.dart';

class DoctorCard extends StatelessWidget {
  const DoctorCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Container(
            width: 110.w,
            height: 110.h,
            margin: EdgeInsets.only(bottom: 20.h),
            decoration: BoxDecoration(
              color: ColorsManger.lighterGray,
              borderRadius: BorderRadius.circular(16.r),
            ),

            child: Image.asset(
              AssetsManger.doctorImage,
              width: 55.w,
              height: 55.h,
            ),
          ),
          horizontalSpacing(16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Dr. Randy Wigham',
                  style: TextStyles.font18DarkBlueBold,
                  overflow: TextOverflow.ellipsis,
                ),
                verticalSpacing(5),
                Text(
                  'General | RSUD Gatot Subroto',
                  style: TextStyles.font12GrayRegular,
                  overflow: TextOverflow.ellipsis,
                ),
                verticalSpacing(10),
                const DoctorCardRating(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DoctorCardRating extends StatelessWidget {
  const DoctorCardRating({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          const Icon(Icons.star, color: Colors.yellow, size: 16),
          horizontalSpacing(4),
          Text('4.8', style: TextStyles.font12DarkBlueRegular),
          horizontalSpacing(4),
          Text('(155)', style: TextStyles.font12GrayRegular),
        ],
      ),
    );
  }
}
