import 'package:flutter/material.dart';
import 'package:flutter_application_1/M10/m10.dart';
import 'package:flutter_application_1/M11/m11.dart';
import 'nim.dart';
import 'nama.dart';
import 'kelas.dart';

class M09 extends StatefulWidget {
  const M09({super.key});

  @override
  State<M09> createState() => _M09State();
}

class _M09State extends State<M09> with SingleTickerProviderStateMixin {
  int indexHalaman = 0;
  bool bottomSheetTampil = true;
  List<String> judul = ["NIM", "Nama", "Kelas"];
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    _tabController.addListener(() {
      setState(() {
        bottomSheetTampil = _tabController.index == 1;
      });
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  Widget rute() {
    if (indexHalaman == 0) {
      return const Nim();
    } else if (indexHalaman == 1) {
      return const Nama();
    } else {
      return const Kelas();
    }
  }

  void showBottomSheetNim(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  'Tutup',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              const Text('231110822', style: TextStyle(fontSize: 30)),
              Text('Contoh Bottom Sheet', style: TextStyle(fontSize: 13)),
            ],
          ),
        );
      },
    );
  }

  void showBottomSheetNama(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  'Tutup',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              const Text('Bagas Arma', style: TextStyle(fontSize: 30)),
              Text('Contoh Bottom Sheet', style: TextStyle(fontSize: 13)),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        // appBar: AppBar(
        //   title: Text('Implementasi Drawer'),
        //   foregroundColor: Colors.white,
        //   backgroundColor: Colors.purple,
        //   bottom: TabBar(
        //     controller: _tabController,
        //     isScrollable: true,
        //     labelColor: Colors.white,
        //     unselectedLabelColor: Colors.white70,
        //     indicatorColor: Colors.white,
        //     tabs: [
        //       Tab(child: Text("Drawer")),
        //       Tab(child: Text("ButtomSheet")),
        //       Tab(child: Text("M10")),
        //     ],
        //   ),
        // ),
        appBar: _tabController.index == 0
            ? AppBar(
                title: const Text('Implementasi Drawer'),
                foregroundColor: Colors.white,
                backgroundColor: Colors.purple,
                leading: Builder(
                  builder: (context) => IconButton(
                    icon: const Icon(Icons.menu),
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                  ),
                ),
                bottom: TabBar(
                  controller: _tabController,
                  isScrollable: true,
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.white70,
                  indicatorColor: Colors.white,
                  tabs: const [
                    Tab(child: Text("Drawer")),
                    Tab(child: Text("ButtomSheet")),
                    Tab(child: Text("M10")),
                    Tab(child: Text("M11")),
                  ],
                ),
              )
            : PreferredSize(
                preferredSize: const Size.fromHeight(kToolbarHeight),
                child: Material(
                  color: Colors.purple,
                  child: TabBar(
                    controller: _tabController,
                    isScrollable: true,
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.white70,
                    indicatorColor: Colors.white,
                    tabs: const [
                      Tab(child: Text("Drawer")),
                      Tab(child: Text("ButtomSheet")),
                      Tab(child: Text("M10")),
                      Tab(child: Text("M11")),
                    ],
                  ),
                ),
              ),

        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: const BoxDecoration(color: Colors.purple),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const CircleAvatar(
                          radius: 40,
                          backgroundImage: NetworkImage(
                            "https://raw.githubusercontent.com/kurniawansHeru/gambar/refs/heads/main/231110822.jpg",
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 2),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Bagas Arma',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ],
                    ),
                    SizedBox(height: 4),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          '231110822',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Divider(),
              ListTile(
                onTap: () {
                  setState(() {
                    indexHalaman = 0;
                    bottomSheetTampil = false;
                  });
                  // _tabController.animateTo(0);
                  Navigator.pop(context);
                },
                leading: const Icon(Icons.tag),
                title: const Text("NIM"),
              ),
              ListTile(
                onTap: () {
                  setState(() {
                    indexHalaman = 1;
                    bottomSheetTampil = false;
                  });
                  // _tabController.animateTo(0);
                  Navigator.pop(context);
                },
                leading: const Icon(Icons.abc),
                title: const Text("Nama"),
              ),
              ListTile(
                onTap: () {
                  setState(() {
                    indexHalaman = 2;
                    bottomSheetTampil = false;
                  });
                  // _tabController.animateTo(0);
                  Navigator.pop(context);
                },
                leading: const Icon(Icons.border_vertical),
                title: const Text("Kelas"),
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            rute(),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                        width: 200,
                        height: 60,
                        child: TextButton(
                          onPressed: () => showBottomSheetNim(context),
                          child: const Text(
                            '231110822',
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 2),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                        width: 200,
                        height: 60,
                        child: TextButton(
                          onPressed: () => showBottomSheetNama(context),
                          child: const Text(
                            'Bagasarma',
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            M10(),
            M11(),
          ],
        ),
      ),
    );
  }
}
