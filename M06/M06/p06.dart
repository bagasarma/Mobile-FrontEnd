import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_1/M05/kegiatan.dart';
import 'package:flutter_application_1/M05/m05.dart';

class DaftarKegiatan extends StatefulWidget {
  const DaftarKegiatan({super.key});

  @override
  State<DaftarKegiatan> createState() => _DaftarKegiatanState();
}

class _DaftarKegiatanState extends State<DaftarKegiatan> {
  bool isSwitchOn = false;
  String? selectedValue;
  final List<String> dropdownItems = ['Kerja', 'Pribadi', 'Pelajaran'];

  @override
  Widget build(BuildContext context) {
    final kegiatanProvider = Provider.of<KegiatanProvider>(context);
    final listKegiatan = kegiatanProvider.listKegiatan;

    // Filter kegiatan berdasarkan kategori yang dipilih
    final filteredKegiatan = isSwitchOn
        ? listKegiatan.where((k) => k.kategori == selectedValue).toList()
        : [];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Kegiatan'),
        backgroundColor: Colors.blue[50],
        foregroundColor: Colors.black,
      ),
      body: Column(
        children: [
          SwitchListTile(
            title: const Text("Aktifkan dropdown"),
            value: isSwitchOn,
            activeColor: Colors.green,
            inactiveThumbColor: Colors.grey,
            onChanged: (bool value) {
              setState(() {
                isSwitchOn = value;
              });
            },
          ),
          SizedBox(height: 80,),
          
          if (isSwitchOn) ...[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: DropdownButtonFormField<String>(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Pilih Kategori',
                  contentPadding: EdgeInsets.symmetric(horizontal: 16),
                ),
                value: selectedValue,
                items: dropdownItems.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    selectedValue = newValue!;
                  });
                },
              ),
            ),
            
            Expanded(
              child: ListView.builder(
                      itemCount: filteredKegiatan.length,
                      itemBuilder: (context, index) {
                        final kegiatan = filteredKegiatan[index];
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                kegiatan.kegiatan,
                                style: const TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(kegiatan.keterangan),
                              Text("Mulai: ${kegiatan.mulai}"),
                              Text("Selesai: ${kegiatan.selesai}"),
                              Text(
                                "Kategori: ${kegiatan.kategori}",
                                style: TextStyle(color: getKategoriColor(kegiatan.kategori)),
                              ),
                              const Divider(),
                            ],
                          ),
                        );
                      },
                    ),
            ),
          ],
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const M05ScreenPage()),
          ).then((_) => setState(() {}));
        },
        backgroundColor: Colors.purple,
        child: const Icon(Icons.add, color: Colors.white),
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