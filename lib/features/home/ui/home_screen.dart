import 'widgets/doctors_bloc_builder.dart';
import 'widgets/specializations_bloc_builder.dart';
import '../../../core/helpers/spacing.dart';
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
              verticalSpacing(16),
              const SpecializationsBlocBuilder(),
              verticalSpacing(16),
              const DoctorsBlocBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}
