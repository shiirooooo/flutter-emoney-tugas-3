import 'package:flutter/material.dart';

class TopUpPage extends StatelessWidget {
  const TopUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Top Up')),
      body: const Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.add_card, size: 64, color: Colors.green),
            SizedBox(height: 16),
            Text('Halaman Top Up', style: TextStyle(fontSize: 22)),
          ],
        ),
      ),
    );
  }
}
