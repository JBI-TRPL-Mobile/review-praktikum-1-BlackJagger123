import 'package:flutter/material.dart';

class HalamanHome extends StatelessWidget {
  final List<Map<String, String>> buku = [
    {
      'judul': 'Hujan',
      'image': 'assets/hujan.jpg',
      'penulis': 'Tere Liye',
      'deskripsi': 'Buku ini merupakan hasil karya Tere Liye',
    },
    {
      'judul': 'Harga Sebuah Kepercayaan',
      'image': 'assets/harga.jpg',
      'penulis': 'Tere Liye',
      'deskripsi': 'Buku ini merupakan hasil karya Tere Liye',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Buku'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text('Tentang Aplikasi'),
              onTap: () {
                Navigator.pushNamed(context, '/about');
              },
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: buku.length,
        itemBuilder: (context, index) {
          final book = buku[index];
          return Card(
            margin: const EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    book['image']!,
                    height: 100,
                    width: 80,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          book['judul']!,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(
                              context,
                              '/detail',
                              arguments: {
                                'judul': book['judul']!,
                                'penulis': book['penulis']!,
                                'deskripsi': book['deskripsi']!,
                                'image': book['image']!,
                              },
                            );
                          },
                          child: Text('Detail'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
