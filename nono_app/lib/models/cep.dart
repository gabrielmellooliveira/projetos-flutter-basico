class Cep {
  Cep({
    required this.cep,
    required this.logradouro,
    required this.complemento,
    required this.bairro,
    required this.localidade,
    required this.uf
  });

  String cep;
  String logradouro;
  String complemento;
  String bairro;
  String localidade;
  String uf;

  factory Cep.fromJson(Map<String, dynamic> json) {
    return Cep(
      cep: json['cep'],
      logradouro: json['logradouro'],
      complemento: json['complemento'],
      bairro: json['bairro'],
      localidade: json['localidade'],
      uf: json['uf']
    );
  }
}