import 'package:flutter/material.dart';

import '../widgets/my_app_drawer.dart';

class AcademicStatusScreen extends StatefulWidget {
  const AcademicStatusScreen({super.key});

  @override
  State<AcademicStatusScreen> createState() =>
      _AcademicStatusScreenState();
}

class _AcademicStatusScreenState
    extends State<AcademicStatusScreen> {

  final TextEditingController averageController =
      TextEditingController();

  String academicStatus = '';

  void evaluateStatus() {
    double average =
        double.tryParse(
              averageController.text,
            ) ??
            0;

    setState(() {

      if (average >= 4.5) {
        academicStatus =
            'Excelente estudiante';
      } else if (average >= 4.0) {
        academicStatus =
            'Muy buen rendimiento';
      } else if (average >= 3.0) {
        academicStatus =
            'Buen rendimiento';
      } else {
        academicStatus =
            'Necesita mejorar';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyAppDrawer(),

      appBar: AppBar(
        title: const Text(
          'Estado Académico',
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [

            const Icon(
              Icons.school,
              size: 100,
              color: Colors.indigo,
            ),

            const SizedBox(height: 20),

            TextField(
              controller: averageController,
              keyboardType: TextInputType.number,

              decoration: const InputDecoration(
                labelText: 'Promedio General',
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20),

            SizedBox(
              width: double.infinity,

              child: ElevatedButton(
                onPressed: evaluateStatus,

                child: const Text(
                  'Evaluar Estado',
                ),
              ),
            ),

            const SizedBox(height: 25),

            Text(
              academicStatus,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.indigo,
              ),
            ),
          ],
        ),
      ),
    );
  }
}