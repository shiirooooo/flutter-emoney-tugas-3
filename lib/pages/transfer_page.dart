import 'package:flutter/material.dart';

class TransferPage extends StatelessWidget {
  const TransferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Transfer')),
      body: const Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.swap_horiz, size: 64, color: Colors.blue),
            SizedBox(height: 16),
            Text('Halaman Transfer', style: TextStyle(fontSize: 22)),
          ],
        ),
      ),
    );
  }
}
