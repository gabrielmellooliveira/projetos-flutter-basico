import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MyWidget(),
  ));
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      padding: const EdgeInsets.only(top: 50),
      child: Column(
        children: [
          Text(
            'Hello World!',
            style: TextStyle(
              color: Colors.white,
              decoration: TextDecoration.none,
            )
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.account_box, size: 28, color: Colors.white),
              Text(
                'Gabriel',
                style: TextStyle(
                  color: Colors.white,
                  decoration: TextDecoration.none,
                  fontSize: 20,
                ),
              )
            ]
          ),
          Column(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                        "https://acdn.mitiendanube.com/stores/001/776/325/products/homem-aranha-digital-painel-still1-7c6d8a7721a8ba0e7516754450480051-1024-1024.jpg",
                        width: 40,
                        height: 40,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                              ' Goku',
                              style: TextStyle(
                                color: Colors.white,
                                decoration: TextDecoration.none,
                                fontSize: 18,
                              )
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.add_box_rounded, size: 32, color: Colors.white)
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ),
              Image.asset(
                "assets/images/goku.jpg",
                fit: BoxFit.contain,
              ),
              Container(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.add_box_rounded, size: 32, color: Colors.white)
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.add_box_rounded, size: 32, color: Colors.white)
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.add_box_rounded, size: 32, color: Colors.white)
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.add_box_rounded, size: 32, color: Colors.white)
                          ),
                        ],
                      )
                    ),
                  ]
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Container(
                              height: 50,
                              color: Colors.red
                            )
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              height: 50,
                              color: Colors.green
                            )
                          ),
                        ]
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
