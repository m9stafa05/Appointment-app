import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/helpers/assets.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/themes/colors.dart';
import '../../../../core/themes/text_styles.dart';
import '../../data/models/specializations_response_model.dart';

class DoctorSpecializationsListViewItem extends StatelessWidget {
  const DoctorSpecializationsListViewItem({
    super.key,
    required this.itemIndex,
    required this.specializationsData,
  });
  final int itemIndex;
  final List<SpecializationsData> specializationsData;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: itemIndex == 0 ? 0 : 24.w),
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
            specializationsData[itemIndex].name ?? '',
            style: TextStyles.font12GrayRegular,
          ),
        ],
      ),
    );
  }
}
