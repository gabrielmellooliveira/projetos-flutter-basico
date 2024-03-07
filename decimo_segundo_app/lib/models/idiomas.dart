import 'package:flutter/material.dart';

class Idiomas extends ChangeNotifier {
  Idiomas({
    this.idioma = 'pt-br'
  });

  String idioma;

  setIdioma(String value) {
    idioma = value;
    notifyListeners();
  }
}