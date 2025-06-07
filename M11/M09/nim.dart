import 'package:flutter/material.dart';

class Nim extends StatelessWidget {
  const Nim({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('NIM'),
      //   foregroundColor: Colors.white,
      //   backgroundColor: Colors.purple,
      // ),
      body: Center(
        child: TextButton(
          onPressed: () {},
          child: OutlinedButton(
            onPressed: () {},
            child: const Text(
              '231110822',
              style: TextStyle(fontSize: 13, color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
