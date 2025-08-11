import 'package:appointment_app/core/helpers/shered_pref.dart';
import 'package:appointment_app/core/networking/api_results.dart';
import 'package:appointment_app/features/login/data/models/login_request_body.dart';
import 'package:appointment_app/features/login/data/models/login_response_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:appointment_app/features/login/data/repo/login_repo.dart';
import 'package:appointment_app/features/login/logic/cubit/login_state.dart';

import '../../../../core/helpers/constants.dart';
import '../../../../core/networking/dio_factory.dart';

// part 'login_state.dart';
// part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this._loginRepo) : super(const LoginState.initial());
  final LoginRepo _loginRepo;
  final formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void emitLoginState() async {
    emit(const LoginState.loading());
    final response = await _loginRepo.login(
      loginRequestBody: LoginRequestBody(
        email: emailController.text,
        password: passwordController.text,
      ),
    );
    response.when(
      success: (LoginResponseBody loginResponseBody) async {
        await saveUserToken(loginResponseBody.data?.token ?? '');
        emit(LoginState.success(loginResponseBody));
      },
      failure: (error) {
        emit(
          LoginState.failed(errorMessage: error.apiErrorModel.message ?? ""),
        );
      },
    );
  }

  Future<void> saveUserToken(String token) async {
    await SharedPref.setData(SharedPrefKey.userToken, token);
    DioFactory.setTokenAfterLogin(token);
  }
}
