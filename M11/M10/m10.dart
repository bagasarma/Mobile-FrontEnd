import 'package:flutter/material.dart';

class M10 extends StatefulWidget {
  const M10({super.key});

  @override
  State<M10> createState() => _M10State();
}

class _M10State extends State<M10> {
  int _radioValue = 0;
  final TextEditingController nimController = TextEditingController();
  bool showImage = false;

  @override
  void dispose() {
    nimController.dispose();
    super.dispose();
  }

  void checkNIM() {
    String nim = nimController.text;
    setState(() {
      showImage = false;
    });

    bool isNumber = RegExp(r'^\d+$').hasMatch(nim);
    if (!isNumber) {
      ScaffoldMessenger.of(context).showMaterialBanner(
        MaterialBanner(
          content: const Text('NIM harus berupa angka'),
          actions: [
            TextButton(
              onPressed: () {
                ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
              },
              child: const Text('Mengerti'),
            ),
          ],
        ),
      );
      return;
    }

    if (nim.length != 9) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('NIM harus 9 karakter'),
          duration: Duration(seconds: 2),
        ),
      );
      return;
    }

    setState(() {
      showImage = true;
    });
  }

  void showDialogBasedOnSelection() {
    // String nim = nimController.text;
    if (_radioValue == 0) {
      showDialog(
        context: context,
        builder:
            (context) => Dialog(
              backgroundColor: const Color.fromARGB(255, 94, 182, 255),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
              child: Container(
                width: 150,
                height: 50,
                alignment: Alignment.center,
                child: const Text(
                  "Dialog (150x50)",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
      );
    } else if (_radioValue == 1) {
      showDialog(
        context: context,
        builder:
            (context) => SimpleDialog(
              title: const Text('Simple dialog dengan children nama dan nim'),
              children: [
                SimpleDialogOption(
                  child: OutlinedButton(
                    onPressed: () {},
                    child: const Text(
                      "Tampilkan",
                      style: TextStyle(color: Colors.purple),
                    ),
                  ),
                ),
                SimpleDialogOption(
                  child: OutlinedButton(
                    onPressed: () {},
                    child: const Text(
                      "Bagas Arma Prayoga",
                      style: TextStyle(color: Colors.purple),
                    ),
                  ),
                ),
              ],
            ),
      );
    } else if (_radioValue == 2) {
      showDialog(
        context: context,
        builder:
            (context) => AlertDialog(
              icon: const Icon(Icons.warning, color: Colors.black),
              title: const Text('Alert Dialog'),
              actions: [
                // TextButton(
                //   onPressed: () => Navigator.pop(context),
                //   child: const Text('Tutup'),
                // ),
              ],
            ),
      );
    } else if (_radioValue == 3) {
      showAboutDialog(
        context: context,
        applicationName: 'Praktek M10',
        applicationVersion: 'V 1.0',
        applicationLegalese: 'Ketentuan',
        children: [
          const Text(
            'Ini adalah ketentuan dan persyaratan dalam menggunakan aplikasi ini.',
            style: TextStyle(fontSize: 12),
          ),
        ],
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Praktek M10'),
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          const SizedBox(height: 10),
          Row(
            children: [
              const SizedBox(width: 10),
              Expanded(
                child: TextField(
                  controller: nimController,
                  decoration: const InputDecoration(
                    labelText: "NIM",
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.number,
                ),
              ),
              const SizedBox(width: 10),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: checkNIM, child: const Text("Periksa")),
            ],
          ),
          if (showImage)
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.network(
                "https://raw.githubusercontent.com/kurniawansHeru/gambar/refs/heads/main/231110822.jpg",
                height: 200,
                // errorBuilder: (context, error, stackTrace) {
                //   return const Text('Gagal memuat gambar');
                // },
              ),
            ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start, // Align radio buttons to the left
            children: [
              const SizedBox(height: 10),
              Row(
                children: [
                  Radio(
                    value: 0,
                    groupValue: _radioValue,
                    onChanged: (value) {
                      setState(() {
                        _radioValue = value as int;
                      });
                    },
                  ),
                  const Text('Dialog'),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Radio(
                              value: 1,
                              groupValue: _radioValue,
                              onChanged: (value) {
                                setState(() {
                                  _radioValue = value as int;
                                });
                              },
                            ),
                            const Text('Simple Dialog'),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            Radio(
                              value: 2,
                              groupValue: _radioValue,
                              onChanged: (value) {
                                setState(() {
                                  _radioValue = value as int;
                                });
                              },
                            ),
                            const Text('Alert Dialog'),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(width: 80,),
                    SizedBox(
                      height: 40,
                      child: OutlinedButton(
                        onPressed: showDialogBasedOnSelection,
                        child: const Text(
                          "Tampilkan",
                          style: TextStyle(color: Colors.purple),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Radio(
                      value: 3,
                      groupValue: _radioValue,
                      onChanged: (value) {
                        setState(() {
                          _radioValue = value as int;
                        });
                      },
                    ),
                    const Text('About Dialog'),
                  ],
                ),
              ],
            ),
          
        ],
      ),
    );
  }
}
