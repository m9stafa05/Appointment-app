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
// flutter run --release --flavor development --target lib/main_development.dart
// 1//03s_YXyFBw4VyCgYIARAAGAMSNwF-L9Ir2lfxrb7N3IgOZKsyJoMmDhNB1Nz1qBdE7BnlhHbOlrDeUaoNBELBXTaXyO24kf4dugg