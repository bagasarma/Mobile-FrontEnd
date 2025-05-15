import 'package:flutter/material.dart';
import 'package:flutter_application_1/M07/m07.dart';
// import 'package:flutter_application_1/M07/p071.dart';
// import 'package:provider/provider.dart';

// import 'package:flutter_application_1/M05/p05.dart';

// import 'package:flutter_application_1/M06/p06.dart';

// import 'package:flutter_application_1/M02/m02.dart';
// import 'package:flutter_application_1/M03/m03.dart';
// import 'package:flutter_application_1/M04/kegiatan.dart';
// import 'package:flutter_application_1/M04/p04.dart';
// import 'package:flutter_application_1/M04/m04.dart';

// import 'package:flutter_application_1/M05/kegiatan.dart';
// import 'package:flutter_application_1/M05/m05.dart';

// void main() {
//   runApp(
//     ChangeNotifierProvider(
//       create: (context) => KegiatanProvider(),
//       child: const MyApp(),
//     ),
//   );
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
//         // useMaterial3: true,
//         primarySwatch: Colors.teal,
//       ),
//       home: DaftarKegiatan(),
//     );
//   }
// }

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        primarySwatch: Colors.teal,
      ),
      home: const M07(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _dicrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.info),
          onPressed: () {},
        ),
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/logo.png', width: 200),
            const Icon(
              Icons.check_circle_outline_rounded,
              color: Colors.teal,
              size: 50,
            ),
            const Text.rich(
              TextSpan(
                text: 'Aplikasi',
                children: [
                  TextSpan(
                      text: ' belajar ',
                      style: TextStyle(fontStyle: FontStyle.italic)),
                  TextSpan(
                      text: 'berhitung',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            const Text(
              'Total:',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.teal,
                  letterSpacing: 2),
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      // builder: (context) => const M02ScreenPage()),
                      // builder: (context) => const M03ScreenPage()),
                      // builder: (context) => const M05ScreenPage()),
                      builder: (context) => const M07()),
                );
              },
              icon: const Icon(
                Icons.navigate_next,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          const SizedBox(width: 10),
          FloatingActionButton(
            onPressed: _dicrementCounter,
            tooltip: 'Dicrement',
            child: const Icon(Icons.remove),
          )
        ],
      ),
    );
  }
}
