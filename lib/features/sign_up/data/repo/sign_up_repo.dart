import 'package:appointment_app/features/sign_up/data/models/sign_up_request_body.dart';
import 'package:appointment_app/features/sign_up/data/models/sign_up_response_body.dart';

import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_results.dart';
import '../../../../core/networking/api_service.dart';


class SignUpRepo {
    final ApiService _apiService;

  SignUpRepo(this._apiService);
  Future<ApiResults<SignUpResponseBody>> signUp({
    required SignUpRequestBody signUpRequestBody,
  }) async {
    try {
      final response = await _apiService.signup(signUpRequestBody);
      return ApiResults.success(response);
    } catch (error) {
      return ApiResults.failure(ErrorHandler.handle(error));
    }
  }
}