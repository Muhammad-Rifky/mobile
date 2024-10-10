import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Aplikasi Flutter'),
        ),
        body: Center(
          child: const Text('Tekan tombol di bawah!'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Tambahkan kode yang diinginkan di sini!
            print('Tombol Like ditekan!');
          },
          child: const Icon(Icons.thumb_up),
          backgroundColor: Colors.pink,
        ),
      ),
    );
  }
}