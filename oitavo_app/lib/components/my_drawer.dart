import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
          padding: EdgeInsets.only(top: 30),
          child: Column(
              children: [
                DrawerHeader(
                  decoration: BoxDecoration(
                      color: Colors.blue
                  ),
                  child: Container(
                    padding: EdgeInsets.only(bottom: 20),
                    child: Image.asset('assets/images/logo.png'),
                  ),
                ),
                ListTile(
                  title: Text('Home'),
                  subtitle: Text('Página inicial'),
                ),
              ]
          ),
        )
    );
  }
}