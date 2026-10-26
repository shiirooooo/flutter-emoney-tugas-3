import 'package:flutter/material.dart';

class PulsaPage extends StatelessWidget {
  const PulsaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pulsa')),
      body: const Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.phone_android, size: 64, color: Colors.purple),
            SizedBox(height: 16),
            Text('Halaman Pulsa', style: TextStyle(fontSize: 22)),
          ],
        ),
      ),
    );
  }
}
