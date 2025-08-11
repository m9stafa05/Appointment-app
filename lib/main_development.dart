import 'package:appointment_app/core/di/dependency_injection.dart';
import 'package:appointment_app/core/helpers/constants.dart';
import 'package:appointment_app/core/helpers/extensions.dart';
import 'package:appointment_app/core/helpers/shered_pref.dart';
import 'package:appointment_app/core/routing/app_router.dart';
import 'package:appointment_app/doc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  await ScreenUtil.ensureScreenSize();
  await checkLoggedInUser();
  runApp(DocApp(appRouter: AppRouter()));
}

checkLoggedInUser() async {
  String? userToken =await SharedPref.getString(SharedPrefKey.userToken);
  if (userToken.isNullOrEmpty()) {
    isLoggedInUser = false;
  } else {
    isLoggedInUser = true;
  }
}

// flutter run --release --flavor development --target lib/main_development.dart
// test143@gmail.com
// Test@123
