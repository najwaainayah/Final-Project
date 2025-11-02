import 'package:flutter/material.dart';

class TipsPage extends StatelessWidget {
  const TipsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tips Menghemat Air')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          ListTile(title: Text("🚿 Mandi dengan cepat, jangan terlalu lama.")),
          ListTile(title: Text("💧 Matikan keran saat tidak digunakan.")),
          ListTile(title: Text("🌱 Gunakan air bekas cucian untuk menyiram tanaman.")),
          ListTile(title: Text("🪣 Gunakan ember, bukan selang, saat mencuci kendaraan.")),
          ListTile(title: Text("🔧 Perbaiki kebocoran air segera.")),
        ],
      ),
    );
  }
}
