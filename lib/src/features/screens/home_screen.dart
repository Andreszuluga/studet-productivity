import 'package:flutter/material.dart';

import '../widgets/my_app_drawer.dart';
import '../../core/constants/app_constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyAppDrawer(),

      appBar: AppBar(
        title: Text(
          AppConstants.appName,
          style: const TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,),
          ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [

              const Icon(
                Icons.school,
                size: 120,
                color: Colors.indigo,
              ),

              const SizedBox(height: 20),

              Text(
                AppConstants.appName,
                style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20),

              const Text(
                "Aplicación desarrollada en Flutter para ayudar a los estudiantes a gestionar sus actividades académicas.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),

              const SizedBox(height: 30),

              Card(
                elevation: 4,

                child: Padding(
                  padding: EdgeInsets.all(15),

                  child: Column(
                    children: [

                      Text(
                        "Funciones disponibles",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: 10),

                      Text("✅ Calculadora de notas"),
                      Text("✅ Cuenta regresiva de exámenes"),
                      Text("✅ Horas de estudio"),
                      Text("✅ Estado académico"),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 30),

              Text(
                "Desarrollado por: ${AppConstants.developer}",
                style: const TextStyle(
                color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}