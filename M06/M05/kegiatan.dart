import 'package:flutter/material.dart';

class KegiatanProvider with ChangeNotifier {
  List<Kegiatan> listKegiatan = [
    Kegiatan(
      kegiatan: "Project mobile front end",
      keterangan: "lorem ipsum dolor",
      mulai: "Mulai",
      selesai: "Selesai",
      kategori: "Kerja",
    ),
    Kegiatan(
      kegiatan: "Buku harian",
      keterangan: "things that i could say",
      mulai: "Mulai",
      selesai: "Selesai",
      kategori: "Pribadi",
    ),
    Kegiatan(
      kegiatan: "Teori",
      keterangan: "Mahasiswa mendengar dan memahami apa yang dosen jelaskan",
      mulai: "Mulai",
      selesai: "Selesai",
      kategori: "Pelajaran",
    ),
    Kegiatan(
      kegiatan: "Praktikum",
      keterangan: "Mahasiswa mengerjakan soal latihan dari modul praktek",
      mulai: "Mulai",
      selesai: "Selesai",
      kategori: "Pelajaran",
    )
  ];

  void tambah(Kegiatan baru) {
    listKegiatan.add(baru);
    notifyListeners();
  }

  void hapus(int i) {
    listKegiatan.removeAt(i);
    notifyListeners();
  }

  int length() {
    return listKegiatan.length;
  }
}

class Kegiatan {
  String kegiatan;
  String keterangan;
  String mulai;
  String selesai;
  String kategori;
  Kegiatan({
    required this.kegiatan,
    required this.keterangan,
    required this.mulai,
    required this.selesai,
    required this.kategori,
  });
}
