import 'package:appointment_app/core/helpers/app_regex.dart';
import 'package:appointment_app/core/helpers/spacing.dart';
import 'package:appointment_app/core/themes/colors.dart';
import 'package:appointment_app/core/widgets/app_text_form_field.dart';
import 'package:appointment_app/features/login/logic/cubit/login_cubit.dart';
import 'package:appointment_app/features/login/ui/widgets/password_validation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  bool isObscureText = true;
  late TextEditingController passwordController;
  bool hasLowerCase = false;
  bool hasUpperCase = false;
  bool hasSpecialCharacters = false;
  bool hasNumber = false;
  bool hasMinLength = false;
  @override
  void initState() {
    super.initState();
    passwordController = context
        .read<LoginCubit>()
        .passwordController;
    setupPasswordControllerListener();
  }

  void setupPasswordControllerListener() {
    passwordController.addListener(() {
      setState(() {
        hasLowerCase = AppRegex.hasLowerCase(passwordController.text);
        hasUpperCase = AppRegex.hasUpperCase(passwordController.text);
        hasSpecialCharacters = AppRegex.hasSpecialCharacter(
          passwordController.text,
        );
        hasNumber = AppRegex.hasNumber(passwordController.text);
        hasMinLength = AppRegex.hasMinLength(passwordController.text);
      });
    });
  }

  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        children: [
          AppTextFormField(
            hintText: 'email',
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return 'please enter a valid email';
              }
            },
            controller: context.read<LoginCubit>().emailController,
          ),
          verticalSpacing(18),
          AppTextFormField(
            controller: context.read<LoginCubit>().passwordController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Password is required';
              }

              if (!AppRegex.hasLowerCase(value)) {
                return 'Password must contain at least one lowercase letter';
              }

              if (!AppRegex.hasUpperCase(value)) {
                return 'Password must contain at least one uppercase letter';
              }

              if (!AppRegex.hasNumber(value)) {
                return 'Password must contain at least one number';
              }

              if (!AppRegex.hasSpecialCharacter(value)) {
                return 'Password must contain at least one special character';
              }

              if (!AppRegex.hasMinLength(value)) {
                return 'Password must be at least 8 characters';
              }

              return null; // Valid
            },

            hintText: 'Password',
            isObscureText: isObscureText,
            suffixIcon: IconButton(
              icon: Icon(
                isObscureText
                    ? Icons.visibility_off
                    : Icons.visibility,
                color: isObscureText
                    ? ColorsManger.lightGray
                    : ColorsManger.mainBlue,
              ),
              onPressed: () {
                setState(() {
                  isObscureText = !isObscureText;
                });
              },
            ),
          ),
          verticalSpacing(24),
          PasswordValidation(
            hasLowerCase: hasLowerCase,
            hasUpperCase: hasUpperCase,
            hasNumber: hasNumber,
            hasSpecialCharacters: hasSpecialCharacters,
            hasMinLength: hasMinLength,
          ),
        ],
      ),
    );
  }
}
