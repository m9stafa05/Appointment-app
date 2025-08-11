import '../data/models/specializations_response_model.dart';
import '../logic/cubit/home_cubit.dart';
import '../logic/cubit/home_state.dart';
import 'widgets/doctor_specialty_section.dart';
import 'widgets/doctors_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/helpers/spacing.dart';
import '../../../core/themes/colors.dart';

class SpecializationsAndDoctorsBlocBuilder extends StatelessWidget {
  const SpecializationsAndDoctorsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is SpecializationsLoading ||
          current is SpecializationsLoaded ||
          current is SpecializationsFailed,
      builder: (context, state) {
        return state.maybeWhen(
          specializationsLoading: () {
            return Center(child: loading());
          },
          specializationsLoaded: (specializationsResponseModel) {
            var specializationList =
                specializationsResponseModel.specializationDataList;

            final safeSpecializationList = (specializationList ?? [])
                .whereType<SpecializationsData>()
                .toList();
            return success(safeSpecializationList);
          },
          specializationsFailed: (error) {
            return errorSetUp(error, context);
          },
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget loading() {
    return const Center(
      child: Center(
        child: CircularProgressIndicator(color: ColorsManger.mainBlue),
      ),
    );
  }

  Widget success(safeSpecializationList) {
    return Column(
      children: [
        DoctorSpecialtySection(specializationList: safeSpecializationList),
        DoctorsListView(
          doctorsList:
              (safeSpecializationList.isNotEmpty
                      ? safeSpecializationList[1].doctorsList
                      : [])
                  ?.cast<Doctors?>(),
        ),
      ],
    );
  }

  Widget errorSetUp(error, context) {
    return Center(
      child: Column(
        children: [
          Text(error.apiErrorModel.message!),
          verticalSpacing(32.h),
          IconButton(
            onPressed: () {
             BlocProvider.of<HomeCubit>(context).emitGetSpecializations();
            },
            icon: const Icon(Icons.refresh, color: ColorsManger.mainBlue),
          ),
        ],
      ),
    );
  }
}
