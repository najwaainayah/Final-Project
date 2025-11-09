// lib/pages/quiz_page.dart
import 'package:flutter/material.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});
  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  final List<String> q = ['What is SDG 6 about?', 'Which saves more water?'];
  final List<List<String>> opts = [['Clean water & sanitation','Poverty'], ['Quick shower','Long bath']];
  final List<int> answers = [0,0];
  int idx = 0;
  int score = 0;

  void choose(int i) {
    if (i == answers[idx]) score++;
    setState(() => idx = (idx + 1) % q.length);
    if (idx == 0) {
      showDialog(context: context, builder: (_) => AlertDialog(title: const Text('Quiz finished'), content: Text('Score: $score'), actions: [TextButton(onPressed: () { Navigator.pop(context); setState(() => score = 0); }, child: const Text('OK'))]));
    }
  }

  @override
  Widget build(BuildContext context) {
    // widgets >=5: Column, Text, SizedBox, Buttons list, ProgressIndicator
    return Scaffold(
      appBar: AppBar(title: const Text('Quick Quiz')),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(children: [
          Text('Question ${idx+1}/${q.length}', style: const TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          Text(q[idx], style: const TextStyle(fontSize: 18)),
          const SizedBox(height: 16),
          ...List.generate(opts[idx].length, (i) => Padding(padding: const EdgeInsets.only(bottom:8), child: ElevatedButton(onPressed: () => choose(i), child: Text(opts[idx][i])))),
          const SizedBox(height: 12),
          LinearProgressIndicator(value: (idx+1)/q.length),
        ]),
      ),
    );
  }
}
