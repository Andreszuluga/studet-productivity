import 'package:flutter/material.dart';

import '../widgets/my_app_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyAppDrawer(),

      appBar: AppBar(
        title: const Text('Student Productivity'),
      ),

      body: const Center(
        child: Text(
          'Home Screen',
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}