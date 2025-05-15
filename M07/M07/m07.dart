import 'package:flutter/material.dart';
import 'package:flutter_application_1/M07/p071.dart';
import 'package:flutter_application_1/M07/p072.dart';
import 'package:flutter_application_1/M07/p073.dart';

class M07 extends StatefulWidget {
  const M07({super.key});

  @override
  State<M07> createState() => _M07State();
}

class _M07State extends State<M07> {
  int n = 0;
  final List<Widget> listHalaman = [
    const P071(),
    const P072(),
    const P073(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: listHalaman[n],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: n,
        onTap: (index) {
          setState(() {
            n = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.people_alt_outlined),
            label: "Anggota_Action",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.abc),
            label: "FAB",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: "Tentang",
          ),
        ],
      ),
    );
  }
}