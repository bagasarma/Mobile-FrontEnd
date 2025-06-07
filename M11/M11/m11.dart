// import 'package:flutter/material.dart';

// class M11 extends StatefulWidget {
//   const M11({super.key});

//   @override
//   State<M11> createState() => _M11State();
// }

// class _M11State extends State<M11> {
//   List<String> rizpek = ["Bagas", "Andika", "Rizki", "Gabriel"];

//   Widget getList(List<String> data) {
//     List<Widget> res = [];
//     for (int i = 0; i < data.length; i++) {
//     res.add(
//       Expanded(
//         child: Text(
//           data[i],
//           textAlign: TextAlign.center,
//         ),
//       ),
//     );

//     if (i != data.length - 1) {
//       res.add(const VerticalDivider(
//         thickness: 3,
//         color: Colors.amber,
//       ));
//     }
//   }

//     return SizedBox(
//       height: 50,
//       child: Row(
//         children: res,
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Praktek M11'),
//         foregroundColor: Colors.black,
//         backgroundColor: Colors.amber[300],
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//           const SizedBox(height: 10),
//           const Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text("Nama Anggota"),
//             ],
//           ),
//           const SizedBox(height: 10),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               getList(rizpek),
//               const SizedBox(height: 5),
//               const Divider(
//                 thickness: 1,
//                 height: 1,
//                 color: Colors.amber,
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class M11 extends StatefulWidget {
  const M11({super.key});

  @override
  State<M11> createState() => _M11State();
}

class _M11State extends State<M11> {
  List<String> daftarNama = ["Bagas", "Andika", "Rizki", "Gabriel"];
  
  Map<String, String> petaNamaNim = {
    "Bagas": "231110822",
    "Andika": "231110955",
    "Rizki": "231111623",
    "Gabriel": "231112343",
  };
  
  String? namaTerpilih;
  String? nimTerpilih;
  
  int indeksWarna = 0;
  
  final List<Color> daftarWarnaNama = [
    Colors.blue,
    Colors.green,
    Colors.cyanAccent,
    Colors.purple,
  ];

  Widget buatDaftarNama(List<String> nama) {
    List<Widget> daftarWidget = [];
    
    for (int i = 0; i < nama.length; i++) {
      daftarWidget.add(
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                namaTerpilih = nama[i];
                nimTerpilih = petaNamaNim[nama[i]];
                indeksWarna = i % daftarWarnaNama.length;
              });
            },
            child: Text(
              nama[i],
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16),
            ),
          ),
        ),
      );

      if (i != nama.length - 1) {
        daftarWidget.add(const VerticalDivider(
          thickness: 3,
          color: Colors.amber,
        ));
      }
    }

    return SizedBox(
      height: 50,
      child: Row(
        children: daftarWidget,
      ),
    );
  }

  Widget buatBubble(String nama, String nim, Color warnaNama) {
    List<Widget> daftarBubble = [];
    
    for (int i = 0; i < nama.length; i++) {
      daftarBubble.add(
        GestureDetector(
          onTap: () {
            showMenu(
              context: context,
              position: const RelativeRect.fromLTRB(100, 100, 100, 100),
              items: [
                for (int j = i; j < nama.length; j++)
                  PopupMenuItem(
                    value: nama[j],
                    child: Text(nama[j]),
                  ),
              ],
            );
          },
          child: Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: warnaNama,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(
                nama[i],
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ),
      );
    }
    
    for (int i = 0; i < nim.length; i++) {
      daftarBubble.add(
        Container(
          width: 80,
          height: 80,
          decoration: const BoxDecoration(
            color: Colors.grey, 
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Text(
              nim[i],
              style: const TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
          ),
        ),
      );
    }

    return LayoutBuilder(
      builder: (context, constraints) {
        double lebarLayar = constraints.maxWidth;
        double ukuranBubble = 150;
  
        int bubblePerBaris = (lebarLayar / ukuranBubble).floor();
        if (bubblePerBaris < 4) {
          bubblePerBaris = 4;
        }

        return GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: bubblePerBaris,
          ),
          itemCount: daftarBubble.length,
          itemBuilder: (context, index) {
            return daftarBubble[index];
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Praktek M11'),
        foregroundColor: Colors.black,
        backgroundColor: Colors.amber[300],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Nama Anggota",
                  // style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                buatDaftarNama(daftarNama),
                const SizedBox(height: 5),
                const Divider(
                  thickness: 1,
                  height: 1,
                  color: Colors.amber,
                ),
                if (namaTerpilih != null && nimTerpilih != null) ...[
                  const SizedBox(height: 20),
                  buatBubble(
                    namaTerpilih!,
                    nimTerpilih!,
                    daftarWarnaNama[indeksWarna],
                  ),
                ],
              ],
            ),
          ],
        ),
      ),
    );
  }
}