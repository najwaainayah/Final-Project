// lib/widgets/nav_drawer.dart
import 'package:flutter/material.dart';
import '../pages/about_page.dart';
import '../pages/education_page.dart';
import '../pages/tips_page.dart';
import '../pages/profile_page.dart';
import '../pages/quiz_page.dart';
import '../pages/resources_page.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.lightBlue),
            child: Text('BluBlue Menu', style: TextStyle(color: Colors.white, fontSize: 20)),
          ),
          ListTile(leading: const Icon(Icons.home), title: const Text('Home'), onTap: () => Navigator.pop(context)),
          ListTile(leading: const Icon(Icons.info), title: const Text('About'), onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const AboutPage()))),
          ListTile(leading: const Icon(Icons.book), title: const Text('Education'), onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const EducationPage()))),
          ListTile(leading: const Icon(Icons.lightbulb), title: const Text('Tips'), onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const TipsPage()))),
          ListTile(leading: const Icon(Icons.quiz), title: const Text('Quiz'), onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const QuizPage()))),
          ListTile(leading: const Icon(Icons.folder), title: const Text('Resources'), onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const ResourcesPage()))),
          ListTile(leading: const Icon(Icons.person), title: const Text('Profile'), onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const ProfilePage()))),
        ],
      ),
    );
  }
}
