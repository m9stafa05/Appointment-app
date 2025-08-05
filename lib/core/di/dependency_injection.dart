import 'package:appointment_app/core/networking/api_service.dart';
import 'package:appointment_app/core/networking/dio_factory.dart';
import 'package:appointment_app/features/login/data/repo/login_repo.dart';
import 'package:appointment_app/features/login/logic/cubit/login_cubit.dart';
import 'package:appointment_app/features/sign_up/data/repo/sign_up_repo.dart';
import 'package:appointment_app/features/sign_up/logic/cubit/sign_up_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
Future<void> setupGetIt() async {
  // Create a Dio instance using DioFactory
  Dio dio = DioFactory.getDio();
  // Register ApiService as a lazy singleton
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // Login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  // SigUp
  getIt.registerLazySingleton<SignUpRepo>(() => SignUpRepo(getIt()));
  getIt.registerFactory<SignUpCubit>(() => SignUpCubit(getIt()));
}
