import 'package:flutter/material.dart';
import 'src/routes/app_router.dart';
import 'src/core/themes/app_theme.dart';

void main() {
  runApp(const StudentProductivityApp());
}

class StudentProductivityApp extends StatelessWidget {
  const StudentProductivityApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
  debugShowCheckedModeBanner: false,

  title: 'Student Productivity',

  theme: AppTheme.lightTheme,

  routerConfig: AppRouter.router,
);
  }
}