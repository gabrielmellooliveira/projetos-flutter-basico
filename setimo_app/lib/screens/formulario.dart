import 'package:flutter/material.dart';

import '../components/campo.dart';

class Formulario extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FormularioState();
  }
}

// MyTextField, MyButton

class FormularioState extends State<Formulario> {
  final _formKey = GlobalKey<FormState>();

  final _nameController = TextEditingController();
  final _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formulário'),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Campo(
                controller: _nameController,
                validadorTexto: "O nome não pode ser vazio",
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Campo(
                controller: _emailController,
                validadorTexto: "O e-mail não pode ser vazio",
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    print('Nome: ${_nameController.text}');
                    print('Email: ${_emailController.text}');
                  }
                },
                child: Text('Enviar'),
              ),
            ),
          ]
        ),
      )
    );
  }
}