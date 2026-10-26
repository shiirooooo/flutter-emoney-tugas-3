import 'package:flutter/material.dart';

class ListrikPage extends StatelessWidget {
  const ListrikPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Listrik')),
      body: const Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.bolt, size: 64, color: Colors.amber),
            SizedBox(height: 16),
            Text('Halaman Listrik', style: TextStyle(fontSize: 22)),
          ],
        ),
      ),
    );
  }
}
