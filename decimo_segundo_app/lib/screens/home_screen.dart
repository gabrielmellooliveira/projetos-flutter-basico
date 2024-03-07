import 'package:decimo_segundo_app/models/configuracoes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'configuracoes_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Configuracoes>(
      builder: (BuildContext context, Configuracoes configuracoes, Widget? child) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
                'Home',
                style: TextStyle(
                    color: configuracoes.isDarkMode ? Colors.white : Colors.black
                )
            ),
            backgroundColor: configuracoes.isDarkMode ? Colors.black : Colors.white,
          ),
          backgroundColor: configuracoes.isDarkMode ? Colors.black : Colors.white,
          body: Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                    'Home Screen',
                    style: TextStyle(
                        color: configuracoes.isDarkMode ? Colors.white : Colors.black
                    )
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                          return ConfiguracoesScreen();
                        })
                      );
                    },
                    child: Text('Ir para as configurações')
                )
              ],
            ),
          ),
        );
      },
    );
  }
}