import 'package:appointment_app/features/home/data/models/specializations_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/networking/api_error_handler.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;

  // Specializations
  const factory HomeState.specializationsLoading() = SpecializationsLoading;
  const factory HomeState.specializationsLoaded(
    List<SpecializationsData?>? specializationDataList,
  ) = SpecializationsLoaded;
  const factory HomeState.specializationsFailed({required ErrorHandler error}) =
      SpecializationsFailed;

  // Doctors
  const factory HomeState.doctorsLoaded(List<Doctors?>? doctors) = DoctorsLoaded;
  const factory HomeState.doctorsFailed({required ErrorHandler error}) =
      DoctorsFailed;
}
