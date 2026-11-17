import 'package:flutter/material.dart';

import '../widgets/my_app_drawer.dart';

class StudyTimeScreen extends StatefulWidget {
  const StudyTimeScreen({super.key});

  @override
  State<StudyTimeScreen> createState() => _StudyTimeScreenState();
}

class _StudyTimeScreenState extends State<StudyTimeScreen> {
  final TextEditingController hoursController =
      TextEditingController();

  final TextEditingController daysController =
      TextEditingController();

  int totalHours = 0;

  void calculateStudyTime() {
    int hours =
        int.tryParse(hoursController.text) ?? 0;

    int days =
        int.tryParse(daysController.text) ?? 0;

    setState(() {
      totalHours = hours * days;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyAppDrawer(),

      appBar: AppBar(
        title: const Text('Horas de Estudio'),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [

            const Icon(
              Icons.access_time,
              size: 100,
              color: Colors.indigo,
            ),

            const SizedBox(height: 20),

            TextField(
              controller: hoursController,
              keyboardType: TextInputType.number,

              decoration: const InputDecoration(
                labelText: 'Horas por día',
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 15),

            TextField(
              controller: daysController,
              keyboardType: TextInputType.number,

              decoration: const InputDecoration(
                labelText: 'Días por semana',
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20),

            SizedBox(
              width: double.infinity,

              child: ElevatedButton(
                onPressed: calculateStudyTime,

                child: const Text(
                  'Calcular Horas',
                ),
              ),
            ),

            const SizedBox(height: 25),

            Text(
              'Horas semanales: $totalHours',
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