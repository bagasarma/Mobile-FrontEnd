import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_1/M04/kegiatan.dart';

class M04ScreenPage extends StatefulWidget {
  const M04ScreenPage({super.key});

  @override
  State<M04ScreenPage> createState() => _M04ScreenPageState();
}

class _M04ScreenPageState extends State<M04ScreenPage> {
  String? pilihan;

  final TextEditingController _judulController = TextEditingController();
  final TextEditingController _keteranganController = TextEditingController();
  final TextEditingController _mulaiController = TextEditingController();
  final TextEditingController _selesaiController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // Isi nilai default untuk tanggal
    String tanggalHariIni =
        "${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}";
    _mulaiController.text = tanggalHariIni;
    _selesaiController.text = tanggalHariIni;
  }

  @override
  void dispose() {
    // Membersihkan controller ketika widget dihapus
    _judulController.dispose();
    _keteranganController.dispose();
    _mulaiController.dispose();
    _selesaiController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('M04 Screen Page'),
        foregroundColor: Colors.white,
        backgroundColor: Colors.purple,
      ),
      body: Container(
        padding: const EdgeInsets.fromLTRB(30, 30, 30, 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(Icons.list_alt, color: Colors.black),
                const Text(
                  " Kegiatan",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  // width: 310,
                  child: TextField(
                    controller: _judulController,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Judul Kegiatan",
                    ),
                    minLines: 2,
                    maxLines: 2,
                  ),
                ),
                const SizedBox(height: 50),
              ],
            ),
            SizedBox(height: 15),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.notes),
                Text(
                  " Keterangan",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(width: 30),
                Expanded(
                  // width: 410,
                  child: TextField(
                    controller: _keteranganController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      labelText: "Tambah Keterangan",
                    ),
                    minLines: 4,
                    maxLines: 4,
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(child: Text("")),
                Icon(Icons.date_range, color: Colors.black),
                Text(
                  " Tanggal Mulai",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Expanded(child: Text("")),
                Expanded(child: Text("")),
                Icon(Icons.date_range_outlined, color: Colors.black),
                Text(
                  " Tanggal Selesai",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Expanded(child: Text("")),
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: SizedBox(
                    width: 200,
                    child: TextField(
                      controller: _mulaiController,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 12,
                        ),
                        labelText: "Dd-M-YYYY",
                        hintStyle: TextStyle(color: Colors.grey),
                        hintText: DateTime.now().toString(),
                        alignLabelWithHint: true,
                      ),
                      textAlign: TextAlign.center,
                      minLines: 1,
                      maxLines: 1,
                    ),
                  ),
                ),
                SizedBox(width: 30),
                Expanded(
                  child: SizedBox(
                    width: 200,
                    child: TextField(
                      controller: _selesaiController,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 12,
                        ),
                        labelText: "Dd-M-YYYY",
                        hintStyle: TextStyle(color: Colors.grey),
                        hintText: DateTime.now().toString(),
                        alignLabelWithHint: true,
                      ),
                      textAlign: TextAlign.center,
                      minLines: 1,
                      maxLines: 1,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.category, color: Colors.black),
                Text(
                  " Kategori",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 250),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: DropdownButton<String>(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      value: pilihan,
                      isExpanded: true,
                      underline: Container(), // Hapus garis bawah default
                      hint: Text("  Pilih"),
                      items: [
                        DropdownMenuItem(value: "Kerja", child: Text("  Kerja")),
                        DropdownMenuItem(value: "Pribadi", child: Text("  Pribadi"),
                        ),
                        DropdownMenuItem(value: "Pelajaran", child: Text("  Pelajaran"),
                        ),
                      ],
                      onChanged: (String? value) {
                        setState(() {
                          pilihan = value;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    width: 200,
                    height: 45,
                    child: TextButton(
                      onPressed: () {
                        _judulController.clear();
                        _keteranganController.clear();
                        setState(() {
                          pilihan = null;
                        });
                      },
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.purple,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                          side: BorderSide(color: Colors.grey),
                        ),
                      ),
                      child: Text(
                        "Batal",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Container(
                    width: 200,
                    height: 45,
                    child: TextButton(
                      onPressed: () {
                        _simpanData(context);
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.purple,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                          side: BorderSide(color: Colors.grey),
                        ),
                      ),
                      child: Text(
                        "Simpan",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.start, children: []),
          ],
        ),
      ),
    );
  }

  void _simpanData(BuildContext context) {
    // Validasi data
    if (_judulController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Judul kegiatan tidak boleh kosong!")),
      );
      return;
    }

    if (pilihan == null) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text("Kategori belum dipilih!")));
      return;
    }

    // Buat objek kegiatan baru
    final newKegiatan = Kegiatan(
      kegiatan: _judulController.text,
      keterangan: _keteranganController.text,
      mulai: _mulaiController.text,
      selesai: _selesaiController.text,
      kategori: pilihan ?? "Tidak Ada",
    );

    // Simpan ke provider
    Provider.of<KegiatanProvider>(context, listen: false).tambah(newKegiatan);

    // // Tampilkan notifikasi
    // ScaffoldMessenger.of(context).showSnackBar(
    //   const SnackBar(content: Text("Kegiatan berhasil ditambahkan!")),
    // );

    // // Reset form
    // _judulController.clear();
    // _keteranganController.clear();
    // setState(() {
    //   pilihan = null;
    // });

    // Kembali ke halaman daftar
    Navigator.pop(context);
  }
}
