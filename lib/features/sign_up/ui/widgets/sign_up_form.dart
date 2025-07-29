import 'package:appointment_app/core/helpers/app_regex.dart';
import 'package:appointment_app/features/sign_up/logic/cubit/sign_up_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/themes/colors.dart';
import '../../../../core/widgets/app_text_form_field.dart';
import '../../../login/ui/widgets/password_validation.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
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
        .read<SignUpCubit>()
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
      key: context.read<SignUpCubit>().formKey,
      child: Column(
        children: [
          AppTextFormField(
            hintText: 'name',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'please enter a valid name';
              }
            },
            controller: context.read<SignUpCubit>().nameController,
          ),
          verticalSpacing(18),
          AppTextFormField(
            hintText: 'Phone',
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isPhoneNumberValid(value)) {
                return 'please enter a valid Phone Number';
              }
            },
            controller: context.read<SignUpCubit>().phoneController,
          ),
          verticalSpacing(18),
          AppTextFormField(
            hintText: 'email',
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return 'please enter a valid email';
              }
            },
            controller: context.read<SignUpCubit>().emailController,
          ),
          verticalSpacing(18),
          AppTextFormField(
            controller: context
                .read<SignUpCubit>()
                .passwordController,
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
          verticalSpacing(18),
          AppTextFormField(
            controller: context
                .read<SignUpCubit>()
                .passwordConfirmationController,
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
              if (context
                      .read<SignUpCubit>()
                      .passwordController
                      .text !=
                  context
                      .read<SignUpCubit>()
                      .passwordConfirmationController
                      .text) {
                return 'Passwords do not match. Please confirm your password correctly.';
              }
              return null; // Valid
            },
            hintText: 'Password Confirmation',
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
