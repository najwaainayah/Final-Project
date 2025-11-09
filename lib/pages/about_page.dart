// lib/pages/about_page.dart
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    // widgets: Column, Text, SizedBox, Card x3, ElevatedButton
    return Scaffold(
      appBar: AppBar(title: const Text('About BluBlue')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(children: [
          const Text('BluBlue', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          const Text('An educational app to raise awareness about water and SDG 6.'),
          const SizedBox(height: 12),
          Card(child: Padding(padding: const EdgeInsets.all(10), child: Column(children: const [Text('Goal'), SizedBox(height:4), Text('Promote water conservation')] ))),
          Card(child: Padding(padding: const EdgeInsets.all(10), child: Column(children: const [Text('Audience'), SizedBox(height:4), Text('Students & community')] ))),
          Card(child: Padding(padding: const EdgeInsets.all(10), child: Column(children: const [Text('Tech'), SizedBox(height:4), Text('Flutter + Firebase')] ))),
          const SizedBox(height: 12),
          ElevatedButton(onPressed: () => Navigator.pop(context), child: const Text('Back'))
        ]),
      ),
    );
  }
}
