import 'package:appointment_app/core/networking/api_results.dart';
import 'package:appointment_app/features/sign_up/data/models/sign_up_request_body.dart';
import 'package:appointment_app/features/sign_up/data/models/sign_up_response_body.dart';
import 'package:appointment_app/features/sign_up/data/repo/sign_up_repo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_state.dart';
part 'sign_up_cubit.freezed.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final SignUpRepo signUpRepo;
  SignUpCubit(this.signUpRepo) : super(const SignUpState.initial());
  final formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController passwordConfirmationController =
      TextEditingController();

  void emitSignUp() async {
    emit(const SignUpState.loading());
    final response = await signUpRepo.signUp(
      signUpRequestBody: SignUpRequestBody(
        name: nameController.text,
        email: emailController.text,
        phone: phoneController.text,
        password: passwordController.text,
        passwordConfirmation: passwordConfirmationController.text,
        gender: 0,
      ),
    );
    response.when(
      success: (SignUpResponseBody signUpResponseBody) {
        emit(SignUpState.success(signUpResponseBody));
      },
      failure: (error) {
        emit(
          SignUpState.failed(errorMessage: error.apiErrorModel.message ?? ""),
        );
      },
    );
  }
}
