import 'package:flutter/material.dart';

import '../models/product.dart';

class ProductScreen extends StatelessWidget {
  ProductScreen({
    super.key,
  });

  Product? product;

  @override
  Widget build(BuildContext context) {
    product = ModalRoute.of(context)?.settings.arguments as Product;

    return Scaffold(
        appBar: AppBar(title: Text('Product')),
        body: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Title: ${product?.title ?? '-'}', style: TextStyle(fontSize: 24)),
              Text('Description: ${product?.description ?? '-'}', style: TextStyle(fontSize: 20)),
              Text('Price: ${product?.price != null ? product?.price.toString() : '-'}', style: TextStyle(fontSize: 20)),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Back')
                ),
              )
            ],
          ),
        )
    );
  }
}