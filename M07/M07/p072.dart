import 'package:flutter/material.dart';

class P072 extends StatefulWidget {
  const P072({super.key});

  @override
  State<P072> createState() => _P072State();
}

class _P072State extends State<P072> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FAB"),
        foregroundColor: Colors.white,
        backgroundColor: Colors.purple,
      ),
      body: const Center(
        child: Text("Halaman FAB"),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(width: 30,),
              FloatingActionButton(
                onPressed: () {},
                backgroundColor: Colors.purple,
                child: const Icon(Icons.add, color: Colors.white),
              ),
              SizedBox(width: 30,),
            ],
          ),
          const SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                onPressed: () {},
                backgroundColor: Colors.purple,
                child: const Icon(Icons.home, color: Colors.white),
              ),
              SizedBox(width: 3,),
              FloatingActionButton(
                onPressed: () {},
                backgroundColor: Colors.purple,
                child: const Icon(Icons.home, color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}