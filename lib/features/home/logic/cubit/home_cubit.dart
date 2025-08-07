import 'package:appointment_app/core/networking/api_results.dart';
import 'package:appointment_app/features/home/data/repos/home_repo.dart';
import 'package:appointment_app/features/home/logic/cubit/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/specializations_response_model.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(const HomeState.initial());

  void emitGetSpecializations() async {
    emit(const HomeState.specializationsLoading());
    final response = await _homeRepo.getSpecialization();
    response.when(
      success: (SpecializationsResponseModel specializationsResponseModel) {
        emit(HomeState.specializationsLoaded(specializationsResponseModel));
      },
      failure: (errorMessage) {
        emit(HomeState.specializationsFailed(error: errorMessage));
      },
    );
  }
}
