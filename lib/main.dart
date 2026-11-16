import 'package:flutter/material.dart';
import 'src/routes/app_router.dart';

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
      routerConfig: AppRouter.router,
    );
  }
}