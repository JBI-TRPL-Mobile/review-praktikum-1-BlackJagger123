import 'package:flutter/material.dart';

class DetailBuku extends StatelessWidget {
  final String judul;
  final String penulis;
  final String deskripsi;

   DetailBuku({
    required this.judul,
     required this.penulis,
     required this.deskripsi
});
   @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Buku'),
      ),
      body: Padding(padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 16),

          Text('Judul : $judul',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),

          Text(
            'Penulis: $penulis',
            style: TextStyle(
              fontSize: 18,
              fontStyle: FontStyle.italic,
              color: Colors.grey[700],
            ),
          ),
          SizedBox(height: 16),

          Text(
            deskripsi,
            style: TextStyle(
              fontSize: 16,
              height: 1.5,
            ),
          ),
        ],
      ),
      ),
    );
   }
}
