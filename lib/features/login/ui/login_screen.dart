import 'package:appointment_app/features/login/ui/widgets/dont_have_account.dart';
import 'package:flutter/services.dart';

import '../../../core/helpers/spacing.dart';
import 'package:appointment_app/core/themes/text_styles.dart';
import '../../../core/widgets/custom_text_button.dart';
import '../logic/cubit/login_cubit.dart';
import 'login_bloc_listener.dart';
import 'widgets/email_and_password.dart';
import 'widgets/terms_and_conditions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (bool didPop, dynamic result) {
        if (!didPop) {
          SystemNavigator.pop(); // Exit the app gracefully
        }
      },
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: 50.h,
              horizontal: 30.w,
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome Back",
                    style: TextStyles.font24BlueBold,
                  ),
                  verticalSpacing(8),
                  Text(
                    "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                    style: TextStyles.font14GrayRegular.copyWith(
                      height: 2,
                    ),
                  ),
                  verticalSpacing(36),
                  Column(
                    children: [
                      const EmailAndPassword(),
                      Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: Text(
                          'Forgot Password?',
                          style: TextStyles.font12BlueRegular,
                        ),
                      ),
                      verticalSpacing(36),
                      CustomTextButton(
                        buttonText: 'Login',
                        textStyle: TextStyles.font16WhiteSemiBold,
                        onPressed: () {
                          validateAndLogin(context);
                        },
                      ),
                      verticalSpacing(20),
                      const TermsAndConditions(),
                      verticalSpacing(30),
                      const DontHaveAccount(),
                      const LoginBlocListener(),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void validateAndLogin(BuildContext context) {
    final cubit = context.read<LoginCubit>();
    if (cubit.formKey.currentState!.validate()) {
      cubit.emitLoginState();
    }
  }
}
