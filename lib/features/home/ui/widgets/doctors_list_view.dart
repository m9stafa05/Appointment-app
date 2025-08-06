import 'package:appointment_app/features/home/ui/widgets/doctor_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/themes/text_styles.dart';

class DoctorsListView extends StatelessWidget {
  const DoctorsListView({super.key});

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

        // Safe scrollable list with fixed height
        SizedBox(
          height: 270.h,
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return const DoctorCard();
            },
          ),
        ),
      ],
    );
  }
}
