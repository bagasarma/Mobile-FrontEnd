import 'package:flutter/material.dart';

class P071 extends StatefulWidget {
  const P071({super.key});

  @override
  State<P071> createState() => _P071State();
}

class _P071State extends State<P071> {
  final List<Map<String, String>> mahasiswa = [
    {"nim": "231110822", "nama": "Bagas arma"},
    {"nim": "231110955", "nama": "Andika der"},
    {"nim": "231112268", "nama": "Gabriel nicholas"},
    {"nim": "231111638", "nama": "Muhammad rizki"},
  ];

  String? selectedNim;
  String? selectedNama;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.purple,
        title: const Text('Contoh penggunaan action'),
        actions: <Widget>[
          PopupMenuButton<int>(
            onSelected: (index) {
              setState(() {
                selectedNim = mahasiswa[index]['nim'];
                selectedNama = mahasiswa[index]['nama'];
              });
            },
            itemBuilder: (BuildContext context) {
              return List.generate(mahasiswa.length, (index) {
                return PopupMenuItem<int>(
                  value: index,
                  child: Text(mahasiswa[index]['nim']!),
                );
              });
            },
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (selectedNim != null && selectedNama != null)
              Column(
                children: [
                  Text(
                    'NIM: $selectedNim',
                    style: const TextStyle(fontSize: 15),
                  ),
                  Text(
                    'Nama: $selectedNama',
                    style: const TextStyle(fontSize: 15),
                  ),
                ],
              ),
            if (selectedNim == null)
              const Text(
                'Pilih NIM',
                style: TextStyle(fontSize: 16),
              ),
          ],
        ),
      ),
    );
  }
}