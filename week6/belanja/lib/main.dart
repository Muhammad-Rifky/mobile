import 'package:basic_layout_flutter/pages/home_page.dart';
import 'package:basic_layout_flutter/pages/item_page.dart';
import 'package:flutter/material.dart';
import 'models/item.dart'; // Adjust the path according to your project structure

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping List',
      initialRoute: '/',
      routes: {
        '/': (context) => ItemListScreen(),
        '/details': (context) => ItemPage(),
      },
    );
  }
}

class ItemListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kebutuhan dapur bunda'), // Updated title
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: GridView.builder(
          padding: EdgeInsets.all(8),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Number of columns in the grid
            childAspectRatio: 0.7, // Aspect ratio for each item
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
          ),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return GestureDetector(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/details',
                  arguments: item, // Pass the item as an argument
                );
              },
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      item.imagePath,
                      fit: BoxFit.cover,
                      height: 330, // Fixed height for the image
                      width: double.infinity,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        item.name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text('Price: \$${item.price}'),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text('Stock: ${item.stock} pcs'),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text('Rating: ${item.rating} ⭐'),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
