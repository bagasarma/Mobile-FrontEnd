import 'package:flutter/material.dart';

class M03ScreenPage extends StatefulWidget {
  const M03ScreenPage({super.key});

  @override
  State<M03ScreenPage> createState() => _M03ScreenPageState();
}

class _M03ScreenPageState extends State<M03ScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('M03 Screen Page'),
        foregroundColor: Colors.white,
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 30, 30, 30),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.article,
                color: Colors.black,
              ),
              Text(" Kegiatan",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
              ),
              Expanded(child: Text("")),
              SizedBox(
                  width: 310,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Judul Kegiatan",
                    ),
                    minLines: 2,
                    maxLines: 2,
                  ),
                ),
              SizedBox(height: 50,)
            ],
          ),
          SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.notes),
              Text(" Keterangan",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              ],
          ),
          SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(width: 410, child: 
                  TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    labelText: "Tambah Keterangan"
                  ),
                  minLines: 4,
                  maxLines: 4,
                ),
              ),
              ],
            ),
          SizedBox(height: 30,),  
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(child: Text("")),
              Icon(
                Icons.date_range,
                color: Colors.black,),
              Text(" Tanggal Mulai",
                style: TextStyle(
                  fontWeight: FontWeight.bold,)
                  ),
              Expanded(child: Text("")),
              Expanded(child: Text("")),
              Icon(
                Icons.date_range_outlined,
                color: Colors.black,),
              Text(" Tanggal Selesai",
                style: TextStyle(
                  fontWeight: FontWeight.bold,)
                  ),
              Expanded(child: Text("")),
              ]
          ),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(child: Text("")),
              SizedBox(width: 175, child: 
                  TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                      hintText: "17-03-2025",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      alignLabelWithHint: true,
                    ),
                    textAlign: TextAlign.center,
                    minLines: 1,
                    maxLines: 1,
                ),
              ),
              Expanded(child: Text("")),
              Expanded(child: Text("")),
              SizedBox(width: 175, child: 
                  TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                      hintText: "17-03-2025",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      alignLabelWithHint: true,
                    ),
                    textAlign: TextAlign.center,
                    minLines: 1,
                    maxLines: 1,
                ),
              ),
              Expanded(child: Text("")),
            ],
          ),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(child: Text("")),
              Container(
                width: 190,
                height: 45,
                child: 
                  TextButton(onPressed: (){},
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.purple,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                        side: BorderSide(color: Colors.grey)
                      )
                    ), 
                    child: Text("Batal",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,)),
                  ),
                ),
              Expanded(child: Text("")),
              Container(
                width: 200,
                height: 45,
                child: 
                  TextButton(onPressed: (){},
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.purple,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                        side: BorderSide(color: Colors.grey)
                  ),
                ), 
                  child: Text("Simpan",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,)),
              ),
              ),
              Expanded(child: Text("")),
            ],
          ),
          
          ],
        ),
      ),
    );
  }
}