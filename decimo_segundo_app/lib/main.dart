import 'package:decimo_segundo_app/models/configuracoes.dart';
import 'package:decimo_segundo_app/models/idiomas.dart';
import 'package:decimo_segundo_app/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (BuildContext context) {
            return Configuracoes();
          },
        ),
        ChangeNotifierProvider(
          create: (BuildContext context) {
            return Idiomas();
          },
        )
      ],
      child: MaterialApp(
        home: HomeScreen(),
      ),
    )
  );
}
