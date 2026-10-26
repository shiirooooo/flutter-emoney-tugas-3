import 'package:flutter/material.dart';

class InternetPage extends StatelessWidget {
  const InternetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Internet')),
      body: const Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.wifi, size: 64, color: Colors.teal),
            SizedBox(height: 16),
            Text('Halaman Internet', style: TextStyle(fontSize: 22)),
          ],
        ),
      ),
    );
  }
}
