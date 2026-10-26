import 'package:flutter/material.dart';

class AirPage extends StatelessWidget {
  const AirPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Air')),
      body: const Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.water_drop_outlined, size: 64, color: Colors.cyan),
            SizedBox(height: 16),
            Text('Halaman Air', style: TextStyle(fontSize: 22)),
          ],
        ),
      ),
    );
  }
}
