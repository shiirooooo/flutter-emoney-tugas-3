import 'package:flutter/material.dart';

class PaketDataPage extends StatelessWidget {
  const PaketDataPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Paket Data')),
      body: const Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.signal_cellular_alt, size: 64, color: Colors.indigo),
            SizedBox(height: 16),
            Text('Halaman Paket Data', style: TextStyle(fontSize: 22)),
          ],
        ),
      ),
    );
  }
}
