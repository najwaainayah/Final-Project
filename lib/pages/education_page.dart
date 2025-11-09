// lib/pages/tips_page.dart
import 'package:flutter/material.dart';

class TipsPage extends StatelessWidget {
  const TipsPage({super.key});

  @override
  Widget build(BuildContext context) {
    // widgets >=5: Column, Padding, ListTile x5
    return Scaffold(
      appBar: AppBar(title: const Text('Tips to Save Water')),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(children: const [
          ListTile(leading: Icon(Icons.shower), title: Text('Quick showers'), subtitle: Text('Keep it under 5 minutes')),
          ListTile(leading: Icon(Icons.kitchen), title: Text('Reuse water'), subtitle: Text('Use leftover washing water for plants')),
          ListTile(leading: Icon(Icons.plumbing), title: Text('Fix leaks'), subtitle: Text('Small drips waste lots of water')),
          ListTile(leading: Icon(Icons.local_drink), title: Text('Efficient appliances'), subtitle: Text('Use water-efficient devices')),
          ListTile(leading: Icon(Icons.check), title: Text('Be mindful'), subtitle: Text('Turn off tap when not in use')),
        ]),
      ),
    );
  }
}
