import 'package:flutter/material.dart';

// Icon, ButtonIcon, Image, Expanded, Stack, Center, Scaffold, AppBar

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Homem Aranha', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: Container(
        color: Colors.white,
        child: Center(
            child: Stack(
                children: [
                  Opacity(
                    opacity: 0.8,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                          "https://acdn.mitiendanube.com/stores/001/776/325/products/homem-aranha-digital-painel-still1-7c6d8a7721a8ba0e7516754450480051-1024-1024.jpg",
                          width: 300,
                          height: 300,
                          fit: BoxFit.cover,
                        ),
                    ),
                  ),
                  Container(
                    width: 300,
                    height: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black.withOpacity(0.3),
                    ),
                  )
                ]
            )
        ),
      )
    );
  }
}