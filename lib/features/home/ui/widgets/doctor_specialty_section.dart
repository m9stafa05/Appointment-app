import 'package:appointment_app/core/helpers/spacing.dart';
import 'doctor_specializations_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/themes/text_styles.dart';
import '../../data/models/specializations_response_model.dart';

class DoctorSpecialtySection extends StatelessWidget {
  const DoctorSpecialtySection({super.key, required this.specializationList});
  final List<SpecializationsData> specializationList;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text('Doctor Speciality', style: TextStyles.font18DarkBlueSemiBold),
            const Spacer(),
            Text('See All', style: TextStyles.font12BlueRegular),
          ],
        ),
        verticalSpacing(16.h),
        SizedBox(
          height: 100.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: specializationList.length,
            itemBuilder: (context, index) {
              return DoctorSpecializationsListViewItem(
                itemIndex: index,
                specializationsData: specializationList,
              );
            },
          ),
        ),
      ],
    );
  }
}
