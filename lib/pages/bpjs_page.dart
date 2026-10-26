import 'package:flutter/material.dart';

class BpjsPage extends StatelessWidget {
  const BpjsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('BPJS')),
      body: const Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.health_and_safety_outlined, size: 64, color: Colors.red),
            SizedBox(height: 16),
            Text('Halaman BPJS', style: TextStyle(fontSize: 22)),
          ],
        ),
      ),
    );
  }
}
