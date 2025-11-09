// lib/pages/profile_page.dart
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../widgets/custom_button.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final u = FirebaseAuth.instance.currentUser;
    // widgets >=5: Column, CircleAvatar, Text, ListTile x2, CustomButton
    return Scaffold(
      appBar: AppBar(title: const Text('Profile')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(children: [
          CircleAvatar(radius: 40, backgroundColor: Colors.lightBlue, child: Text(u?.email?.substring(0,1).toUpperCase() ?? 'U')),
          const SizedBox(height: 12),
          Text(u?.email ?? 'No email', style: const TextStyle(fontSize: 18)),
          const SizedBox(height: 12),
          ListTile(leading: const Icon(Icons.info), title: const Text('Account'), subtitle: Text(u?.uid ?? '')),
          ListTile(leading: const Icon(Icons.settings), title: const Text('Settings'), subtitle: const Text('Theme, Notifications')),
          const SizedBox(height: 12),
          CustomButton(text: 'Sign out', onPressed: () async { await FirebaseAuth.instance.signOut(); }),
        ]),
      ),
    );
  }
}
