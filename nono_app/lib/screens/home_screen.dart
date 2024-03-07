import 'package:flutter/material.dart';
import 'package:nono_app/components/cep-card.dart';
import 'package:nono_app/services/cep_service.dart';

import '../models/cep.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController _cepController = TextEditingController();

  Cep? cep;
  bool loading = false;

  void buscarCep() async {
    setState(() {
      loading = true;
    });

    CepService service = CepService();
    Cep cepResponse = await service.buscarCep(_cepController.text);

    setState(() {
      loading = false;
      cep = cepResponse;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Busque seu endereço')),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: _cepController,
              decoration: InputDecoration(
                  labelText: 'CEP',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8)
                  )
              ),
            ),
            ElevatedButton(
                onPressed: buscarCep,
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: loading
                    ? SizedBox(
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator()
                )
                    : Text('Buscar CEP')
            ),
            CepCard(cep: cep)
          ],
        ),
      ),
    );
  }
}