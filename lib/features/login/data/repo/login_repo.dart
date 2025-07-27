import 'package:appointment_app/core/networking/api_error_handler.dart';
import 'package:appointment_app/core/networking/api_results.dart';
import 'package:appointment_app/core/networking/api_service.dart';
import 'package:appointment_app/features/login/data/models/login_request_body.dart';
import 'package:appointment_app/features/login/data/models/login_response_body.dart';

class LoginRepo {
  final ApiService _apiService;

  LoginRepo(this._apiService);
  Future<ApiResults<LoginResponseBody>> login({
    required LoginRequestBody loginRequestBody,
  }) async {
    try {
      final response = await _apiService.login(loginRequestBody);
      return ApiResults.success(response);
    } catch (error) {
      return ApiResults.failure(ErrorHandler.handle(error));
    }
  }
}
