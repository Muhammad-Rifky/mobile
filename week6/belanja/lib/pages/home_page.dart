import 'package:basic_layout_flutter/models/item.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

final List<Item> items = [
  Item('Sugar ', 100, 'assets/images/1.jpg', 10, 4.5),
  Item('Ajinomoto', 150, 'assets/images/2.jpg', 5, 4.0),
  Item('Himalayan Salt', 200, 'assets/images/3.jpg', 8, 4.8),
  Item('Ladaku', 250, 'assets/images/item4.png', 2, 3.5),
];
