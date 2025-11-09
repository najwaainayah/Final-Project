// lib/pages/education_page.dart
import 'package:flutter/material.dart';

class EducationPage extends StatelessWidget {
  const EducationPage({super.key});

  @override
  Widget build(BuildContext context) {
    // widgets >=5: ListView, Padding, Text, Card x3, ElevatedButton
    return Scaffold(
      appBar: AppBar(title: const Text('Education')),
      body: ListView(padding: const EdgeInsets.all(12), children: [
        const Text('Why Water Matters', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        const SizedBox(height: 8),
        const Text('Clean water is essential for health, agriculture and ecosystems.'),
        const SizedBox(height: 12),
        Card(child: ListTile(title: const Text('SDG 6'), subtitle: const Text('Ensure availability and sustainable management of water.'))),
        Card(child: ListTile(title: const Text('Contamination'), subtitle: const Text('How pollution affects communities.'))),
        Card(child: ListTile(title: const Text('Conservation'), subtitle: const Text('Practical ways to save water'))),
        const SizedBox(height: 12),
        ElevatedButton(onPressed: () => Navigator.pop(context), child: const Text('Back'))
      ]),
    );
  }
}
