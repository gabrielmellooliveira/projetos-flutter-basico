import 'package:flutter/material.dart';

class Campo extends StatelessWidget {
  Campo({
    super.key,
    required this.controller,
    required this.validadorTexto,
  });

  final TextEditingController controller;
  final String validadorTexto;

  String? validador(String? value) {
    if (value == null || value.isEmpty) {
      return validadorTexto;
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: controller,
        validator: validador,
        style: TextStyle(
            fontSize: 22
        ),
        decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Nome',
        ),
        keyboardType: TextInputType.streetAddress,
    );
  }
}