import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/configuracoes.dart';
import '../models/idiomas.dart';

class ConfiguracoesScreen extends StatefulWidget {
  @override
  _ConfiguracoesScreenState createState() => _ConfiguracoesScreenState();
}

class _ConfiguracoesScreenState extends State<ConfiguracoesScreen> {
  Configuracoes configuracoes = Configuracoes();

  @override
  void initState() {
    Configuracoes config = Provider.of<Configuracoes>(context, listen: false);
    configuracoes = Configuracoes(isDarkMode: config.isDarkMode);

    super.initState();
  }

  void alterarTema() {
    Configuracoes configs = Provider.of<Configuracoes>(context, listen: false);

    setState(() {
      configuracoes.setIsDarkMode(!configs.isDarkMode);
      configs.setIsDarkMode(!configs.isDarkMode);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
            color: configuracoes.isDarkMode ? Colors.white : Colors.black
        ),
        title: Text(
            'Configurações',
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
            ElevatedButton(
                onPressed: alterarTema,
                child: Text('Alterar tema')
            ),
            Consumer<Idiomas>(
              builder: (BuildContext context, Idiomas idiomas, Widget? child) {
                return Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Text(
                      'Idioma: ${idiomas.idioma}',
                      style: TextStyle(
                          fontSize: 20,
                          color: configuracoes.isDarkMode ? Colors.white : Colors.black
                      )
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}