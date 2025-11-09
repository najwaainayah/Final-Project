// lib/pages/home_page.dart
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../widgets/nav_drawer.dart';
import 'profile_page.dart';
import 'education_page.dart';
import 'tips_page.dart';
import 'about_page.dart';
import 'quiz_page.dart';
import 'resources_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    // widgets >=5: Scaffold, AppBar, Drawer, GridView, Cards
    return Scaffold(
      appBar: AppBar(title: const Text('BluBlue Home')),
      drawer: const AppDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(children: [
          Text('Hello, ${user?.email ?? 'Guest'}', style: const TextStyle(fontSize: 20)),
          const SizedBox(height: 12),
          const Text('Explore topics about water, sustainability and tips to save water.'),
          const SizedBox(height: 16),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              childAspectRatio: 1.0,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              children: [
                _card(context, 'Education', Icons.book, () => Navigator.push(context, MaterialPageRoute(builder: (_) => const EducationPage()))),
                _card(context, 'Tips', Icons.lightbulb, () => Navigator.push(context, MaterialPageRoute(builder: (_) => const TipsPage()))),
                _card(context, 'Quiz', Icons.quiz, () => Navigator.push(context, MaterialPageRoute(builder: (_) => const QuizPage()))),
                _card(context, 'Resources', Icons.folder, () => Navigator.push(context, MaterialPageRoute(builder: (_) => const ResourcesPage()))),
                _card(context, 'Profile', Icons.person, () => Navigator.push(context, MaterialPageRoute(builder: (_) => const ProfilePage()))),
                _card(context, 'About', Icons.info, () => Navigator.push(context, MaterialPageRoute(builder: (_) => const AboutPage()))),
              ],
            ),
          ),
        ]),
      ),
    );
  }

  Widget _card(BuildContext c, String title, IconData icon, VoidCallback onTap) {
    return Card(
      child: InkWell(
        onTap: onTap,
        child: Center(
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            Icon(icon, size: 44, color: Colors.lightBlue),
            const SizedBox(height: 8),
            Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 6),
            const Text('Tap to open', style: TextStyle(fontSize: 12)),
            const SizedBox(height: 6),
            const Icon(Icons.arrow_forward_ios, size: 12)
          ]),
        ),
      ),
    );
  }
}
