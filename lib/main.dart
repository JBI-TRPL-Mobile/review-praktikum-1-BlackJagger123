import 'package:flutter/material.dart';
import 'package:template_project/widgets/detail_buku.dart';
import 'package:template_project/widgets/home.dart';
import 'package:template_project/widgets/tentang.dart';

void main() {
  runApp(DaftarBukuApp());
}

class DaftarBukuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'DaftarBuku',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/':(context)=> HalamanHome(),
        '/about' : (context) => Tentang(),
      },
      onGenerateRoute: (settings) {
        if (settings.name == '/detail') {
          final book = settings.arguments as Map<String, String>;
          return MaterialPageRoute(
              builder: (context) {
    return DetailBuku(judul: book['judul']!, penulis: book['penulis']!, deskripsi: book['deskripsi']!,
    );
      },
          );
        }
        return null;
      },
    );
  }
}