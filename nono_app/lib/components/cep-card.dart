import 'package:flutter/material.dart';

import '../models/cep.dart';

class CepCard extends StatelessWidget {
  CepCard({
    required this.cep
  });

  final Cep? cep;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(8),
        ),
        padding: EdgeInsets.all(16),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(0),
                child: Text('CEP: ${cep?.cep ?? '-'}'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Text('Logradouro: ${cep?.logradouro ?? '-'}'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Text('Complemento: ${cep?.complemento ?? '-'}'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Text('Bairro: ${cep?.bairro ?? '-'}'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Text('Localidade: ${cep?.localidade ?? '-'}'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Text('UF: ${cep?.uf ?? '-'}'),
              ),
            ]
        )
    );
  }
}