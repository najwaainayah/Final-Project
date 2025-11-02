import 'package:flutter/material.dart';

class EducationPage extends StatelessWidget {
  const EducationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Edukasi Air Bersih')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          Text(
            "Kenapa Air Penting?",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 12),
          Text(
              "Air bersih sangat penting untuk kesehatan dan kehidupan. Kekurangan air bisa memicu banyak masalah sosial dan lingkungan."),
          SizedBox(height: 20),
          Text(
            "SDG 6 - Clean Water & Sanitation",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text(
              "Tujuan pembangunan berkelanjutan nomor 6 memastikan semua orang memiliki akses ke air bersih dan sanitasi."),
        ],
      ),
    );
  }
}
