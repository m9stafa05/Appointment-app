import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/helpers/assets.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/themes/colors.dart';
import '../../../../core/themes/text_styles.dart';
import '../../data/models/specializations_response_model.dart';

class SpecializationsListViewItem extends StatelessWidget {
  const SpecializationsListViewItem({
    super.key,
    required this.itemIndex,
    required this.specializationsData,
    required this.selectedIndex,
  });
  final int itemIndex;
  final int selectedIndex;
  final SpecializationsData specializationsData;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: itemIndex == 0 ? 0 : 24.w),
      child: Column(
        children: [
          itemIndex == selectedIndex
              ? Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: ColorsManger.darkBlue),
                    shape: BoxShape.circle,
                  ),
                  child: CircleAvatar(
                    radius: 25,
                    backgroundColor: ColorsManger.lightGray,
                    child: SvgPicture.asset(
                      AssetsManger.doctorSpecialty,
                      height: 42.h,
                      width: 42.w,
                    ),
                  ),
                )
              : CircleAvatar(
                  radius: 25,
                  backgroundColor: ColorsManger.lighterGray,
                  child: SvgPicture.asset(
                    AssetsManger.doctorSpecialty,
                    height: 40.h,
                    width: 40.w,
                  ),
                ),
          verticalSpacing(10),
          Text(
            specializationsData.name ?? '',
            style: itemIndex == selectedIndex
                ? TextStyles.font14DarkBlueSemiBold
                : TextStyles.font12GrayRegular,
          ),
        ],
      ),
    );
  }
}
