import 'package:flutter/material.dart';

List<String> titles = <String>[
  'Delivery',
  'Takeaway',
  'Dine-in',
  'Deliver to train',
];

List<String> additionalTexts = [
  'Select Location',
  'Select Store',
  'Select Store',
  'Next Station'
];
List<String> data = [
  'Veg Pizza',
  'Non-veg Pizza',
  'Gourmet Pizza',
  'Pizza Mania',
  'Value Combos',
  'Garlic Bread & More',
];
List<String> homeimages = [
  'https://www.dominos.co.in/files/items/Farmhouse.jpg',
  'https://www.dominos.co.in/theme2/front/images/menu-images/my-nonveg.webp',
  'https://www.dominos.co.in/files/items/Farmhouse.jpg',
  'https://www.dominos.co.in/theme2/front/images/menu-images/my-nonveg.webp',
  'https://www.dominos.co.in/files/items/Farmhouse.jpg',
  'https://www.dominos.co.in/theme2/front/images/menu-images/my-nonveg.webp',
];

List<LinearGradient> offergradients = [
  const LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: <Color>[
      Color.fromARGB(255, 6, 108, 77),
      Color.fromARGB(255, 16, 158, 129)
    ],
  ),
  const LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: <Color>[
      Color.fromARGB(255, 11, 53, 118),
      Color.fromARGB(255, 21, 99, 177)
    ],
  ),
  const LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: <Color>[
      Color.fromARGB(255, 128, 11, 112),
      Color.fromARGB(255, 177, 21, 133)
    ],
  ),
  // Add more gradients as needed
];

