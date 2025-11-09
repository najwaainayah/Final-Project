// lib/pages/register_page.dart
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../widgets/custom_button.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});
  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final e = TextEditingController();
  final p = TextEditingController();
  bool loading = false;

  Future<void> _register() async {
    setState(() => loading = true);
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(email: e.text.trim(), password: p.text.trim());
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Account created')));
        Navigator.pop(context);
      }
    } on FirebaseAuthException catch (ex) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(ex.message ?? 'Register failed')));
    } finally {
      setState(() => loading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    // widgets >=5: Column, Text, TextField, TextField, CustomButton, SizedBox
    return Scaffold(
      appBar: AppBar(title: const Text('Register')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: SingleChildScrollView(
            child: Column(children: [
              const Text('Create an account', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),
              TextField(controller: e, decoration: const InputDecoration(labelText: 'Email', border: OutlineInputBorder())),
              const SizedBox(height: 12),
              TextField(controller: p, obscureText: true, decoration: const InputDecoration(labelText: 'Password', border: OutlineInputBorder())),
              const SizedBox(height: 20),
              CustomButton(text: loading ? 'Please wait' : 'Register', onPressed: loading ? null : _register),
            ]),
          ),
        ),
      ),
    );
  }
}
