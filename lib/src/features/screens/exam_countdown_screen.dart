import 'package:flutter/material.dart';

import '../widgets/my_app_drawer.dart';

class ExamCountdownScreen extends StatefulWidget {
  const ExamCountdownScreen({super.key});

  @override
  State<ExamCountdownScreen> createState() =>
      _ExamCountdownScreenState();
}

class _ExamCountdownScreenState
    extends State<ExamCountdownScreen> {

  DateTime? examDate;

  int daysRemaining = 0;

  Future<void> selectExamDate() async {

    DateTime? selectedDate =
        await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2035),
    );

    if (selectedDate == null) return;

    int difference =
        selectedDate
            .difference(DateTime.now())
            .inDays;

    setState(() {
      examDate = selectedDate;
      daysRemaining = difference;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyAppDrawer(),

      appBar: AppBar(
        title: const Text(
          'Cuenta Regresiva Exámenes',
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [

            const Icon(
              Icons.calendar_month,
              size: 100,
              color: Colors.indigo,
            ),

            const SizedBox(height: 20),

            SizedBox(
              width: double.infinity,

              child: ElevatedButton(
                onPressed: selectExamDate,

                child: Text(
                  examDate == null
                      ? 'Seleccionar Fecha'
                      : 'Cambiar Fecha',
                ),
              ),
            ),

            const SizedBox(height: 25),

            if (examDate != null)
              Text(
                'Fecha seleccionada: '
                '${examDate!.day}/${examDate!.month}/${examDate!.year}',
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),

            const SizedBox(height: 15),

            if (examDate != null)
              Text(
                'Faltan $daysRemaining días para el examen',
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