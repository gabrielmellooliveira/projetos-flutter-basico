import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MeuWidget(),
  ));
}



class MeuWidget extends StatelessWidget {
  const MeuWidget({ super.key });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 50),
      color: Colors.blue, // backgroundColor
      child: Column(
        children: [
          const Text(
              'Home Page',
              style: TextStyle(
                  color: Colors.white,
                  decoration: TextDecoration.none,
              )
          ),
          ElevatedButton(
            onPressed: () {
              print('Clicou');
            },
            onLongPress: () {
              print('Clicou e segurou');
            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(20),
              backgroundColor: Colors.red,
              textStyle: const TextStyle(
                fontSize: 20,
              ),
            ),
            child: const Text('Cadastrar'),
          )
        ],
      )
    );
  }
}
