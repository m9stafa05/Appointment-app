import 'widgets/doctors_list_view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helpers/spacing.dart';
import 'widgets/doctor_specialty_section.dart';
import 'widgets/doctors_blue_container.dart';
import 'widgets/home_tap_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(20, 16, 20, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeTopBar(),
              const DoctorsBlueContainer(),
              verticalSpacing(16.h),
              const DoctorSpecialtySection(),
              const DoctorsListView(),
            ],
          ),
        ),
      ),
    );
  }
}
