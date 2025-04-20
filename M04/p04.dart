import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_1/M04/kegiatan.dart';
import 'package:flutter_application_1/M04/m04.dart';

class DaftarKegiatan extends StatefulWidget {
  const DaftarKegiatan({super.key});

  @override
  State<DaftarKegiatan> createState() => _DaftarKegiatanState();
}

class _DaftarKegiatanState extends State<DaftarKegiatan> {
  @override
  Widget build(BuildContext context) {
    // Mengambil instansi dari KegiatanProvider
    final kegiatanProvider = Provider.of<KegiatanProvider>(context);
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Kegiatan'),
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
              itemCount: kegiatanProvider.length(),
              itemBuilder: (context, index) {
                Kegiatan data = kegiatanProvider.listKegiatan[index];
                return Card(
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.purple,
                      child: Text((index + 1).toString(), style: TextStyle(color: Colors.white)),
                    ),
                    title: Text(data.kegiatan, style: TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(data.keterangan),
                        Text("${data.mulai} - ${data.selesai}", style: TextStyle(fontSize: 12)),
                      ],
                    ),
                    trailing: Container(
                      padding: EdgeInsets.fromLTRB(8, 3, 8, 3),
                      decoration: BoxDecoration(
                        color: getKategoriColor(data.kategori),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                        data.kategori,
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                  ),
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const M04ScreenPage()),
          );
        },
        backgroundColor: Colors.purple,
        child: Icon(Icons.add, color: Colors.white,),
      ),
    );
  }
  
  Color getKategoriColor(String kategori) {
    switch (kategori) {
      case "Kerja":
        return Colors.blue;
      case "Pribadi":
        return Colors.orange;
      case "Pelajaran":
        return Colors.green;
      default:
        return Colors.grey;
    }
  }
}