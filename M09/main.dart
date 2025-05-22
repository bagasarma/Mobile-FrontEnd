import 'package:flutter/material.dart';
// import 'package:flutter_application_1/M09/m09.dart';
// import 'package:flutter_application_1/M09/m09.dart';
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

import 'package:flutter_application_1/M09/m09.dart';

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
      home: const M09(),
      // home: MyApp(),
      // home: MyHomePage(title: 'Implementasi drawer'),
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
  // int _counter = 0;
  int indexHalaman = 0;
  bool bottomSheetTampil = false;
  bool menuActive = false;
  List<String> judul = [
    "NIM",
    "Nama",
    "Kelas",
  ];

  // Widget rute() {
  //   if (indexHalaman == 0) {
  //     return Nim();
  //   } else if (indexHalaman == 1) {
  //     return Nama();
  //   } else {
  //     return Kelas();
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Text("Kosong"),
        // appBar: AppBar(
        //   // leading: IconButton(
        //   //   icon: Icon(Icons.menu),
        //   //   onPressed: () {
        //   //     Scaffold.of(context).openDrawer();
        //   //   },
        //   // ),
        //   title: Text(widget.title),
        //   bottom: TabBar(isScrollable: true, tabs: [
        //     Tab(child: Text("Drawer")),
        //     Tab(child: Text("BottomSheet")),
        //   ]),
        // ),
        // body: TabBarView(
        //   children: [
        //     TextButton(
        //         onPressed: () {
        //           print('Drawer');
        //         },
        //         child: Text('Drawer')),
        //     TextButton(
        //         onPressed: () {
        //           print('BottomSheet');
        //         },
        //         child: Text('BottomSheet')),
        //   ],
        // ),
        // drawer: Drawer(
        //   child: ListView(
        //     padding: EdgeInsets.zero,
        //     children: [
        //       DrawerHeader(
        //         padding: EdgeInsets.all(16.0),
        //         decoration: BoxDecoration(color: Colors.purple),
        //         child: Row(
        //           crossAxisAlignment: CrossAxisAlignment.center,
        //           children: [
        //             CircleAvatar(
        //               radius: 30,
        //               backgroundImage: NetworkImage(
        //                   "https://raw.githubusercontent.com/kurniawansHeru/gambar/refs/heads/main/231110822.jpg"),
        //             ),
        //             Padding(
        //               padding: EdgeInsets.fromLTRB(16, 0, 0, 0 ),
        //               child: Column(
        //                 crossAxisAlignment: CrossAxisAlignment.start,
        //                 mainAxisAlignment: MainAxisAlignment.center,
        //                 children: [
        //                   Text(
        //                     'Bagas Arma',
        //                     style: TextStyle(
        //                         color: Colors.white,
        //                         // fontWeight: FontWeight.bold
        //                         ),
        //                   ),
        //                   Text(
        //                     '231110822',
        //                     style: TextStyle(
        //                       color: Colors.white,
        //                     ),
        //                   ),
        //                 ],
        //               ),
        //             )
        //           ],
        //         ),
        //       ),
        //       Divider(),
        //       ListTile(
        //         onTap: () {},
        //         leading: Icon(Icons.tag),
        //         title: Text("NIM"),
        //       ),
        //       ListTile(
        //         onTap: () {},
        //         leading: Icon(Icons.abc),
        //         title: Text("Nama"),
        //       ),
        //       ListTile(
        //         onTap: () {},
        //         leading: Icon(Icons.border_vertical),
        //         title: Text("Kelas"),
        //       ),
        //     ],
        //   ),
        // ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () {},
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
