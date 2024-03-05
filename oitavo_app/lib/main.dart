import 'package:flutter/material.dart';
import 'package:oitavo_app/screens/home_screen.dart';
import 'package:oitavo_app/screens/product_screen.dart';

void main() {
  runApp(MaterialApp(
    home: HomeScreen(),
    routes: {
      '/home': (context) => HomeScreen(),
      '/product': (context) => ProductScreen(title: 'Playstation 5'),
    },
  ));
}

