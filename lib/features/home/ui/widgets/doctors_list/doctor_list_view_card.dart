import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/helpers/assets.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/themes/colors.dart';
import '../../../../../core/themes/text_styles.dart';
import '../../../data/models/specializations_response_model.dart';

class DoctorListViewCard extends StatelessWidget {
  const DoctorListViewCard({super.key, required this.doctorModel});
  final Doctors? doctorModel;

  @override
  Widget build(BuildContext context) {
    return Row(
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
            doctorModel?.gender == 'male'
                ? AssetsManger.maleDoctorDefaultImage
                : AssetsManger.femaleDoctorDefaultImage,
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
                doctorModel?.name ?? 'name',
                style: TextStyles.font18DarkBlueBold,
                overflow: TextOverflow.ellipsis,
              ),
              verticalSpacing(5),
              Text(
                doctorModel?.phone ?? 'phone',
                style: TextStyles.font12GrayRegular,
              ),
              // verticalSpacing(5),
              Text(
                doctorModel?.email ?? '',
                style: TextStyles.font12GrayRegular,
                overflow: TextOverflow.ellipsis,
              ),
              verticalSpacing(10),
              Text(
                doctorModel?.degree ?? '',
                style: TextStyles.font13BlueSemiBold,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
