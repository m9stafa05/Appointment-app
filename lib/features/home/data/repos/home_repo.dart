import 'package:appointment_app/core/networking/api_results.dart';

import '../../../../core/networking/api_error_handler.dart';
import '../apis/home_api_service.dart';
import '../models/specializations_response_model.dart';

class HomeRepo {
  final HomeApiService _homeApiService;

  HomeRepo(this._homeApiService);

  Future<ApiResults<SpecializationsResponseModel>>
  getSpecialization() async {
    try {
      final response = await _homeApiService.getSpecialization();
      return ApiResults.success(response);
    } catch (error) {
      return ApiResults.failure(ErrorHandler.handle(error));
    }
  }
}
