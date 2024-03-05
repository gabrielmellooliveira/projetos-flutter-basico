import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  ProductScreen({
    super.key,
    required this.title
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Product - $title')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Product Screen', style: TextStyle(fontSize: 24)),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Back')
              ),
            ],
          ),
        )
    );
  }
}