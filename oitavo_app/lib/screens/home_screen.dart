import 'package:flutter/material.dart';
import 'package:oitavo_app/components/product_item.dart';
import 'package:oitavo_app/models/product.dart';
import 'package:oitavo_app/screens/product_screen.dart';

import '../components/my_drawer.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('My app'),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Home', icon: Icon(Icons.home)),
              Tab(text: 'Tab 2', icon: Icon(Icons.add_box)),
              Tab(text: 'Tab 3', icon: Icon(Icons.abc_rounded)),
              Tab(text: 'Product', icon: Icon(Icons.abc_rounded)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(
              padding: EdgeInsets.only(left: 16, right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProductItem(
                    title: 'Playstation 5',
                    price: 3000,
                    onTap: () {
                      Navigator.pushNamed(
                          context,
                          '/product',
                          arguments: Product(
                              title: 'Playstation 5',
                              description: 'Video game',
                              price: 3000
                          )
                      );
                    },
                  ),
                  ProductItem(
                      title: 'TV',
                      price: 4500,
                      onTap: () {
                        Navigator.pushNamed(context, '/product', arguments: 'TV');
                      }
                  ),
                  ProductItem(
                      title: 'Notebook',
                      price: 1500,  onTap: () {
                    Navigator.pushNamed(context, '/product', arguments: 'Notebook');
                  }
                  ),
                  ProductItem(
                      title: 'Chinelo',
                      price: 25,
                      onTap: () {
                        Navigator.pushNamed(context, '/product', arguments: 'Chinelo');
                      }
                  ),
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
            ),
            Center(
              child: Text('Tab 2'),
            ),
            Center(
              child: Text('Tab 3'),
            ),
            ProductScreen(),
          ],
        ),
        drawer: MyDrawer(),
      ),
    );
  }
}
