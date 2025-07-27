import 'package:appointment_app/core/networking/api_results.dart';
import 'package:appointment_app/features/login/data/models/login_request_body.dart';
import 'package:appointment_app/features/login/data/models/login_response_body.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:appointment_app/features/login/data/repo/login_repo.dart';
import 'package:appointment_app/features/login/logic/cubit/login_state.dart';

// part 'login_state.dart';
// part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this._loginRepo) : super(const LoginState.initial());
  final LoginRepo _loginRepo;

  void emitLoginState(LoginRequestBody loginRequestBody) async {
    emit(const LoginState.loading());
    final response = await _loginRepo.login(
      loginRequestBody: loginRequestBody,
    );
    response.when(
      success: (LoginResponseBody loginResponseBody) {
        emit(LoginState.success(loginResponseBody));
      },
      failure: (error) {
        emit(
          LoginState.failed(
            errorMessage: error.apiErrorModel.message ?? "",
          ),
        );
      },
    );
  }
}
