import 'package:appointment_app/core/helpers/extensions.dart';
import 'package:appointment_app/core/networking/api_error_handler.dart';
import 'package:appointment_app/core/networking/api_error_model.dart';
import 'package:appointment_app/core/networking/api_results.dart';
import 'package:appointment_app/features/home/data/repos/home_repo.dart';
import 'package:appointment_app/features/home/logic/cubit/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/specializations_response_model.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(const HomeState.initial());
  List<SpecializationsData?>? specializationDataList = [];
  void emitGetSpecializations() async {
    emit(const HomeState.specializationsLoading());
    final response = await _homeRepo.getSpecialization();
    response.when(
      success: (SpecializationsResponseModel specializationsResponseModel) {
        specializationDataList =
            specializationsResponseModel.specializationDataList ?? [];

        /// get doctors list by specialization id for the first specialization by default
        getDoctorsList(
          specializationId: specializationDataList?.first?.id ?? 0,
        );
        emit(HomeState.specializationsLoaded(specializationDataList));
      },
      failure: (errorMessage) {
        emit(HomeState.specializationsFailed(error: errorMessage));
      },
    );
  }

  /// returns doctors list by specialization id
  void getDoctorsList({required int specializationId}) {
    List<Doctors?>? specializationDoctorsList = filterDoctorSpecializationById(
      specializationId,
    );
    if (specializationDoctorsList.isNullOrEmpty()) {
      emit(
        HomeState.doctorsFailed(
          error: ErrorHandler.handle(
            ApiErrorModel(message: 'No doctors found'),
          ),
        ),
      );
    } else {
      emit(HomeState.doctorsLoaded(specializationDoctorsList));
    }
  }

  /// returns doctors list by specialization id
  filterDoctorSpecializationById(specializationId) {
    return specializationDataList
        ?.firstWhere((specialization) => specialization?.id == specializationId)
        ?.doctorsList;
  }
}
