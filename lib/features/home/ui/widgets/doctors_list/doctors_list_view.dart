import 'doctor_list_view_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/themes/text_styles.dart';
import '../../../data/models/specializations_response_model.dart';

class DoctorsListView extends StatelessWidget {
  const DoctorsListView({super.key, this.doctorsList});
  final List<Doctors?>? doctorsList;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              'Recommendation Doctor',
              style: TextStyles.font18DarkBlueSemiBold,
            ),
            const Spacer(),
            Text('See All', style: TextStyles.font12BlueRegular),
          ],
        ),
        verticalSpacing(16.h),

        SizedBox(
          height: 270.h,
          child: ListView.builder(
            itemCount: doctorsList?.length,
            itemBuilder: (context, index) {
              return DoctorListViewCard(doctorModel: doctorsList?[index]);
            },
          ),
        ),
      ],
    );
  }
}
