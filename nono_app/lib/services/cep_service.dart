import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/cep.dart';

class CepService {
  Future<Cep> buscarCep(String cep) async {
    String url = 'https://viacep.com.br/ws/$cep/json/';

    http.Response response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(response.body);
      return Cep.fromJson(json);
    } else {
      throw Exception('Failed to load CEP');
    }
  }
}