import 'package:flutter/material.dart';
import 'package:sexto_app/components/email_item.dart';
import 'package:sexto_app/components/header.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.green,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Header(),
          EmailItem(title: 'Netflix', content: 'Sua assinatura da Netflix foi cancelada. Acesse agora mesmo para renovar.'),
          EmailItem(title: 'Amazon', content: 'Aproveite as ofertas da Amazon'),
          EmailItem(title: 'Americanas', content: 'Sua compra foi aprovada'),
          EmailItem(title: 'InfoJobs', content: 'Uma nova empresa está interessada no seu perfil'),
          EmailItem(title: 'Americanas', content: 'Sua compra foi realizada com sucesso'),
          EmailItem(title: 'InfoJobs', content: 'Uma nova empresa está interessada no seu perfil. Acesse agora mesmo para mais informações'),
        ],
      ),
    );
  }
}