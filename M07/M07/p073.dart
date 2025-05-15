import 'package:flutter/material.dart';

class P073 extends StatefulWidget {
  const P073({super.key});

  @override
  State<P073> createState() => _P073State();
}

class _P073State extends State<P073> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tentang Saya"),
        foregroundColor: Colors.white,
        backgroundColor: Colors.purple,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: NetworkImage("https://raw.githubusercontent.com/kurniawansHeru/gambar/refs/heads/main/231110822.jpg"),
              width: 400,
              height: 200,
            ),
            SizedBox(height: 10),
            Text("NIM : 231110822"),
            Text("Nama : Bagas Arma Prayoga"),
          ],
        ),
      ),
    );
  }
}