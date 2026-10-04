import 'package:flutter/material.dart';
import 'screens/atlantis_screen.dart';
import 'screens/meditate_screen.dart';
import 'screens/popular_menu_screen.dart';
import 'screens/course_details_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Figma to Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MenuScreen(),
    );
  }
}

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Выберите макет')),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.image),
            title: const Text('Secrets of Atlantis'),
            subtitle: const Text('Макет 1 (простой)'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const AtlantisScreen()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.image),
            title: const Text('Meditate'),
            subtitle: const Text('Макет 2 (простой)'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const MeditateScreen()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.image),
            title: const Text('Popular Menu'),
            subtitle: const Text('Макет 3 (сложный)'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const PopularMenuScreen()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.image),
            title: const Text('3D Design Basic'),
            subtitle: const Text('Макет 4 (сложный)'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const CourseDetailsScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}