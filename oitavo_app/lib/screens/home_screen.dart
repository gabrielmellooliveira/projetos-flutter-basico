import 'package:flutter/material.dart';
import 'package:oitavo_app/screens/product_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Home Screen', style: TextStyle(fontSize: 24)),
            ElevatedButton(
              onPressed: () {
                /*Navigator.push(
                  context,
                  MaterialPageRoute(builder: (BuildContext context) {
                    return ProductScreen(title: 'Playstation 5');
                  })
                );*/

                Navigator.pushNamed(context, '/product');
              },
              child: Text('Next page')
            ),
          ],
        ),
      )
    );
  }
}
