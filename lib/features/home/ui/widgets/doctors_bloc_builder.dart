import 'package:appointment_app/features/home/ui/widgets/doctors_list_view.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/themes/colors.dart';
import '../../logic/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../logic/cubit/home_state.dart';

class DoctorsBlocBuilder extends StatelessWidget {
  const DoctorsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is DoctorsLoaded || current is DoctorsFailed,
      builder: (context, state) {
        return state.maybeWhen(
          doctorsLoaded: (doctorsList) {
            return successSetUp(doctorsList);
          },
          doctorsFailed: (error) {
            return errorSetUp(error, context);
          },
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget successSetUp(doctorsList) {
    return DoctorsListView(doctorsList: doctorsList);
  }

  Widget errorSetUp(error, context) {
    return Center(
      child: Column(
        children: [
          Text(error.apiErrorModel.message!),
          verticalSpacing(32),
          IconButton(
            onPressed: () {
              BlocProvider.of<HomeCubit>(
                context,
              ).getDoctorsList(specializationId: 0);
            },
            icon: const Icon(Icons.refresh, color: ColorsManger.mainBlue),
          ),
        ],
      ),
    );
  }
}
