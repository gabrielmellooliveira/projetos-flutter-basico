import 'package:flutter/material.dart';

class Configuracoes extends ChangeNotifier {
  Configuracoes({
    this.isDarkMode = false
  });

  bool isDarkMode;

  setIsDarkMode(bool value) {
    isDarkMode = value;
    // Atualizar item no banco de dados local
    notifyListeners();
  }
}