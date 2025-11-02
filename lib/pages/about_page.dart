import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tentang BluBlue')),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("🌊 BluBlue App", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            SizedBox(height: 12),
            Text("Aplikasi edukasi untuk meningkatkan kesadaran akan pentingnya air bersih."),
            SizedBox(height: 12),
            Text("Dibuat oleh mahasiswa dengan tujuan mendukung SDG 6: Clean Water and Sanitation."),
          ],
        ),
      ),
    );
  }
}
