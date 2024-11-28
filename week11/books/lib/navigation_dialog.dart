import 'package:flutter/material.dart';

class NavigationDialogScreen extends StatefulWidget {
  const NavigationDialogScreen({super.key});

  @override
  _NavigationDialogScreenState createState() => _NavigationDialogScreenState();
}

class _NavigationDialogScreenState extends State<NavigationDialogScreen> {
  Color color = Colors.blue.shade700; // Warna default

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        title: const Text('Rifky Navigation Dialog Screen'),
      ),
      body: Center(
        child: ElevatedButton(
            child: const Text('Change color'),
            onPressed: () {
              _showColorDialog(context);
            }),
      ),
    );
  }

  _showColorDialog(BuildContext context) async {
    await showDialog(
      barrierDismissible: false,
      context: context,
      builder: (_) {
        return AlertDialog(
          title: const Text('Very Important Question'),
          content: const Text('Please choose a color'),
          actions: <Widget>[
            TextButton(
                child: const Text('Red'),
                onPressed: () {
                  setState(() {
                    color = Colors.red.shade700;
                    Navigator.pop(context, color.red);
                  });
                }),
            TextButton(
                child: const Text('Green'),
                onPressed: () {
                  setState(() {
                    color = Colors.green.shade700;
                    Navigator.pop(context, color.green);
                  });
                }),
            TextButton(
                child: const Text('Blue'),
                onPressed: () {
                  setState(() {
                    color = Colors.blue.shade700;
                    Navigator.pop(context, color.blue);
                  });
                }),
          ],
        );
      },
    );
  }
}
