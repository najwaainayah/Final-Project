// lib/pages/login_page.dart
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../widgets/custom_button.dart';
import 'register_page.dart';
import 'home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final e = TextEditingController();
  final p = TextEditingController();
  bool loading = false;

  Future<void> _login() async {
    setState(() => loading = true);
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(email: e.text.trim(), password: p.text.trim());
      if (mounted) Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const HomePage()));
    } on FirebaseAuthException catch (ex) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(ex.message ?? 'Login failed')));
    } finally {
      setState(() => loading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    // >=5 widgets: Column, Text, SizedBox, TextField, TextField, CustomButton, TextButton
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: SingleChildScrollView(
            child: Column(children: [
              const Text('Welcome back!', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),
              const Text('Sign in to continue to BluBlue'),
              const SizedBox(height: 24),
              TextField(controller: e, decoration: const InputDecoration(labelText: 'Email', border: OutlineInputBorder())),
              const SizedBox(height: 12),
              TextField(controller: p, obscureText: true, decoration: const InputDecoration(labelText: 'Password', border: OutlineInputBorder())),
              const SizedBox(height: 20),
              CustomButton(text: loading ? 'Loading...' : 'Login', onPressed: loading ? null : _login),
              const SizedBox(height: 8),
              TextButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const RegisterPage())), child: const Text('Create account'))
            ]),
          ),
        ),
      ),
    );
  }
}
