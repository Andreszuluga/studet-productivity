import 'package:go_router/go_router.dart';

import '../features/screens/home_screen.dart';
import '../features/screens/grades_screen.dart';
import '../features/screens/exam_countdown_screen.dart';
import '../features/screens/study_time_screen.dart';
import '../features/screens/academic_status_screen.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: '/grades',
        builder: (context, state) => const GradesScreen(),
      ),
      GoRoute(
        path: '/exam',
        builder: (context, state) => const ExamCountdownScreen(),
      ),
      GoRoute(
        path: '/study',
        builder: (context, state) => const StudyTimeScreen(),
      ),
      GoRoute(
        path: '/status',
        builder: (context, state) => const AcademicStatusScreen(),
      ),
    ],
  );
}