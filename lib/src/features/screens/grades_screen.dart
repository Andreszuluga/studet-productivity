import 'package:flutter/material.dart';

import '../widgets/my_app_drawer.dart';

class GradesScreen extends StatefulWidget {
  const GradesScreen({super.key});

  @override
  State<GradesScreen> createState() => _GradesScreenState();
}

class _GradesScreenState extends State<GradesScreen> {
  final TextEditingController grade1Controller =
      TextEditingController();

  final TextEditingController grade2Controller =
      TextEditingController();

  final TextEditingController grade3Controller =
      TextEditingController();

  double average = 0;

  String message = "";

  void calculateAverage() {
    final double grade1 =
        double.tryParse(grade1Controller.text) ?? 0;

    final double grade2 =
        double.tryParse(grade2Controller.text) ?? 0;

    final double grade3 =
        double.tryParse(grade3Controller.text) ?? 0;

    setState(() {
      average = (grade1 + grade2 + grade3) / 3;

      if (average >= 4.5) {
        message = "Excelente estudiante";
      } else if (average >= 4.0) {
        message = "Muy buen rendimiento";
      } else if (average >= 3.0) {
        message = "Buen rendimiento";
      } else {
        message = "Necesita mejorar";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyAppDrawer(),

      appBar: AppBar(
        title: const Text("Calculadora de Notas"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            TextField(
              controller: grade1Controller,
              keyboardType: TextInputType.number,

              decoration: const InputDecoration(
                labelText: "Nota 1",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 15),

            TextField(
              controller: grade2Controller,
              keyboardType: TextInputType.number,

              decoration: const InputDecoration(
                labelText: "Nota 2",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 15),

            TextField(
              controller: grade3Controller,
              keyboardType: TextInputType.number,

              decoration: const InputDecoration(
                labelText: "Nota 3",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: calculateAverage,
                child: const Text(
                  "Calcular Promedio",
                ),
              ),
            ),

            const SizedBox(height: 25),

            Text(
              "Promedio: ${average.toStringAsFixed(2)}",
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            Text(
              message,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.indigo,
              ),
            ),
          ],
        ),
      ),
    );
  }
}