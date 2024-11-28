import 'package:books/navigation_second.dart';
import 'package:flutter/material.dart';

class NavigationFirst extends StatefulWidget {
  const NavigationFirst({super.key});

  @override
  State<NavigationFirst> createState() => _NavigationFirstState();
}

class _NavigationFirstState extends State<NavigationFirst> {
  Color color = Colors.blue.shade700; // Warna default

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rifky Navigation First Screen'),
      ),
      body: Container(
        color: color, // Terapkan warna di sini
        child: Center(
          child: ElevatedButton(
            child: const Text('Change Color'),
            onPressed: () => _navigateAndGetColor(context),
          ),
        ),
      ),
    );
  }

  Future<void> _navigateAndGetColor(BuildContext context) async {
    // Tunggu hasil dari layar kedua
    final newColor = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const NavigationSecond()),
    );

    // Jika newColor tidak null, perbarui warna
    if (newColor != null) {
      setState(() {
        color = newColor; // Set warna baru
      });
    }
  }
}
