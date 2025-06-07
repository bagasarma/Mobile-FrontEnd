import 'package:flutter/material.dart';

class Nama extends StatelessWidget {
  const Nama({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Nama'),
      //   foregroundColor: Colors.white,
      //   backgroundColor: Colors.purple,
      // ),
      body: const Center(
        child: Text('Bagas Arma',
            style: TextStyle(
                fontSize: 13,
                backgroundColor: Colors.red,
                color: Colors.white)),
      ),
    );
  }
}
