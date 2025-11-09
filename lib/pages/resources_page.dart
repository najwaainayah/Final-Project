// lib/pages/resources_page.dart
import 'package:flutter/material.dart';

class ResourcesPage extends StatelessWidget {
  const ResourcesPage({super.key});
  @override
  Widget build(BuildContext context) {
    // widgets >=5: ListView, Card x3, Text, ElevatedButton
    return Scaffold(
      appBar: AppBar(title: const Text('Resources')),
      body: ListView(padding: const EdgeInsets.all(12), children: [
        Card(child: ListTile(title: const Text('UN SDG 6'), subtitle: const Text('https://sdgs.un.org/goals/goal6'))),
        Card(child: ListTile(title: const Text('Water.org'), subtitle: const Text('https://water.org'))),
        Card(child: ListTile(title: const Text('Local conservation tips'), subtitle: const Text('Community programs'))),
        const SizedBox(height: 12),
        ElevatedButton(onPressed: () => Navigator.pop(context), child: const Text('Back'))
      ]),
    );
  }
}
