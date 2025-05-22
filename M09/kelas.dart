import 'package:flutter/material.dart';

class Kelas extends StatelessWidget {
  const Kelas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Kelas'),
      //   foregroundColor: Colors.white,
      //   backgroundColor: Colors.purple,
      // ),
      body: const Center(
        child: Text('IF B - Pagi Semester IV', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
      ),
    );
  }
}
