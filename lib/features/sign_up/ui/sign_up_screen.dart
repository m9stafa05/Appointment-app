import 'package:appointment_app/core/helpers/extensions.dart';
import '../../../core/routing/routes.dart';
import '../logic/cubit/sign_up_cubit.dart';
import 'widgets/sign_up_bloc_listener.dart';
import 'widgets/already_have_account.dart';
import '../../../core/helpers/spacing.dart';
import '../../../core/themes/text_styles.dart';
import '../../../core/widgets/custom_text_button.dart';
import '../../login/ui/widgets/terms_and_conditions.dart';
import 'widgets/sign_up_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (bool didPop, dynamic result) {
        if (!didPop) {
          context.pushReplacementNamed(Routes.loginScreen);
          // SystemNavigator.pop(); // Exit the app gracefully
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
                    "Create Account",
                    style: TextStyles.font24BlueBold,
                  ),
                  verticalSpacing(8),
                  Text(
                    "Sign up now and start exploring all that our app has to offer. We're excited to welcome you to our community!",
                    style: TextStyles.font14GrayRegular.copyWith(
                      height: 2,
                    ),
                  ),
                  verticalSpacing(30),
                  Column(
                    children: [
                      const SignUpForm(),
                      Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: Text(
                          'Forgot Password?',
                          style: TextStyles.font12BlueRegular,
                        ),
                      ),
                      verticalSpacing(36),
                      CustomTextButton(
                        buttonText: 'Create Account',
                        textStyle: TextStyles.font16WhiteSemiBold,
                        onPressed: () {
                          validateAndSignUp(context);
                        },
                      ),
                      verticalSpacing(20),
                      const TermsAndConditions(),
                      verticalSpacing(30),
                      const AlreadyHaveAccountText(),
                      const SignUpBlocListener(),
                      verticalSpacing(20),
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

  void validateAndSignUp(BuildContext context) {
    final cubit = context.read<SignUpCubit>();
    if (cubit.formKey.currentState!.validate()) {
      cubit.emitSignUp();
    }
  }
}
