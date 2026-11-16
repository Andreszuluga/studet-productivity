import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MyAppDrawer extends StatelessWidget {
  const MyAppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [

          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.indigo,
            ),
            child: Center(
              child: Text(
                'Student Productivity',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Inicio'),
            onTap: () => context.go('/'),
          ),

          ListTile(
            leading: const Icon(Icons.grade),
            title: const Text('Notas'),
            onTap: () => context.go('/grades'),
          ),

          ListTile(
            leading: const Icon(Icons.calendar_month),
            title: const Text('Exámenes'),
            onTap: () => context.go('/exam'),
          ),

          ListTile(
            leading: const Icon(Icons.access_time),
            title: const Text('Horas de estudio'),
            onTap: () => context.go('/study'),
          ),

          ListTile(
            leading: const Icon(Icons.school),
            title: const Text('Estado académico'),
            onTap: () => context.go('/status'),
          ),
        ],
      ),
    );
  }
}