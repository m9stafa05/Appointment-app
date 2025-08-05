import 'package:appointment_app/core/di/dependency_injection.dart';
import 'package:appointment_app/core/routing/app_router.dart';
import 'package:appointment_app/doc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  setupGetIt();
  await ScreenUtil.ensureScreenSize();
  runApp(DocApp(appRouter: AppRouter()));
}
// fastlane firebase_distribution
// flutter run --release --flavor production --target lib/main_production.dart
// flutter build apk --release --flavor production --target lib/main_production.dart --no-tree-shake-icons