import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  ProductItem({
    required this.title,
    required this.price,
    this.onTap,
  });

  final String title;
  final double price;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
        padding: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: TextStyle(fontSize: 20)),
            Text('R\$ ${price.toString()}', style: TextStyle(fontSize: 16)),
          ]
        ),
      ),
    );
  }
}