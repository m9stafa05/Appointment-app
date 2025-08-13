import 'package:appointment_app/features/home/ui/widgets/Specialty_shimmer_loading.dart';
import 'package:appointment_app/features/home/ui/widgets/doctors_shimmer_loading.dart';

import '../../data/models/specializations_response_model.dart';
import '../../logic/cubit/home_cubit.dart';
import '../../logic/cubit/home_state.dart';
import 'specialty_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/themes/colors.dart';

class SpecializationsBlocBuilder extends StatelessWidget {
  const SpecializationsBlocBuilder({super.key});

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
            return loading();
          },
          specializationsLoaded: (specializationDataList) {
            var specializationList = specializationDataList;

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
    return Expanded(
      child: Column(
        children: [
          const SpecialtyShimmerLoading(),
          verticalSpacing(10),
          const DoctorsShimmerLoading(),
        ],
      ),
    );
  }

  Widget success(safeSpecializationList) {
    return SpecialtyListView(specializationList: safeSpecializationList);
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
