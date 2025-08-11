import 'package:appointment_app/core/helpers/constants.dart';
import 'package:appointment_app/core/helpers/shered_pref.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  /// private constructor as I don't want to allow creating an instance of this class
  DioFactory._();

  static Dio? dio;

  static Dio getDio() {
    Duration timeOut = const Duration(seconds: 30);

    if (dio == null) {
      dio = Dio();
      dio!
        ..options.connectTimeout = timeOut
        ..options.receiveTimeout = timeOut;
      addDioHeader();
      addDioInterceptor();
      return dio!;
    } else {
      return dio!;
    }
  }

  static void addDioHeader() {

    dio?.options.headers = {
      "Accept": "application/json",
      "Content-Type": "application/json",
    };
  }

  static void setTokenAfterLogin(String token) {
    // Update headers while preserving existing ones
    dio?.options.headers.addAll({"Authorization": "Bearer $token"});
  }

  static void clearToken() {
    dio?.options.headers.remove("Authorization");
  }

  static void addDioInterceptor() {
  dio?.interceptors.addAll([
      // Add token interceptor
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          // Get fresh token for each request
          final token = await SharedPref.getSecuredString(SharedPrefKey.userToken);
          if (token != null && token.toString().isNotEmpty) {
            options.headers['Authorization'] = 'Bearer $token';
          }
          handler.next(options);
        },
      ),
      PrettyDioLogger(
        requestBody: true,
        requestHeader: true,
        responseHeader: true,
      ),
    ]);
  }
}
