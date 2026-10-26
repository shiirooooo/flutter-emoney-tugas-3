import 'package:flutter/material.dart';

class TarikTunaiPage extends StatelessWidget {
  const TarikTunaiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tarik Tunai')),
      body: const Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.payments_outlined, size: 64, color: Colors.orange),
            SizedBox(height: 16),
            Text('Halaman Tarik Tunai', style: TextStyle(fontSize: 22)),
          ],
        ),
      ),
    );
  }
}
